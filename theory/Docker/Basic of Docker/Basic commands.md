1. **Pull an image from registry:**
```shell
docker pull <image>
```
2. **Build image from Dockerfile:**
```shell
docker build -t <image_path> <file_path>
```
3. **List all image:**
```shell
docker image ls
```
4. **Run a container from an image, map host port with container port:**
```shell
docker run -d -p <host_port>:<container_port> --name <container_name> <image>
```
5. **List all running container:**
```shell
docker container ls
# or
docker ps
```
6. **Stop a running container:**
```shell
docker container stop <container_name>
```
7. **Remove a stopped container:**
```shell
docker container rm <container_name>
```
8. **Remove  an image from local machine:**
```shell
docker image rm <image_name>
```
9. **Start a stopped container:**
```shell
docker start <container_name>
```
10. **Restart a  running container:**
```shell
docker restart <container_name>
```
11. **View the logs of a container:**
```shell
docker logs <container_name>
```
12. **Follow logs in real time:**
```shell
docker logs -f <container_name>
```
13. **Execute a command inside a running container:**
```shell
docker exec -it <container_name> <command>
```
14. **Inspect a container's metadata:**
```shell
docker inspect <container_name>
```
15. **Copy file between container and the host:**
```shell
docker cp <container_name>:<container_path> <host_path>
```
16. **Remove all stopped container:**
```shell
docker container prune
```