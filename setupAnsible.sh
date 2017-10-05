#!/bin/bash

# MIT License
#
# Copyright (c) 2016 Jake Swart
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

# Assuming that a vanilla ubuntu image is used, you must copy this script over
# to the remote machine and setup ansible before doing anything else.
#
# Perform the following with a user that can gain su perms:
#
# sudo apt-get -y install openssh-server
# scp setupAnsible.sh user@hostname:~
# ssh user@hostname
# ./setupAnsible.sh
#
# Enter password if prompted. After this, ansible will be installed and you
# can begin running ansible plays.

sudo apt-get -y install software-properties-common
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get -y update
sudo apt-get -y install ansible

# ffs get rid of the stupid cows
if [ $(cat ~/.bashrc | grep NOCOWS | wc -l) -eq 0  ]; then
    echo "# ffs get rid of the stupid cows" >> ~/.bashrc
    echo -e "export ANSIBLE_NOCOWS=1\n" >> ~/.bashrc
    source ~/.bashrc
fi

exit 0