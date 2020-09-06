#!/bin/bash

echo "For best results, use Ubuntu 20.04 LTS"
echo ""
echo "This script will install Eva"
echo "Make sure that you have at least 2GB of space available"
echo ""
echo ""
echo ""
echo "Press any key to continue"
while [ true ] ; do
read -t 3 -n 1
if [ $? = 0 ] ; then
exit ;
else
echo "waiting for the keypress"
fi
done
clear
echo "Installing NodeJS"
sudo sh -c 'wget -qO- distro.tools/install/node | sh'
clear
echo "Downloading models"
wget https://github.com/mozilla/DeepSpeech/releases/download/v0.8.0/deepspeech-0.8.0-models.pbmm
wget https://github.com/mozilla/DeepSpeech/releases/download/v0.8.0/deepspeech-0.8.0-models.scorer
clear
echo "Updating Packages"
sudo apt-get update
clear
echo "Installing libasound2-dev"
sudo apt-get install libasound2-dev
clear
echo "Installing NPM Packages"
npm install
clear
echo "Installed"
echo "To launch, enter"
echo "node ./main.js"