# syntax=docker/dockerfile:1
FROM docker
RUN mkdir -p ~/.docker/cli-plugins && \    
    wget -nv -O ~/.docker/cli-plugins/docker-compose https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) && \    
    chmod a+x ~/.docker/cli-plugins/docker-compose
ENTRYPOINT ["docker-entrypoint.sh", "compose"]

LABEL org.opencontainers.image.description="Docker Compose v2 in Docker"
