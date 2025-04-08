#!/usr/bin/env bash
# Installation script for the command

install_mac_os(){
    if ! brew -v &> /dev/null
    then
        printf ">> Installing Homebrew\n"
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    else
        printf ">> Updating homebrew\n"
        brew update &> /dev/null
    fi

    printf ">> Installing figlet\n"
    brew install figlet &> /dev/null
}

install_linux(){
    printf ">> Updating the list of available packages\n"
    sudo apt update -y &> /dev/null

    printf ">> Installing figlet\n"
    sudo apt install figlet -y &> /dev/null
}

install_requirements(){
    if [[ "$OSTYPE" == "linux-gnu" ]]; then
        install_linux
    elif [[ "$OSTYPE" == "darwin"* ]]; then
        install_mac_os
    fi
}

printf "Let me install the script for you, it will only be one second\n"

printf "Installation started\n"

printf ">> Making scrip executable\n"
chmod +x update.sh

# Get repository path
repository_folder=$(pwd)
printf "The script is being installed in: %s\n" "$repository_folder"

# Save alias
printf ">> Checking for old alias\n"
awk '!/alias git-update/' ~/.bashrc > temp && mv temp ~/.bashrc
awk '!/alias git-update/' ~/.zshrc > temp && mv temp ~/.zshrc

printf ">> Enabling command\n"
echo "alias git-update='$repository_folder/update.sh'" >> ~/.bashrc
echo "alias git-update='$repository_folder/update.sh'" >> ~/.zshrc

printf ">> Installing requirements\n"
install_requirements

printf ">> Installation completed!\n\n"

if [ -f ~/.bashrc ]; then
    printf ">> Reloading bash configuration\n"
    source ~/.bashrc
fi

if [ -f ~/.zshrc ]; then
    printf ">> Reloading zsh configuration\n"
    source ~/.zshrc
fi

printf "You can use the command by typing git-update in the terminal\n"
