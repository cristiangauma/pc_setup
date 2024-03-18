#!/usr/bin/env bash
echo "Installing dependencies..."

# Install dependencies
sudo apt-get install -y git make python3-pip
python3 -m pip install --user ansible

/home/cristian/.local/bin/ansible-galaxy install gantsign.oh-my-zsh
/home/cristian/.local/bin/ansible-galaxy collection install community.general

/home/cristian/.local/bin/ansible-playbook -i 127.0.0.1, -c local ansible/main.yml --ask-become-pass