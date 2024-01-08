# wgd | WireGuard Docker

This configuration enables the routing of all traffic from one or multiple containers through WireGuard.

1. Begin by creating a folder named `configs/` and move all your WireGuard configs into it.
2. Change the example `curl-service` in the `docker-compose.yml` to your image and configuration.
3. Execute the command `sudo docker-compose up -d` to start the setup.