
# onion-nest
Host onion services through a VPN connection using Docker.

## Overview
Docker is used to run:
- Tor: To manage onion services.
- Caddy: To serve content.
- Gluetun: To route Tor traffic through a VPN connection.

## Set up
### Prerequisites
- Docker
- Git
- Familiarity with basic command-line operations.

### Instructions
1. **Clone the repository.**
```bash
git clone https://github.com/zer-far/onion-nest
cd onion-nest
```
2. **Modify environment variables.**
- Set up a VPN connection by following the instructions for your provider in the [Gluetun Wiki](https://github.com/qdm12/gluetun-wiki/tree/main/setup/providers).
3. **Build and run the containers.**
```bash
docker compose -f compose.yml up -d --build
```
4. **Get your onion service address.**
Wait for Tor to connect, then run:
```bash
cat onion/hidden_service/hostname
```
5. **Access your onion service.**

## Notes
- You can use [mkp224o](https://github.com/cathugger/mkp224o) to generate a vanity address.
