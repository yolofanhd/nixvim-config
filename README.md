# Nixvim

My nixvim configuration

## Usage

This configuration is currently hardcoded to the home-manager configurations and can be used from there.
Just simply run any `neovim` command.

```bash
nvim .
```

## Configuring

To start configuring, just add or modify the nix files in `./config`.
If you add a new configuration file, remember to add it to the
[`config/default.nix`](./config/default.nix) file

## Testing your new configuration

To test your configuration simply run the following command

```
nix run .
```

## Updating

```bash
sudo nix flake update
```

For more information look at: [NixOS docs](https://nixos.wiki/wiki/flakes)

## Keybinds

| Mode | Keybind | Action |
| ---- | ------- | ------ |
| n    | h       | left   |
| n    | j       | down   |
| n    | k       | up     |
| n    | l       | right  |

### Telescope

| Mode | Keybind | Action                    |
| ---- | ------- | ------------------------- |
| n    | ff      | find files                |
| n    | fw      | live grep (find in files) |
| n    | fb      | find buffers              |
| n    | ft      | treesitter                |
| n    | fg      | git commits               |
| n    | fh      | file history              |
| n    | fh      | file history              |

### LSP

| Mode | Keybind | Action                |
| ---- | ------- | --------------------- |
| n    | K       | hover action          |
| n    | gd      | go to definition      |
| n    | gD      | go to declaration     |
| n    | gi      | go to implementation  |
| n    | go      | go to tyoe definition |
| n    | gr      | go to references      |
| n    | gd      | go to definition      |
| n    | \<F2\>  | rename                |

### Diagnostics

| Mode | Keybind | Action                        |
| ---- | ------- | ----------------------------- |
| n    | gl      | Show diagnostics in telescope |
| n    | [d      | go to previous diagnostics    |
| n    | ]d      | go to next diagnostics        |

### Notifications

| Mode | Keybind | Action                    |
| ---- | ------- | ------------------------- |
| n    | dn      | Dismiss all notifications |

## Usefull vim commands

Substitutes all word1's with word2's\
`v` -> Select -> `:s/<word1>/<word2>`\
