#!/bin/sh
wget http://apt.metasploit.com/metasploit-framework.gpg.key
gpg --no-default-keyring --keyring ./metasploit-framework_keyring.gpg --import metasploit-framework.gpg.key
gpg --no-default-keyring --keyring ./metasploit-framework_keyring.gpg --export > ./metasploit-framework.gpg
sudo mv ./metasploit-framework.gpg /etc/apt/trusted.gpg.d/
apt update
