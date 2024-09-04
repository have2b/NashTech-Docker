# Definition
- Is a feature that allows the isolation of various system resources
- Help to create an abstraction layer to keep containerized process separate from one another and from the host system.
- Some namespaces on Linux:
	- **PID (Process ID):** Isolates the PID number space, which means that the process within a container can only see their own processes, not those on the host or other containers
	- **Network:** Provide each container with a view of the network stack, including its own network interfaces, routing labels, and firewall rules