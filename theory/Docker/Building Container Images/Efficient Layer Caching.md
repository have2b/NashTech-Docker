- When building container images, Docker caches the newly created layers that can then be used on when building other images, reducing build time and minimizing bandwidth usage.
- To make the most of this caching mechanism, we should be aware of how to efficiently use layer caching.

# How Docker Layer Caching Works
- Docker creates a new layer for each instruction (e.g., `RUN`, `COPY`, `AND`, etc.) in the [Dockerfile](./Dockerfile.md).
- If instructions hasn't changed since the last build, Docker will reuse the existing layer.
# Tips for Efficient Layer Caching
- **Minimize changes in the Dockerfile**: Try to minimize the frequency of changes in your Dockerfile, and structure your instructions in a way that most frequently changed lines appear at the bottom.
- **Build context optimization**: Use `.dockerignore` file to exclude unnecessary files from the build context that might cause cache invalidation.
- **Use smaller base images**: Smaller base images reduce the time taken to pull the base images as well as the number of layers that need to be cached.
- **Leverage the Docker's `--cache-from` flag**: specify which image to use as a cache source in CI/CD pipeline.
- **Combine multiple instructions**: Combining instructions (e.g., `RUN`) can help minimize number of layers, making caching more efficient.