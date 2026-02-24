# Ansible Setup for Ubuntu Machine

## Prepare

#### Optionally install git now

- See the "Download this repo" section below. Add the git package now if preferred. Else the playbook will add it later.

- To ensure `git` is installed. Run `git --version` and if a recent version is printed, proceed, else:
```bash
sudo apt install git -y
```

#### Prework for the playbook
Run the `prework.sh` script. This will ensure that the bare minimum requirements in order to run the playbook are met.

#### Optionally add an SSH key to github:
1. Create an ssh key via & add to ssh agent  
```bash
ssh-keygen -t ed25519 -C "your.email@website.com

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
```
1. Then go add this SSH key to your github account.
1. After cloning this repo, open `group_vars/all.yml`, and change `clone_with` to `ssh`

## Download this repo

Feel free to either download this as a zip, or clone it from github. Again, either add ssh key, or just clone with https if preferred.

- Some of the steps in the ansible playbook require clone repos from github.
- This can be done with ssh if you prefer. Ensure you have an ssh key that has been added to your github account.
- Else, the github clones can be done using https by updating the `group_vars/all.yml` as described above

## Setting up multiple users
- This has only been tested by running with a single user. But it is configured such that you can add more users to the `managed_users` list in `group_vars/all.yml`

## How to run playbook:
```bash
ansible-playbook --step site.yml --ask-become-pass
```

Feel free to skip the `--step` flag to full send the entire playbook, or leave it there if you prefer to only run certain parts.

## Reboot
- Reboot after the playbook has run successfully for some of the changes to take effect.
