FROM        node:16-bullseye-slim

LABEL       author="wmade" maintainer="pterodactyl@madelew.com"

RUN         /usr/bin/apt-get update \
            && DEBIAN_FRONTEND=noninteractive /usr/bin/apt-get full-upgrade -y -q --allow \
            && /usr/bin/apt-get update \
            && /usr/bin/apt-get install ffmpeg iproute2 git sqlite3 libsqlite3-dev python3 python3-dev ca-certificates dnsutils tzdata zip tar curl build-essential -y -q --force-yes \
            && /usr/local/bin/npm -g install npm@latest \
            && /usr/local/bin/npm update \
            && /usr/local/bin/npm -g install npm \
            && useradd -m -d /home/container container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./../entrypoint.sh /entrypoint.sh
CMD         [ "/bin/bash", "/entrypoint.sh" ]
