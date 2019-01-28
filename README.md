# Custom ZSH Config

### Clone with submodules

```
git clone --recurse-submodules git@github.com:keanedp/.zsh.git 
```

### Setup configuration directory

Requires ZDOTDIR to be set in .zshenv

```
ZDOTDIR=$HOME/.zsh
```

### oh-my-zsh custom directory

Custom directory is located at $ZDOTHOME/custom. Use git submodules to add plugins, etc from git.

Example:

```
git submodule add https://github.com/zsh-users/zsh-syntax-highlighting.git $ZDOTDIR/custom/plugins/zsh-syntax-highlighting
```

### Custom plugin app dependencies

cat - ccat  
copy - xclip (linux)  
java-v: java 8 & 11 - brew update & brew tap homebrew/cask-versions & brew cask install java  
