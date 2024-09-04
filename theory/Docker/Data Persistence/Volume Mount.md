- Allow data persist outside the container even when the container is removed.
- Multiple containers can share the same volume, making data sharing between containers easy.
- Docker manages that directory's contents.
- To create a volume:
```shell
docker volume create <volume_name>
```
- To mount a volume in a container:
```shell
docker run -d -v <volume_name>:<path_data> <image_name>
# or
docker run -d --mount source=<volume_name>,destination=<path_data> <image_name>
```
- To sharing volume between containers, just simply run containers to specific volume.
- To remove a volume:
```shell
docker volume rm <volume_name>
```