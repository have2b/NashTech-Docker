# Definition
- ***Container*** is lightweight, portable, and isolated software environment that allow developers to run and package applications with their dependencies, consistently across different platforms.
# How it works
- Container ***share*** the host's OS kernel and leverage lightweight virtualization techniques to create isolated processes. This approach leads to some benefits, like:
	- **Efficiency:** Single host can run multiple container, not like each host run just 1 service like what VMs does. (due to sharing common libraries and executable files)
	- **Portability:** Containers encapsulate applications and their dependencies, so that it can run on any platform with just a container have been pulled.
	- **Fast startup:** Container does not need to boot a full OS so that it can start and shut down faster compared to VMs.
	- **Consistency:** Containers provide a consistent environment for dev, test, production stage, so it can resolve the problem "it works on my machine".