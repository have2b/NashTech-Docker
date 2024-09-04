# Docker Hub
[DockerHub](https://hub.docker.com/) is a cloud-based registry service provided by Docker Inc. It is the default public container registry where you can store, manage, and distribute your Docker images. DockerHub makes it easy for other users to find and use your images or to share their own images with the Docker community.

## Features of DockerHub

- **Public and private repositories:** Store your images in public repositories that are accessible to everyone, or opt for private repositories with access limited to your team or organization.
    
- **Automated Builds:** DockerHub integrates with popular code repositories such as GitHub and Bitbucket, allowing you to set up automated builds for your Docker images. Whenever you push code to the repository, DockerHub will automatically create a new image with the latest changes.
    
- **Webhooks:** DockerHub allows you to configure webhooks to notify other applications or services when an image has been built or updated.
    
- **Organizations and Teams:** Make collaboration easy by creating organizations and teams to manage access to your images and repositories.
    
- **Official Images:** DockerHub provides a curated set of official images for popular software like MongoDB, Node.js, Redis, etc. These images are maintained by Docker Inc. and the upstream software vendor, ensuring that they are up-to-date and secure.
    

To start using DockerHub, you need to create a free account on their website. Once you’ve signed up, you can create repositories, manage organizations and teams, and browse the available images.

When you’re ready to share your own images, you can use the `docker` command line tool to push your local images to DockerHub:

```shell
docker login
docker tag your-image your-username/your-repository:your-tag
docker push your-username/your-repository:your-tag
```

To pull images from DockerHub, you can use the `docker pull` command:

```shell
docker pull your-username/your-repository:your-tag
```

DockerHub is essential for distributing and sharing Docker images, making it easier for developers to deploy applications and manage container infrastructure.

# Others
### Quay.io

[Quay.io](https://quay.io/) by Red Hat is a popular alternative to DockerHub that offers both free and paid plans. It provides an advanced security feature called “Container Security Scanning,” which checks for vulnerabilities in the images stored in your repository. Quay.io also provides features like automated builds, fine-grained user access control, and Git repository integration.

### Artifact Registry

[Artifact Registry](https://cloud.google.com/artifact-registry) is a container registry service provided by Google Cloud Platform (GCP). It offers a fully managed, private Docker container registry that integrates with other GCP services like Cloud Build, Cloud Run, and Kubernetes Engine. Artifact Registry provides features like vulnerability scanning, access control, and artifact versioning.

### Amazon Elastic Container Registry (ECR)

[Amazon Elastic Container Registry (ECR)](https://aws.amazon.com/ecr/) is a fully-managed Docker container registry by Amazon Web Services (AWS) that simplifies the process of storing, managing, and deploying Docker images. With ECR, you can control access to your images using AWS Identity and Access Management (IAM) policies. ECR also integrates with other AWS services, such as Lambda, Amazon ECS, and ECR image scanning.

### Azure Container Registry (ACR)

[Azure Container Registry (ACR)](https://azure.microsoft.com/en-us/services/container-registry/) is Microsoft Azure’s container registry offering. It provides a wide range of functionalities, including geo-replication for high availability, ACR Tasks for automated image building, container scanning for vulnerabilities, and integration with Azure Pipelines for CI/CD. ACR also offers private network access using Virtual Networks and Firewalls.

### GitHub Container Registry (GHCR)

[GitHub Container Registry (GHCR)](https://docs.github.com/en/packages/guides/about-github-container-registry) is the container registry service provided by GitHub. It enhances the support for Docker in GitHub Packages by providing a more streamlined experience for managing and deploying Docker images. GHCR provides fine-grained access control, seamless integration with GitHub Actions, and support for storing both public and private images.