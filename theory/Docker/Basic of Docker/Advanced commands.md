1. **Run a container in interactive mode:**
```shell
docker run -it <image>
```
2. **Build an image without using cache:**
```shell
docker build --no-cache -t <image_path> <file_path>
```
3. **Run a container with environment variables:**
```shell
docker run -d -p <host_port>:<container_port> --env <VAR_NAME>=<value> --name <container_name> <image>
```
4. **View the disk usage by Docker:**
```shell
docker system df
```
5. **Remove dangling images (unused images):**
```shell
docker image prune
```
6. **Remove all unused data (containers, networks, images, volumes)**
```shell
docker system prune
```
7. **Create a Docker network:**
```shell
docker network create <network_name>
```
8. **Run a container attached to a specific network:**
```shell
docker run -d --network <network_name> --name <container_name> <image>
```
9. **List all Docker networks**
```shell
docker network ls
```
10. **Inspect a Docker network:**
```shell
docker network inspect <network_name>
```
11. **Connect a running container to a network:**
```shell
docker network connect <network_name> <container_name>
```
12. **Disconnect a running container from a network:**
```shell
docker network disconnect <network_name> <container_name>
```
13. **Create and start a container with a volume:**
```shell
docker run -d -v <host_path>:<container_path> --name <container_name> <image>
```
14. **List all volumes:**
```shell
docker volume ls
```
15. **Remove a specific volume:**
```shell
docker volume rm <volume_name>
```
16. **Remove all unused volumes:**
```shell
docker volume prune
```
17. **Export a container's filesystem as a tar archive:**
```shell
docker export <container_name> > <file_name>.tar
```
18. **Import a container from a tar archive:**
```shell
cat <file_name>.tar | docker import - <new_image_name>
```
19. **Save an image to a tar archive:**
```shell
docker save -o <file_name>.tar <image_name>
```
20. **Load an image from a tar archive:**
```shell
docker load -i <file_name>.tar
```
21. **Tag an image for pushing to a registry:**
```shell
docker tag <image> <registry>/<username>/<repository>:<tag>
```
22. **Push an image to a Docker registry:**
```shell
docker push <registry>/<username>/<repository>:<tag>
```