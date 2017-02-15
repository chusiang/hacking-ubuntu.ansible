#!/bin/bash

# install ansible.
sudo apt-get install -y python-software-properties software-properties-common
sudo add-apt-repository -y ppa:ansible/ansible; sudo apt-get update
sudo apt-get install -y ansible

# add local setting.
sudo su -c '/bin/echo -e "[local]\nlocalhost ansible_connection=local" >> /etc/ansible/hosts'

