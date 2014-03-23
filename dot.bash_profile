# old export path
#export PATH="/Applications/Postgres.app/Contents/MacOS/bin:/usr/local/share/npm/bin:/usr/local/bin:/usr/local/sbin:~/bin:$PATH"

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH=/usr/local/bin:$PATH

for file in ~/.{aliases,silverforge-credentials}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

