# Pi-Hole in Container - Startup script (that worked for me)
Startup script for running [Pi-Hole](https://pi-hole.net/) in a container. This script should be run directly on the machine hosting the container. Mine is on a Raspberry Pi running Ubuntu Server 20.04.

## Instructions
- Install [Docker](https://docs.docker.com/get-docker/) on your host machine.
- Uncomment `PIHOLE_BASE="${PIHOLE_BASE:-$(pwd)}"` in order to use your current directory to store persistent data for Pi-Hole. To set manually, leave the above line commented and pass it as a new env variable before script execution (e.g. `PIHOLE_BASE=/opt/pihole-storage ./docker_run.sh`).
- Change `CHOOSE_A_PASSWORD` to a password of your choosing.
- Update `pihole-updatelists.conf` to use the recommended lists [here](https://github.com/jacklul/pihole-updatelists#recommended-lists).
  - **Note**: this file is mapped on your host machine to the container at `PIHOLE_BASE`.

## Notes
- Change `America/Los_Angeles` to your local time zone if you are not located in Pacific time (North America).

## Helpful Commands
- Start Pi-Hole:
  - `PIHOLE_BASE=/opt/pihole-storage ./docker_run.sh`
- Access container shell:
  - `docker exec -it pihole bash`

## Legal
- This is a modification of a run script from the official Pi-Hole GitHub page, I deserve no credit for its creation: [Link](https://github.com/pi-hole/docker-pi-hole/blob/master/docker_run.sh)
- Modifications published under MIT License.