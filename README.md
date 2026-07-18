# Nixvim

A standalone, flake-based Nixvim configuration for Linux and macOS.

## Usage

Run the configured Neovim directly:

```bash
nix run .
```

Enter the development shell to get the repository's formatter and static-analysis
tools:

```bash
nix develop
```

## Development

Configuration lives under `config/`. Core editor behavior is split between
`options.nix`, `mappings.nix`, and `auto_cmd.nix`; plugin modules live under
`config/plugins/` and are imported by `config/plugins.nix`.

Format and validate changes before opening a pull request:

```bash
nix fmt
nix flake check
```

The flake checks the generated Nixvim configuration, Nix formatting, static Nix
analysis, and GitHub Actions workflows.

Update pinned flake inputs with:

```bash
nix flake update
```

## Key bindings

The map leader is the backtick key.

### Files and search

| Mode | Key | Action |
| --- | --- | --- |
| Normal | `n` | Toggle NvimTree |
| Normal | `ff` | Smart file search |
| Normal | `fw` | Search file contents |
| Normal | `fb` | List buffers |
| Normal | `fg` | List Git commits |
| Normal | `fB` | List Git branches |
| Normal | `fD` | View Git diff |
| Normal | `fo` | Open recent files |
| Normal | `fu` | Browse undo history |
| Normal | `fd` | Browse diagnostics |
| Normal | `fe` | Browse TODO comments |
| Normal | `fs` | Search sessions |

### LSP and diagnostics

| Mode | Key | Action |
| --- | --- | --- |
| Normal | `K` | Show hover information |
| Normal | `gd` | Go to definition |
| Normal | `gD` | Go to declaration |
| Normal | `gi` | Go to implementation |
| Normal | `go` | Go to type definition |
| Normal | `gr` | List references |
| Normal | `gs` | Show signature help |
| Normal | `gl` | Show line diagnostics |
| Normal | `[d` / `]d` | Previous / next diagnostic |
| Normal | `F2` | Rename symbol |
| Normal / Visual | `F4` | Code action |

### Other

| Mode | Key | Action |
| --- | --- | --- |
| Normal | `cl` | Toggle comment |
| Normal | `t` | Toggle floating terminal |
| Terminal | `Esc` | Close floating terminal |
| Normal | `dn` | Dismiss notifications |
| Normal | `` `du `` | Toggle debugger UI |
