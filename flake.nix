{
  description = "yolofanhd's nixvim configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.flake-parts.follows = "flake-parts";
    };
  };

  outputs =
    {
      nixvim,
      flake-parts,
      ...
    }@inputs:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];

      perSystem =
        {
          lib,
          pkgs,
          system,
          ...
        }:
        let
          nixvimLib = nixvim.lib.${system};
          nixvim' = nixvim.legacyPackages.${system};
          nixvimModule = {
            inherit pkgs;
            module = import ./config;
          };
          nvim = nixvim'.makeNixvimWithModule nixvimModule;
          formatter = pkgs.writeShellApplication {
            name = "nixvim-format";
            runtimeInputs = [
              pkgs.fd
              pkgs.nixfmt-rfc-style
            ];
            text = ''
              if (( $# == 0 )); then
                mapfile -t files < <(fd --type f --extension nix .)
                exec nixfmt "''${files[@]}"
              fi

              exec nixfmt "$@"
            '';
          };
        in
        {
          checks = {
            default = nixvimLib.check.mkTestDerivationFromNixvimModule nixvimModule;

            formatting =
              pkgs.runCommand "nixvim-formatting-check"
                {
                  nativeBuildInputs = [
                    pkgs.fd
                    pkgs.nixfmt-rfc-style
                  ];
                  src = ./.;
                }
                ''
                  cd "$src"
                  mapfile -t files < <(fd --type f --extension nix .)
                  nixfmt --check "''${files[@]}"
                  touch "$out"
                '';

            static-analysis = pkgs.runCommand "nixvim-static-analysis" { } ''
              ${lib.getExe pkgs.statix} check ${./config}
              ${lib.getExe pkgs.statix} check ${./flake.nix}
              ${lib.getExe pkgs.deadnix} --fail ${./config} ${./flake.nix}
              touch "$out"
            '';

            workflows = pkgs.runCommand "nixvim-workflow-check" { } ''
              ${lib.getExe pkgs.actionlint} ${./.github/workflows}/*.yml
              touch "$out"
            '';
          };

          devShells.default = pkgs.mkShellNoCC {
            packages = with pkgs; [
              actionlint
              deadnix
              fd
              nixfmt-rfc-style
              statix
            ];
          };

          inherit formatter;

          packages.default = nvim;
        };
    };
}
