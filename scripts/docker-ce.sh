# Uninstall old versions
sudo apt-get remove docker docker-engine docker.io containerd runc

# Setup repositroy
sudo apt-get update

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# Install Docker CE
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io

# Add User to the docker group
sudo usermod -aG docker $USER

# Check Docker installed correctly
sudo docker run hello-world
