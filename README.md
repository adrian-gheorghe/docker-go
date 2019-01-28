### Golang Docker Development Environment

Encapsulate your Golang development using Docker. This docker image uses "gin" to listen to file changes and rebuild our binary. This GO container setup runs well with my docker main setup: https://github.com/adrian-gheorghe/docker-setup

### Usage
- Clone repository where you want to set up a go project
- Create a subdirectory called code (mounted to the Docker container)
- Add your code to the "code" subdirectory

### Running a web server / other service listening to a port
- If you have traefik set up locally, use the docker-compose.yml file. This will allow you to access the http server on port 80 and using a custom development domain
- run docker-compose up -d or docker-compose up

#### URLs
- http://golang.localhost/ - if using docker-setup
- http://localhost:3000/ - if not using docker-setup

### Run commands
docker exec -ti go go --help