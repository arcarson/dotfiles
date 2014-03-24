[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


# load components

for file in ~/.{aliases,silverforge-credentials,path,cdpath}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file


# use bash-completion

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
