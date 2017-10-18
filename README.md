# oscarEmrAnsible
Ansible Scripts for Deploying Oscar EMR

## Introduction
This script is meant to help developers deploy oscar on top of their Ubuntu 16 LTS VM. It is not necessarily meant to help with production installations.  However, if you are using this script for production, then you should set the MYSQL_PASSWORD field in oscarEmrAnsible/group_vars/all.yaml to something proper, or pass it to ansible-playbook on the command line with `--extra-vars "MYSQL_PASSWORD=<your own password>"`.

## Usage
### Step 1: Install git
sudo apt-get install git

### Step 2: Install ansible
./setupAnsible.sh
source ~/.bashrc

### Step 3: Run the ansible playbook
`ansible-playbook oscarEmrAnsible/oscar.yaml --ask-become-pass -i "localhost," -c local-pass`
-or-
`ansible-playbook oscarEmrAnsible/oscar.yaml --ask-become-pass -i "localhost," -c local-pass --extra-vars "MYSQL_PASSWORD=<your own password>"`

### Step 4: Follow extra instructions
The ansible scripts may print out instructions to complete the ansible installation; you should pay attention and follow them.

A lot of older versions of the the debian package release do not allow a completely automated installation, so you will need to do some extra steps.

## Contact
jake.swart8@gmail.com