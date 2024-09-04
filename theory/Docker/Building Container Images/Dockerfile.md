- Is a text document that contains a list of instructions used by the Docker engine to build an image.
- Each **instruction** in the Dockerfile adds a new layer to the image.

# Structure of a Dockerfile
- Is organized in a series of instructions, one per line, has specific format:
```dockerfile
INSTRUCTION arguments
```
# Common Dockerfile Instructions
- `FROM`: Sets the base image to begin with. It is mandatory to have it as the first instruction in the Dockerfile.
- `WORKDIR`: Sets the working directory for any `RUN`, `CMD`, `ENTRYPOINT`, `COPY`, or `ADD` instructions. If not exist, it will be created automatically.
- `COPY`: Copies files or directories from the host into the container's filesystem.
- `ADD`: Similar to `COPY`, but can also handle remote URLs and automatically unpack archives.
- `RUN`: Executes a command within the images as a new layer.
- `CMD`: Defines the default command to execute when running a container from the image.
- `ENTRYPOINT`: Similar to `CMD`, but designed to allow a container as an executable with its own parameters.
- `EXPOSE`: Informs Docker that the container will listen on the specified network ports at runtime.
- `ENV`: Sets environment variables for the container.