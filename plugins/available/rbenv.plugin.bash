<<<<<<< HEAD
# Load rbebv, if you are using it

cite about-plugin
about-plugin 'load rbenv, if you are using it'

pathmunge "$HOME"/.rbenv/bin
[ -x `which rbenv` ] && eval "$(rbenv init -)"

[ -d "$HOME"/.rbenv/plugins/ruby-build ] && pathmunge "$HOME"/.rbenv/plugins/ruby-build/bin
=======
cite about-plugin
about-plugin 'load rbenv, if you are using it'

export RBENV_ROOT="$HOME/.rbenv"
pathmunge "$RBENV_ROOT/bin"

[[ `which rbenv` ]] && eval "$(rbenv init - bash)"
>>>>>>> 9c6ad0d35a1ad4275be4edb0831855c02997a2ef
