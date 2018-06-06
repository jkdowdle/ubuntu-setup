echo "Initailizing installs..."

# Update
sudo apt-get update

# Hide Desktop
./hide-desktop.sh

# ag Search
./ag.sh

# Vim
./vim.sh

# Curl
./curl.sh

# Git
./git.sh

# Node
./node.*.sh

# Yarn
./yarn.sh

# Create-React-App
./create-react-app.sh

# Prisma
./prisma.sh

# Code-Insiders
./code-update.sh

# Docker
./docker-install.sh

# Checking...
vim --version
curl --version
git --version
node --version
yarn --version
create-react-app --version
prisma --version
code-insiders --version
docker --version

echo "Complete."


