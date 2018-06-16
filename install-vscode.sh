curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

sudo apt-get update
sudo apt-get -y install code

code --install-extension ms-vsliveshare.vsliveshare 
code --install-extension PeterJausovec.vscode-docker
code --install-extension dbaeumer.vscode-eslint
code --install-extension k--kato.intellij-idea-keybindings
code --install-extension ms-python.python
code --install-extension ms-vsliveshare.vsliveshare
code --install-extension naco-siren.gradle-language
code --install-extension redhat.java
code --install-extension rust-lang.rust
code --install-extension vscjava.vscode-java-debug
code --install-extension vscjava.vscode-java-pack
code --install-extension vscjava.vscode-java-test

