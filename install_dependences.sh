#!/usr/bin/env bash
echo "Installing dependencies..."

# Install dependencies
sudo zypper install -y git make python3-pip
python3 -m pip install --user ansible

/home/cristian/.local/bin/ansible-galaxy install gantsign.oh-my-zsh
/home/cristian/.local/bin/ansible-galaxy collection install community.general

/home/cristian/.local/bin/ansible-playbook -i 127.0.0.1, -c local ansible/main.yml --skip-tags 'host' --ask-become-pass

echo
echo
echo "If you are installing this on a phyisical host, please run this:"
echo "/home/cristian/.local/bin/ansible-playbook -i 127.0.0.1, -c local ansible/main.yml --ask-become-pass"
