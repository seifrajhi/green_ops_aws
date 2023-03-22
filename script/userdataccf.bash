#!/bin/bash
#INSTALL CCF ON EC2 AMAZON LINUX : 
#Install git
sudo yum install git -y
#Install nvm (Node version manager)
curl -sL https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.0/install.sh -o install_nvm.sh
bash install_nvm.sh
#Should return nvm
#Install nodejs
nvm install --lts 
#Will install the latest long-term support version
#nvm use ... Use a version of node, should previously been installed with "nvm install ...", it is recommended to use node 14.2.0<x<14.9.0
#Install Yarn
curl -o- -L https://yarnpkg.com/install.sh | bash
#Install CCF
git clone --branch latest https://github.com/cloud-carbon-footprint/cloud-carbon-footprint.git
cd cloud-carbon-footprint
yarn install
