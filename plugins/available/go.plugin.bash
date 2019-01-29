#!/usr/bin/env bash

cite about-plugin
about-plugin 'go environment variables & path configuration'

[ ! command -v go &>/dev/null ] && return

<<<<<<< HEAD
export GOROOT=${GOROOT:-$(go env | grep GOROOT | cut -d'"' -f2)}
pathmunge "${GOROOT}/bin"
export GOPATH=${GOPATH:-"$HOME/go"}
pathmunge "${GOPATH}/bin"
=======
function _split_path_reverse() {
  local a=( ${@//:/ } )
  local i=${#a[@]}
  local r=
  while [ $i -gt 0 ] ; do
    i=$(( i - 1 ))
    if [ $(( i + 1 )) -eq ${#a[@]} ] ; then
      r="${a[i]}"
    else
      r="${r} ${a[i]}"
    fi
  done
  echo "$r"
}

export GOROOT=${GOROOT:-$(go env GOROOT)}
pathmunge "${GOROOT}/bin"

export GOPATH=${GOPATH:-$(go env GOPATH)}
for p in $( _split_path_reverse ${GOPATH} ) ; do
  pathmunge "${p}/bin"
done
>>>>>>> 9c6ad0d35a1ad4275be4edb0831855c02997a2ef
