<div align="center">
  <h2 align="center">
    <picture>
      <img src="assets/nixvim_logo.svg" width="25%" />
    </picture>
  </h2>

  <h1>Nixvim Config</h1>

  <p>
    <strong>One flake. One command. A fully loaded Neovim.</strong>
  </p>

  <p>
    A reproducible, cross-platform <a href="https://github.com/nix-community/nixvim">Nixvim</a>
    configuration for Linux and macOS.
  </p>

  <p>
    <a href="https://github.com/yolofanhd/nixvim-config/actions/workflows/nix-build.yml"><img alt="Build status" src="https://img.shields.io/github/actions/workflow/status/yolofanhd/nixvim-config/nix-build.yml?branch=main&style=for-the-badge&logo=nixos&logoColor=white&label=build"></a>
    <a href="https://github.com/NixOS/nixpkgs"><img alt="Nix Unstable" src="https://img.shields.io/badge/Nix-unstable-5277C3?style=for-the-badge&logo=nixos&logoColor=white"></a>
    <a href="https://github.com/neovim/neovim"><img alt="Neovim" src="https://img.shields.io/badge/Neovim-configured-57A143?style=for-the-badge&logo=neovim&logoColor=white"></a>
  </p>

  <p>
    <img alt="Linux" src="https://img.shields.io/badge/Linux-supported-FCC624?style=flat-square&logo=linux&logoColor=black">
    <img alt="macOS" src="https://img.shields.io/badge/macOS-supported-000000?style=flat-square&logo=apple&logoColor=white">
    <a href="https://github.com/yolofanhd/nixvim-config/commits/main"><img alt="Last commit" src="https://img.shields.io/github/last-commit/yolofanhd/nixvim-config?style=flat-square"></a>
    <a href="https://github.com/yolofanhd/nixvim-config/stargazers"><img alt="GitHub stars" src="https://img.shields.io/github/stars/yolofanhd/nixvim-config?style=flat-square&logo=github"></a>
  </p>
</div>

## Quick start

If you already have [Nix with flakes enabled](https://nixos.wiki/wiki/Flakes), try the
configuration without cloning anything:

```bash
nix run github:yolofanhd/nixvim-config
```

Or run a local checkout:

```bash
git clone https://github.com/yolofanhd/nixvim-config.git
cd nixvim-config
nix run .
```

> [!TIP]
> The map leader is the backtick key: <kbd>`</kbd>

## What is inside?

- **Editor essentials** — relative line numbers, persistent undo, smart search,
  system clipboard integration, sensible splits, and Gruvbox.
- **IDE features** — LSP, completion, snippets, formatting, linting, diagnostics,
  testing, and debugging.
- **Fast navigation** — Snacks pickers, NvimTree, Flash, sessions, and undo history.
- **Git workflow** — Gitsigns, Fugitive, Diffview, and conflict helpers.
- **Language tooling** — dedicated support for Nix, Rust, and LaTeX alongside the
  general LSP stack.
- **Reproducible everywhere** — the same flake runs on x86_64 and ARM64 Linux and
  macOS.

## Configuration map

```text
.
├── flake.nix              # Packages, dev shell, formatter, and checks
└── config
    ├── default.nix        # Module entry point and colorscheme
    ├── options.nix        # Core Neovim options
    ├── mappings.nix       # Key bindings
    ├── auto_cmd.nix       # Autocommands
    ├── plugins.nix        # Plugin registry
    └── plugins/           # Focused plugin configuration modules
```

Plugin configuration stays split into small Nix modules, while `plugins.nix` is the
single inventory. This keeps additions discoverable without turning the entry point
into one large file.

## Development

Enter the repository shell to get the formatter and static-analysis tools:

```bash
nix develop
```

Format and validate changes:

```bash
nix fmt
nix flake check
```

The checks build the generated Nixvim configuration, verify Nix formatting, run
`statix` and `deadnix`, and validate the GitHub Actions workflows.

Update pinned flake inputs with:

```bash
nix flake update
```

<details>
<summary><strong>Key bindings</strong></summary>

### Files and search

| Mode   |           Key            | Action               |
| :----- | :----------------------: | -------------------- |
| Normal |       <kbd>n</kbd>       | Toggle NvimTree      |
| Normal | <kbd>f</kbd><kbd>f</kbd> | Smart file search    |
| Normal | <kbd>f</kbd><kbd>w</kbd> | Search file contents |
| Normal | <kbd>f</kbd><kbd>b</kbd> | List buffers         |
| Normal | <kbd>f</kbd><kbd>g</kbd> | List Git commits     |
| Normal | <kbd>f</kbd><kbd>B</kbd> | List Git branches    |
| Normal | <kbd>f</kbd><kbd>D</kbd> | View Git diff        |
| Normal | <kbd>f</kbd><kbd>o</kbd> | Open recent files    |
| Normal | <kbd>f</kbd><kbd>u</kbd> | Browse undo history  |
| Normal | <kbd>f</kbd><kbd>d</kbd> | Browse diagnostics   |
| Normal | <kbd>f</kbd><kbd>e</kbd> | Browse TODO comments |
| Normal | <kbd>f</kbd><kbd>s</kbd> | Search sessions      |

### LSP and diagnostics

| Mode            |                         Key                         | Action                     |
| :-------------- | :-------------------------------------------------: | -------------------------- |
| Normal          |                    <kbd>K</kbd>                     | Show hover information     |
| Normal          |              <kbd>g</kbd><kbd>d</kbd>               | Go to definition           |
| Normal          |              <kbd>g</kbd><kbd>D</kbd>               | Go to declaration          |
| Normal          |              <kbd>g</kbd><kbd>i</kbd>               | Go to implementation       |
| Normal          |              <kbd>g</kbd><kbd>o</kbd>               | Go to type definition      |
| Normal          |              <kbd>g</kbd><kbd>r</kbd>               | List references            |
| Normal          |              <kbd>g</kbd><kbd>s</kbd>               | Show signature help        |
| Normal          |              <kbd>g</kbd><kbd>l</kbd>               | Show line diagnostics      |
| Normal          | <kbd>[</kbd><kbd>d</kbd> / <kbd>]</kbd><kbd>d</kbd> | Previous / next diagnostic |
| Normal          |                    <kbd>F2</kbd>                    | Rename symbol              |
| Normal / Visual |                    <kbd>F4</kbd>                    | Code action                |

### Other

| Mode     |                 Key                  | Action                   |
| :------- | :----------------------------------: | ------------------------ |
| Normal   |       <kbd>c</kbd><kbd>l</kbd>       | Toggle comment           |
| Normal   |             <kbd>t</kbd>             | Toggle floating terminal |
| Terminal |            <kbd>Esc</kbd>            | Close floating terminal  |
| Normal   |       <kbd>d</kbd><kbd>n</kbd>       | Dismiss notifications    |
| Normal   | <kbd>`</kbd><kbd>d</kbd><kbd>u</kbd> | Toggle debugger UI       |

</details>

---

<div align="center">
  <sub>Built with <a href="https://nixos.org/">Nix</a> and
  <a href="https://github.com/nix-community/nixvim">Nixvim</a>.</sub>
</div>
