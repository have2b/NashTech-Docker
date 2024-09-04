# Definition
- 3rd party images are pre-built Docker container images that available on container registries.
- Created and maintained by individuals or organizations and can be used as a starting point for our containerized applications.

# Where to find
- ***Docker Hub*** 

# Using an image in Dockerfile
- Simply set the image name as the base image using the `FROM` directive.
- Example:
```dockerfile
FROM node:20

# Rest of Dockerfile...
```

# Notice
- Be aware of security concerns.
- Check reputation before using any image in production.
- Prefer using official images or well-maintained community images.

# Maintaining images
- It's essential to keep images updated to incorporate the latest security updates and dependency changes.
- Regularly check for updates in base images and rebuild application containers accordingly.
# Some examples
- Using Database like MySQL, SQL Server, PostgreSQL, ...
- Using for interactive test environment.
- Using for command line utilities.
