#!/bin/bash
<<<<<<< HEAD
#INSTALL CCF ON EC2 AMAZON LINUX : 
#Install git
sudo yum install git -y
git --version
#Install nvm (Node version manager)
curl -sL https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.0/install.sh -o install_nvm.sh
bash install_nvm.sh
#source ~/.bash_profile
command -v nvm 
#Should return nvm
#Install nodejs
nvm install --lts 
#Will install the latest long-term support version
#nvm use ... Use a version of node, should previously been installed with "nvm install ...", it is recommended to use node 14.2.0<x<14.9.0
#Install Yarn
curl -o- -L https://yarnpkg.com/install.sh | bash
#reload bash profile
#source ~/.bash_profile
#Install CCF
=======
# Act as root
sudo -s
# Install Git
yum install git -y
# Get the content of nodejs and yarn
curl -sL https://rpm.nodesource.com/setup_14.x | sudo bash -
curl -sL https://dl.yarnpkg.com/rpm/yarn.repo -o /etc/yum.repos.d/yarn.repo
# Install yarn and nodejs
yum install yarn -y
yum install -y nodejs yarn
#Clone CCF
>>>>>>> f183c4396f61e9e6f40cb2025ae25320a75c8fdc
git clone --branch latest https://github.com/cloud-carbon-footprint/cloud-carbon-footprint.git
cd /cloud-carbon-footprint
#Install CCF
yarn install
<<<<<<< HEAD
# Install CCF with cloud provider config
# yarn guided-install
#Start CCF 
#yarn start
#Start CCF with mocked data
#yarn start-with-mock-data
=======
#Launch CCF with mocked data
yarn start-with-mock-data
>>>>>>> f183c4396f61e9e6f40cb2025ae25320a75c8fdc
