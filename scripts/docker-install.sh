# Uninstall old versions
sudo apt-get remove docker docker-engine docker.io

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

sudo apt-get install docker-ce

# Add User to the docker group
sudo usermod -aG docker $USER

# Add insecure regestries 
sudo cp ./daemon.json.example /etc/docker/daemon.json

# Install docker-compose
sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

# Check docker-compose installed correctly
$ docker-compose --version

# Check Docker installed correctly
sudo docker run hello-world

