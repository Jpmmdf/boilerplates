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

DNS zones and records are established for the internal domain `home.jpit.com.br`, which supports both production and development environments. The production VMs follow a naming convention such as `srv-prod-*`, indicating servers in the production environment. Development VMs use the prefix `srv-demo-*`, indicating servers used for development purposes. Both sets of VMs are resolved internally within the network to maintain security and manageability. This structure allows for clear separation and organization of internal services, ensuring that domain resolutions are appropriately handled within the designated environments.


### External DNS and Reverse Proxy Setup

For external traffic, the domain `example.com.br` handles incoming requests. A reverse proxy setup redirects traffic to internal services as configured. This allows external users to access internal services without exposing the actual internal network structure.

## Domain Customization

To use this project with your own domain, replace all instances of `jpit.com.br` in the DNS configuration files (`home-jpit.com.br.zone`, `named.conf`) with your domain name. Ensure that your domain settings are correctly configured to resolve the DNS queries as per your network setup. Similarly, update the `example.com.br` settings according to your external domain requirements.
## Volume Details

Persistent data volumes:
- `bind9_cache`
- `bind9_records`

These volumes store BIND's cache and dynamic records, ensuring data persistence across container restarts.

## Usage

To deploy the BIND9 server, use the following Docker Compose command:

```bash
docker-compose up -d
