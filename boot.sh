#!/bin/bash

set -euo pipefail

banner='▗▖ ▗▖▗▄▄▖ ▗▄▄▄▖▗▖  ▗▖▗▖ ▗▖ ▗▄▖ ▗▄▄▄▄▖▗▄▄▄▖
▐▌ ▐▌▐▌ ▐▌  █  ▐▛▚▖▐▌▐▌▗▞▘▐▌ ▐▌   ▗▞▘▐▌   
▐▌ ▐▌▐▛▀▚▖  █  ▐▌ ▝▜▌▐▛▚▖ ▐▛▀▜▌ ▗▞▘  ▐▛▀▀▘
▝▚▄▞▘▐▙▄▞▘▗▄█▄▖▐▌  ▐▌▐▌ ▐▌▐▌ ▐▌▐▙▄▄▄▖▐▙▄▄▖

'

echo -e "$banner"
echo "=> Ubinkaze is for fresh Ubuntu Server 24.04 installations only!"
echo -e "\nBegin installation (or abort with ctrl+c)..."

sudo apt-get update >/dev/null
sudo apt-get install -y git >/dev/null

echo "Cloning Ubinkaze..."
rm -rf ~/.local/share/ubinkaze
git clone https://github.com/felipefontoura/ubinkaze.git ~/.local/share/ubinkaze >/dev/null

echo "Installation starting..."
source ~/.local/share/ubinkaze/install.sh
