# Pi-Hole in Container - Startup script (that worked for me)
Startup script for running [Pi-Hole](https://pi-hole.net/) in a container. This script should be run directly on the machine hosting the container. Mine is on a Raspberry Pi running Ubuntu Server 20.04.

## Instructions:
- Install [Docker](https://docs.docker.com/get-docker/) on your host machine.
- Uncomment `PIHOLE_BASE="${PIHOLE_BASE:-$(pwd)}"` in order to use your current directory to store persistent data for Pi-Hole. To set manually, leave the above line commented and pass it as a new env variable before script execution (e.g. `PIHOLE_BASE=/opt/pihole-storage ./docker_run.sh`).
- Change `CHOOSE_A_PASSWORD` to a password of your choosing.

## Notes:
- I use `jacklul/pihole:latest` for my run image because I like their blocklists more, but its base image `pihole/pihole:latest` should work too.