# plugin for plenv

cite about-plugin
about-plugin 'plenv plugin for Perl'

if [[ -e "${HOME}/.plenv/bin" ]] ; then
<<<<<<< HEAD
  
  # load plenv bin dir into path if it exists
  pathmunge "${HOME}/.plenv/bin"
  
=======

  # load plenv bin dir into path if it exists
  pathmunge "${HOME}/.plenv/bin"

>>>>>>> 9c6ad0d35a1ad4275be4edb0831855c02997a2ef
fi

if [[ `which plenv` ]] ; then

  # init plenv
<<<<<<< HEAD
  eval "$(plenv init -)"

  # Load the auto-completion script if it exists.
  [[ -e "${HOME}/.plenv/completions/plenv.bash" ]] && source "${HOME}/.plenv/completions/plenv.bash"
=======
  eval "$(plenv init - bash)"
>>>>>>> 9c6ad0d35a1ad4275be4edb0831855c02997a2ef

fi
