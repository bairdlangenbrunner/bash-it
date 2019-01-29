#!/usr/bin/env bash

# Loads the system's Bash completion modules.
# If Homebrew is installed (OS X), its Bash completion modules are loaded.

if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

# Some distribution makes use of a profile.d script to import completion.
if [ -f /etc/profile.d/bash_completion.sh ]; then
  . /etc/profile.d/bash_completion.sh
fi


if [ $(uname) = "Darwin" ] && command -v brew &>/dev/null ; then
  BREW_PREFIX=$(brew --prefix)

  if [ -f "$BREW_PREFIX"/etc/bash_completion ]; then
    . "$BREW_PREFIX"/etc/bash_completion
  fi

<<<<<<< HEAD
  # homebrew/versions/bash-completion2 (required for projects.completion.bash) is installed to this path
  if [ -f "$BREW_PREFIX"/share/bash-completion/bash_completion ]; then
=======
 # homebrew/versions/bash-completion2 (required for projects.completion.bash) is installed to this path
  if [ "${BASH_VERSINFO}" -ge 4 ] && [ -f "$BREW_PREFIX"/share/bash-completion/bash_completion ]; then
>>>>>>> 9c6ad0d35a1ad4275be4edb0831855c02997a2ef
    . "$BREW_PREFIX"/share/bash-completion/bash_completion
  fi
fi
