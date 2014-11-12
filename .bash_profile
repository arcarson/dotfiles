# load components
for file in ~/tools/dotfiles/.{aliases,path,cdpath}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file


# use vim
export EDITOR=vim


# use bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

