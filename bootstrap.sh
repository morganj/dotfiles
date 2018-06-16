#!/bin/bash 

# docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# sudo add-apt-repository  "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
#   $(lsb_release -cs) \
#   stable"
sudo add-apt-repository  "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   artful \
   stable"


sudo apt-get update

sudo apt-get install -y vim curl build-essential git vlc chromium-browser zsh gimp  \
    apt-transport-https ca-certificates software-properties-common docker-ce nfs-common evolution \
    shutter docker-ce docker-compose

sudo usermod -aG docker $USER

# slack
sudo snap install slack --classic

# vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# pip
curl -O https://bootstrap.pypa.io/get-pip.py
python get-pip.py --user

pip install awscli --upgrade --user

curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk install scala 
sdk install gradle 
sdk install groovy 
