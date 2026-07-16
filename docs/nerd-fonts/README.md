# Make the dir

```
mkdir -p ~/.local/share/fonts
```

# Download Jetbrains Mono Nerd Font

- Example nerd font - there are many

```
cd ~/.local/share/fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip
unzip JetBrainsMono.zip
```

# Cache it

```
fc-cache -fv
```

