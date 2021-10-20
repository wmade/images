FROM        debian:bullseye-slim

LABEL       author="wmade" maintainer="pterodactyl@madelew.com"

RUN         /usr/bin/apt-get update \
            && DEBIAN_FRONTEND=noninteractive /usr/bin/apt-get full-upgrade -y -q --force-yes \
            && /usr/bin/apt-get update \
            && /usr/bin/apt-get install ffmpeg iproute2 git sqlite3 libsqlite3-dev python3 python3-dev ca-certificates dnsutils tzdata zip tar curl build-essential -y -q --force-yes \
            && curl -fsSL https://deb.nodesource.com/setup_12.x | bash - \
            && /usr/bin/apt-get install nodejs -y -q --force-yes \
            && /usr/bin/npm install -g npm \
			      && /bin/ln /usr/bin/corepack /usr/local/bin/corepack \
			      && /bin/ln /usr/bin/node /usr/local/bin/node \
			      && /bin/ln /usr/bin/npm /usr/local/bin/npm \
			      && /bin/ln /usr/bin/npx /usr/local/bin/npx \
            && useradd -m -d /home/container container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./../entrypoint.sh /entrypoint.sh
CMD         [ "/bin/bash", "/entrypoint.sh" ]
