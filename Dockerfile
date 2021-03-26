FROM pihole/pihole:latest

RUN apt-get update && apt-get install -Vy php-cli php-sqlite3 php-intl php-curl

RUN wget -O - https://raw.githubusercontent.com/jacklul/pihole-updatelists/master/install.sh | bash
