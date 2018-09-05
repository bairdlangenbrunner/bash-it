cite 'about-alias'
about-alias 'custom aliases for baird'

alias gitall='cd ~/Dropbox/_git_ALL/'
alias ghres='cd ~/Dropbox/_git_ALL/_github_repos_research/'

alias ocean='ssh -X -Y baird@ocean.atmos.ucla.edu'
alias nino='ssh -X -Y baird@nino.atmos.ucla.edu'
alias nina='ssh -X -Y baird@nina.atmos.ucla.edu'
alias snow='ssh -X -Y baird@snow.atmos.ucla.edu'
alias chione='ssh -X -Y baird@chione.atmos.ucla.edu'
alias dn-baird='ssh -X -Y baird@dn-baird.atmos.ucla.edu'

alias yellowstone='ssh -X -Y baird@yellowstone.ucar.edu'
alias cheyenne='ssh -X -Y baird@cheyenne.ucar.edu'

alias daphnetunnel='ssh -L localhost:8585:localhost:8585 baird@daphne.atmos.ucla.edu'
alias oceantunnel='ssh -L localhost:8787:localhost:8787 baird@ocean.atmos.ucla.edu'
alias gp2tunnel='ssh -L localhost:8787:localhost:8787 blangenb@gplogin2.ps.uci.edu'
alias gp3tunnel='ssh -L localhost:8787:localhost:8787 blangenb@gplogin3.ps.uci.edu'

gp3slurmtunnel() {
  ssh -L localhost:$1:localhost:$1 blangenb@gplogin3.ps.uci.edu -t "ssh -L localhost:$1:localhost:$1 $2"
}

gp1slurmtunnel() {
  ssh -L localhost:$1:localhost:$1 blangenb@gplogin1.ps.uci.edu -t "ssh -L localhost:$1:localhost:$1 $2"
}

gp1c339tunnel() {
  ssh -L localhost:$1:localhost:$1 blangenb@gplogin1.ps.uci.edu -t "ssh -L localhost:$1:localhost:$1 c-3-39"
}

gp3c339tunnel() {
  ssh -L localhost:$1:localhost:$1 blangenb@gplogin3.ps.uci.edu -t "ssh -L localhost:$1:localhost:$1 c-3-39"
}

gitpub() {
  git add .
  git commit -m "$1"
  git push origin "$2"
}

export PATH="/usr/local/bin:$PATH"

alias gp1='ssh -Y blangenb@gplogin1.ps.uci.edu'
alias gp2='ssh -Y blangenb@gplogin2.ps.uci.edu'
alias gp3='ssh -Y blangenb@gplogin3.ps.uci.edu'

alias gp1c339='ssh -X -Y blangenb@gplogin1.ps.uci.edu -t "ssh -X -Y c-3-39; bash --login"'
alias gp3c339='ssh -X -Y blangenb@gplogin3.ps.uci.edu -t "ssh -X -Y c-3-39; bash --login"'

alias gp1fuse='sshfs blangenb@gplogin1.ps.uci.edu:/beegfs/DATA/pritchard/blangenb/ /Users/baird/Dropbox/gpfuse'
alias gp3fuse='sshfs blangenb@gplogin3.ps.uci.edu:/beegfs/DATA/pritchard/blangenb/ /Users/baird/Dropbox/gpfuse; cd ~/Dropbox/gpfuse'

#export NCARG_ROOT=/usr/local/ncl-6.3.0
#export PATH=$NCARG_ROOT/bin:$PATH

# added by Miniconda3 installer
export PATH="/Users/baird/miniconda3/bin:$PATH"
#export MPLCONFIGDIR=$HOME/.matplotlib
