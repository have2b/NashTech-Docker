# Docker Sharing Sessions :whale2:	
Thanks for your interest in contributing to our sharing sessions. We're happy to have you here.
If you need any help, feel free to reach out to us.  
## About this repository
This repository will include source code, Dockerfile and related files that helps you practice Docker immediately without any coding effort.
## Environment
We will use Docker in Windows, you'll need to install:
+ WSL2, to serve as a runtime environment for Docker Engine
+ Docker Engine inside WSL2, to be able to run containers
+ WSL extension in VSCode to help you view source code in WSL2 through VSCode installed in Windows
## Now, let's get started :rocket:
### Install WSL2
WSL2, or the Windows Subsystem for Linux, allows you to run a Linux distribution on Windows. To install it with the default Ubuntu distribution, open a terminal in administrator mode and use the following command: 
```
wsl --install
```
After installing WSL2, you can start it by typing wsl in a terminal, or by launching the WSL program from your Windows Start menu. Once WSL2 is open, update your Linux distribution to ensure all packages are up to date with the following command:
```
sudo apt update && sudo apt upgrade
```
### Install Docker Engine on WSL2
Next, let’s install the Docker Engine, which is the core component that runs Docker containers. The following two blocks of commands will first add the Docker apt repository and then install Docker. You can execute them directly in the WSL2 terminal.
```
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
```
```
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```
Now that Docker is installed, let’s confirm that it’s working correctly. The following command will download and run the hello-world container. If the installation was successful, it should display a confirmation message and then exit.
```
sudo docker run hello-world
```
By default, you need to use sudo with Docker commands for elevated permissions. To run Docker without sudo, you can create a group docker for Docker users and add your current user to that group. 
On some distributions, the Docker group is created by default. You only need to add your user to this group to have the permission to run Docker without sudo
```
sudo groupadd docker
sudo usermod -aG docker $USER
```
Once you re-open WSL2, you should be able to use Docker without the need for sudo.
```
docker run hello-world
```
### Install WSL Extension in VSCode
As you know, we only communicate with WSL2 through Command Prompt, GUI is not available for this situation. It is fine because we don't need to view anything, we only execute Docker command, but what if you want to view source code projects that located in WSL2? WSL Extension will solve that problem. (Name of this extension will be different from image below. Its official name now is WSL )

![Alt text](https://assets.digitalocean.com/67852/5bBqlFt.png)

After install WSL extension, click on the bottom left corner to open remote windows, choose **Connect to WSL** to open terminal of WSL2 in VSCode.
**Now you have all setup to learn Docker on Windows**
