# Container Isolation
- [Containers](../Introduction/What%20are%20containers?.md#Definition) should be isolated from each other and the host system to prevent unauthorized access and mitigate the potential damage in case an attacker manages to compromise one container.
# Security patterns and Practices
- ***Container management***: Use Role-Based Access Control (***RBAC***) to restrict access to container management platform like ***Kubernetes*** and ensure that users have only minimum permissions necessary.
- ***Container Data***: Encrypt data at rest and in transit, especially when handing sensitive information.
# Container vulnerability management
- To mitigate risks, vulnerability management should be included in the container life cycle.
	- **Image scanning**: Use automated scanning tools to identify vulnerabilities in containers and images [Enhancing Security](../Building%20Container%20Images/Image%20Size%20and%20Security.md#Enhancing Security)
	- **Secure base images**: Use minimal and secure base images for container creation, reducing the attack surface and potential vulnerabilities.