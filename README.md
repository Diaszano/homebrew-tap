# Diaszano's Homebrew Tap

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg?style=flat-square)](LICENSE)
[![Conventional Commits](https://img.shields.io/badge/Conventional%20Commits-1.0.0-yellow.svg?style=flat-square)](https://conventionalcommits.org)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](CONTRIBUTING.md)

Homebrew tap for [bearm](https://github.com/Diaszano/bearm), [gdocker](https://github.com/Diaszano/gdocker), [pgscope](https://github.com/Diaszano/pgscope) and [mcp-server-macos-use](https://github.com/Diaszano/mcp-server-macos-use). `bearm` and `pgscope` ship prebuilt binaries for macOS and Linux (Intel and ARM); `gdocker` and `mcp-server-macos-use` are macOS-only.

## Installation

Install a package directly:

```sh
brew install diaszano/tap/bearm
brew install diaszano/tap/gdocker
brew install diaszano/tap/pgscope
brew install diaszano/tap/mcp-server-macos-use
```

Or add the tap first:

```sh
brew tap diaszano/tap
brew install bearm gdocker pgscope mcp-server-macos-use
```

## Available Packages

| Package | Type | Platforms | Description | Upstream |
| :--- | :--- | :--- | :--- | :--- |
| `bearm` | Cask | macOS, Linux | Safe native replacement for Unix `rm` with restore support | [Diaszano/bearm](https://github.com/Diaszano/bearm) |
| `gdocker` | Cask | macOS 14 Sonoma+ | Native macOS Docker GUI with a built-in MCP server for AI clients | [Diaszano/gdocker](https://github.com/Diaszano/gdocker) |
| `pgscope` | Cask | macOS, Linux | PostgreSQL tuning and analysis tool (MCP server) | [Diaszano/pgscope](https://github.com/Diaszano/pgscope) |
| `mcp-server-macos-use` | Formula | macOS 13 Ventura+ | MCP server that lets AI agents control macOS apps through accessibility APIs | [Diaszano/mcp-server-macos-use](https://github.com/Diaszano/mcp-server-macos-use) |

> [!NOTE]
> `GDocker.app` is ad-hoc signed, not notarized. The cask removes the quarantine flag after install so Gatekeeper lets it open.

> [!IMPORTANT]
> `mcp-server-macos-use` needs **Accessibility** and **Screen Recording** permissions. Grant them in System Settings > Privacy & Security to the app that launches the server (your terminal or MCP client).

## Updating

```sh
brew update
brew upgrade bearm gdocker pgscope mcp-server-macos-use
```

## Contributing

Please see [CONTRIBUTING.md](CONTRIBUTING.md) for contribution guidelines and Conventional Commits standards.
