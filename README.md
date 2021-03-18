# Pi-Hole in Container - Startup script (that worked for me)
Startup script for running [Pi-Hole](https://pi-hole.net/) in a container.

## Instructions:
- Uncomment `PIHOLE_BASE="${PIHOLE_BASE:-$(pwd)}"` in order to use your current directory to store persistent data for Pi-Hole. To set manually, leave the above line commented and pass it as a new env variable before script execution (e.g. `PIHOLE_BASE=/opt/pihole-storage ./docker_run.sh`).
- Change `CHOOSE_A_PASSWORD` to a password of your choosing.

## Notes:
- I use `jacklul/pihole:latest` for my run image because I like their blocklists more, but the its base image `pihole/pihole:latest` should work too.