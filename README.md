# Docker Compose v2 in Docker

A containerized `docker compose` based on [Docker in Docker][1] and the [Docker Compose v2][2] plugin.

## Using

Run the container using an executable file, e.g. [`./docker-compose`](docker-compose):

    docker run --rm -v $(pwd):$(pwd):ro -w $(pwd) \
        -v /var/run/docker.sock:/var/run/docker.sock \
        docker-compose $@

or define a shell alias:

    alias docker-compose='docker run --rm \
        -v $(pwd):$(pwd):ro -w $(pwd) \
        -v /var/run/docker.sock:/var/run/docker.sock \
        docker-compose '

## Building

Run [`./build`](build) to execute:

    docker build --pull --tag docker-compose - <Dockerfile

## Testing

Run [`./test`](test) to execute `run/ps/down` commands using included [docker-compose.yml](docker-compose.yml).

## Continuous Integration

The image is [built daily](.github/workflows/ci.yml) using the latest versions of Docker and Docker Compose.

[1]: https://github.com/docker-library/docker
[2]: https://github.com/docker/compose/tree/v2
