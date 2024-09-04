- Container images are executable packages that include everything required to run an application, such as: **code**, **runtime**, **system tools**, **libraries**, **settings**.
- By building custom images, we can deploy applications seamlessly with all their dependencies on any Docker-supported platform.
# Step
- Prepare [Dockerfile](./Dockerfile.md)
- Building an image
```shell
docker build -t <image_name>
```
- Inspecting images and layers
	- After successful build, we can inspect the created image using `docker image` command.
	- To take a closer look at the individual layers of an image, use `docker history` command.
	- To view layers of image, use `docker inspect` command.
	- To remove an image use `docker rm <image_name>`
- Pushing images to a registry
	- After built, we can push image to a container registry, such as: Docker Hub, Google Container Registry, ... to easily distribute and deploy application.
	- Login to registry by using `docker login`
	- Tag image with the registry URL:
	```shell
docker tag <image_name> <username>/<repository_name>:tag
	```
	- Push tagged image to the registry
	```shell
docker push <username>/<repository_name>:tag
```
