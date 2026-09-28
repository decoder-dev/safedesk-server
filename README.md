# SafeDesk Server Program

[![build](https://github.com/safedesk/safedesk-server/actions/workflows/build.yaml/badge.svg)](https://github.com/safedesk/safedesk-server/actions/workflows/build.yaml)

[**Download**](https://github.com/safedesk/safedesk-server/releases)

[**Manual**](https://safedesk.com/docs/en/self-host/)

[**Configuration & environment variables**](docs/environment-variables.md)

[**FAQ**](https://github.com/safedesk/safedesk/wiki/FAQ)

[**How to migrate OSS to Pro**](https://safedesk.com/docs/en/self-host/safedesk-server-pro/installscript/#convert-from-open-source)

Self-host your own SafeDesk server, it is free and open source.

> [!IMPORTANT]
> **Need more features?** [SafeDesk Server Pro](https://safedesk.com/pricing.html) might suit you better.
>
> **Want to develop your own server?** Start with [safedesk-server-demo](https://github.com/safedesk/safedesk-server-demo), a simpler starting point than this repository.

## How to build manually

```bash
cargo build --release
```

Three executables will be generated in target/release.

- hbbs - SafeDesk ID/Rendezvous server
- hbbr - SafeDesk relay server
- safedesk-utils - SafeDesk CLI utilities

You can find updated binaries on the [Releases](https://github.com/safedesk/safedesk-server/releases) page.

## Configuration

`hbbs` and `hbbr` can be configured with command-line flags, environment
variables, or an `.env` / config file. Run `hbbs --help` or `hbbr --help` to see
the available flags.

The most common options:

| Option | Flag | Env var | Applies to | Purpose |
| --- | --- | --- | --- | --- |
| Key | `-k` | `KEY` | hbbs, hbbr | `hbbs` loads/generates one by default |
| Bind address | `-b` | `BIND` | hbbs, hbbr | Local IP address to listen on (default: all interfaces; requires 1.1.17+) |
| Port | `-p` | `PORT` | hbbs, hbbr | Listening port (hbbs `21116`, hbbr `21117`) |
| Relay servers | `-r` | `RELAY-SERVERS` | hbbs | Override when the relay uses a different address or a non-standard port |
| Force relay | — | `ALWAYS_USE_RELAY` | hbbs | `Y` disables direct connections |
| Log level | — | `RUST_LOG` | hbbs, hbbr | e.g. `debug` (default `info`) |

See **[docs/environment-variables.md](docs/environment-variables.md)** for the
full list of variables, the file/flag/env precedence rules, database and relay
bandwidth tuning, Docker image variables, and examples.

## Installation

Please follow this [doc](https://safedesk.com/docs/en/self-host/safedesk-server-oss/)
