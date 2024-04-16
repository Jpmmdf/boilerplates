# BIND9 Docker Configuration Project

This project deploys BIND9, a widely used DNS server, inside a Docker container using an Ubuntu-based image. It's designed to demonstrate BIND9 configurations for development and production environments within a local network.

## Prerequisites

Ensure you have Docker and Docker Compose installed on your system to run this project. Additionally, you must modify the system DNS settings to avoid conflicts on port 53:

1. Edit the file `/etc/systemd/resolved.conf`.
2. Change the line `#DNSStubListener=YES` to `DNSStubListener=no`.
3. Restart the systemd-resolved service with `sudo systemctl restart systemd-resolved`.

## Configuration Details

- **Container Name:** `bind9`
- **Image:** `ubuntu/bind9:9.18-23.10_edge`
- **Ports:**
  - `53/tcp`
  - `53/udp`
- **Volumes:**
  - Configuration files mapped from `./config` to `/etc/bind`.
  - DNS cache and records stored in `bind9_cache`.
- **Environment Variables:**
  - `BIND9_user=root`
  - `TZ=America/Sao_Paulo`
- **Restart Policy:** Unless stopped.

### DNS Zones and Records

DNS zones and records for both production (`home.jpit.com.br`) and development (`kube.home.jpit.com.br`, `prod.com.br`) environments are defined. These include configurations for various services like `srv-prod-1`, `srv-demo-1`, and wildcard domains.

## Volume Details

Persistent data volumes:
- `bind9_cache`
- `bind9_records`

These volumes store BIND's cache and dynamic records, ensuring data persistence across container restarts.

## Usage

To deploy the BIND9 server, use the following Docker Compose command:

```bash
docker-compose up -d
