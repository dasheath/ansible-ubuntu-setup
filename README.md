# Ansible Setup for Ubuntu Machine

## Either:

1. Create an ssh key via & add to ssh agent  
```bash
ssh-keygen -t ed25519 -C "your.email@website.com
```

```bash
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
```

Then go add this SSH key to your github account

2. Open `group_vars/all.yml` and change `clone_with` from `ssh` to `https`

## After the first playbook
- Take the ssh key that is generated, and add it to github.
- Some of the following steps require an ssh key to clone github with ssh. 
- Else, the github clones can be done using https.

## How to run playbook:
```bash
ansible-playbook --step site.yml -kK
```