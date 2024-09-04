- Limited functionality compared to volume mount.
- File or directory on the host machine is mounted into a container, be referenced by its absolute path on the host machine.
- Very performant, but rely on the host machine's filesystem having a specific structure available.
```shell
docker run -d --mount type=bind,source=<host_path>,destination=<path_data> <image_name>
```