# oscarEmrAnsible
Ansible Scripts for Deploying Oscar EMR

## Introduction
This script is meant to help developers deploy oscar on top of their Ubuntu 16 LTS VM. It is not necessarily meant to help with production installations.  However, if you are using this script for production, then you should set the ROOT_PASSWORD field in oscarEmrAnsible/group_vars/all.yaml to something proper.

## Usage
### Step 1: Install git
sudo apt-get install git

### Step 2: Install ansible
./setupAnsible.sh
source ~/.bashrc

### Step 3: Run the ansible playbook
ansible-playbook oscarEmrAnsible/oscar.yaml --ask-become-pass -i "localhost," -c local-pass

### Step 4: Install Oscar
sudo dpkg -i /home/oscar16/Downloads/oscar_emr15-70~690.deb

## Contact
Jake@cliniconex.com