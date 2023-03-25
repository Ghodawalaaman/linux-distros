#!/bin/sh

BLACK='\033[30m'
RED='\033[31m'
GREEN='\033[32m'
YELLOW='\033[33m'
BLUE='\033[34m'
MAGENTA='\033[35m'
CYAN='\033[36m'
WHITE='\033[37m'

pkgs=$(cat packages.txt | sed -z 's/\n/ /g')

echo -e "[${GREEN}INFO${WHITE}]" "Installing packages"

sudo pacman --needed -S "${pkgs}"

