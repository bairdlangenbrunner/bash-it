cite about-plugin
about-plugin 'load nodenv, if you are using it'

export NODENV_ROOT="$HOME/.nodenv"
pathmunge "$NODENV_ROOT/bin"

<<<<<<< HEAD
[[ `which nodenv` ]] && eval "$(nodenv init -)"

# Load the auto-completion script if nodenv was loaded.
[[ -e $NODENV_ROOT/completions/nodenv.bash ]] && source $NODENV_ROOT/completions/nodenv.bash
=======
[[ `which nodenv` ]] && eval "$(nodenv init - bash)"
>>>>>>> 9c6ad0d35a1ad4275be4edb0831855c02997a2ef
