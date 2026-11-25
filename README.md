# Diaszano's Homebrew Tap

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg?style=flat-square)](LICENSE)
[![Conventional Commits](https://img.shields.io/badge/Conventional%20Commits-1.0.0-yellow.svg?style=flat-square)](https://conventionalcommits.org)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](CONTRIBUTING.md)

Homebrew tap for [bearm](https://github.com/Diaszano/bearm), [gdocker](https://github.com/Diaszano/gdocker) and [pgscope](https://github.com/Diaszano/pgscope). `bearm` and `pgscope` ship prebuilt binaries for macOS and Linux (Intel and ARM); `gdocker` is a macOS app.

## Installation

Install a package directly:

```sh
brew install diaszano/tap/bearm
brew install diaszano/tap/gdocker
brew install diaszano/tap/pgscope
```

Or add the tap first:

```sh
brew tap diaszano/tap
brew install bearm gdocker pgscope
```

## Available Packages

| Package | Type | Description | Upstream |
| :--- | :--- | :--- | :--- |
| `bearm` | Cask | Safe native replacement for Unix `rm` with restore support | [Diaszano/bearm](https://github.com/Diaszano/bearm) |
| `gdocker` | Cask | Native macOS Docker GUI with a built-in MCP server for AI clients | [Diaszano/gdocker](https://github.com/Diaszano/gdocker) |
| `pgscope` | Cask | PostgreSQL tuning and analysis tool (MCP server) | [Diaszano/pgscope](https://github.com/Diaszano/pgscope) |

## Updating

```sh
brew update
brew upgrade bearm gdocker pgscope
```

## Contributing

Please see [CONTRIBUTING.md](CONTRIBUTING.md) for contribution guidelines and Conventional Commits standards.
