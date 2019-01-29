cite about-plugin
about-plugin 'load pyenv, if you are using it'

export PYENV_ROOT="$HOME/.pyenv"
pathmunge "$PYENV_ROOT/bin"

<<<<<<< HEAD
[[ `which pyenv` ]] && eval "$(pyenv init -)"

#Load pyenv virtualenv if the virtualenv plugin is installed.
if pyenv virtualenv-init - &> /dev/null; then
  eval "$(pyenv virtualenv-init -)"
fi

# Load the auto-completion script if pyenv was loaded.
[[ -e $PYENV_ROOT/completions/pyenv.bash ]] && source $PYENV_ROOT/completions/pyenv.bash
=======
[[ `which pyenv` ]] && eval "$(pyenv init - bash)"

#Load pyenv virtualenv if the virtualenv plugin is installed.
if pyenv virtualenv-init - &> /dev/null; then
  eval "$(pyenv virtualenv-init - bash)"
fi
>>>>>>> 9c6ad0d35a1ad4275be4edb0831855c02997a2ef
