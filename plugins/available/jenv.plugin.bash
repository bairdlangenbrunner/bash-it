cite about-plugin
about-plugin 'load jenv, if you are using it'

export JENV_ROOT="$HOME/.jenv"
pathmunge "$JENV_ROOT/bin"

<<<<<<< HEAD
if which jenv > /dev/null; then eval "$(jenv init -)"; fi

[[ -e $JENV_ROOT/completions/jenv.bash ]] && source $JENV_ROOT/completions/jenv.bash
=======
if which jenv > /dev/null; then eval "$(jenv init - bash)"; fi
>>>>>>> 9c6ad0d35a1ad4275be4edb0831855c02997a2ef
