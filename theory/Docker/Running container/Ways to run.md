# docker run
```shell
docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
```
- Commonly used options
	- --name: assign name to container.
	- -p, --publish: Publish container to specific host's port.
	- -e, --env: Set environment variables inside container.
	- -d, --detach: Run container in detached mode (run in background and not showing logs in console).
	- -v, --volume: [Bind mount](../Data%20Persistence/Bind%20Mount.md) a volume from host.
# docker compose
- Is a tool for defining and running multi-container Docker applications.
- Allow to create, manage, run applications using a simple YAML file called docker-compose.yml
- Benefits:
	- **Simplified Container Management**: Define and configure all services, networks, volumes in one place.
	- **Reproducible builds**: Just need to share docker-compose.yml file to others.
	- **Versioning support**
- Example docker-compose.yml file
```yaml
version: "3.9"
services:
  web:
    image: nginx:latest
    ports:
      - "80:80"
    depends_on:
      - db
  db:
    image: mysql:latest
    environment:
      MYSQL_ROOT_PASSWORD: mysecretpassword
```
- Run docker compose by using `docker-compose up` command.
- Other commands:
	- `docker-compose down`: Stop and remove all running containers, networks, volumes defined in the `docker-compose.yml` file.
	- `docker-compose ps`: List status of all containers defined in the `docker-compose.yml` file.
	- `docker-compose logs`: Displays logs of all containers defined in the `docker-compose.yml` file.
	- `docker-compose build`: Builds all images defined in `docker-compose.yml` file.
# Runtime configuration
- Configure and custom some behavior and resources in Docker containers when run, such as:
	- **Resource management**:
		```shell
		docker run --cpus=2 --cpu-shares=512 --memory=1G --memory-reservation=500M <image_name>
		```
	- **Security**:
		```shell
		docker run --user --read-only 1000 <image_name>
		```
	- **Networking**:
		```shell
		docker run -p <host_port>:<container_port> --hostname=<host_name> --dns=<dns> <image_name>
		```
		