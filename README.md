# Ansible Setup for Ubuntu Machine

## Prepare

#### Either:
1. Create an ssh key via & add to ssh agent  
```bash
ssh-keygen -t ed25519 -C "your.email@website.com

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
```
Then go add this SSH key to your github account

#### OR:

2. After you have this playbook downloaded, open `group_vars/all.yml` and change `clone_with` from `ssh` to `https`

#### Make sure git is installed to clone this repo

Ensure `git` is installed. Run `git --version` and if a recent version is printed, proceed, else:
```bash
sudo apt install git -y
```

## Download this repo

Feel free to either download this as a zip, or clone it from github. Again, either add ssh key, or just clone with https if preferred.

- Some of the steps in the ansible playbook require clone repos from github.
- This can be done with ssh if you prefer. Ensure you have an ssh key that has been added to your github account.
- Else, the github clones can be done using https by updating the `group_vars/all.yml` as described above

## How to run playbook:
```bash
ansible-playbook --step site.yml -kK
```

Feel free to skip the `--step` flag to full send the entire playbook, or leave it there if you prefer to only run certain parts.
