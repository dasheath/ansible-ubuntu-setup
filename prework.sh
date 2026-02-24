#!/bin/bash

# -- Ensure user is in sudo group
in_sudo=0
for curgroup in $(groups); do
  if [ $curgroup == "sudo" ]; then
    in_sudo=1
  fi
done

if [ ! $in_sudo ]; then
  echo "Not sudo! Add user to sudo with:"
  echo "\tsudo usermod -aG sudo $USER"
fi

# Ensure the ansible package is installed
if command -v ansible &> /dev/null ; then
  echo "Ansible present."
else 
  sudo apt install -y ansible
fi

# Make sure a system python3 is installed
if command -v python3 &> /dev/null ; then
  echo "Python present."
else 
  sudo apt install -y python3 
fi

# --- Print final status
if [ $in_sudo -eq 1 ]; then
  echo "You're ready to run the playbooks!"
else
  echo "Add user to sudo group, then you're ready to run the playbook."
fi