# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
PATH=$PATH:$HOME/bin
export PATH

# User specific aliases and functions
alias jn8787='jupyter notebook --no-browser --port=8787'
alias bdata="cd /beegfs/DATA/pritchard/blangenb"

#gp3job() {
#  srun --pty --x11 -t "$1" -p pritchard bash -i
#}

gpjob() {
  srun --pty --mem 100gb -t "$1" -p c6145 bash -i
}

# load all intel compilers
#module load intel

# for anaconda3
export PATH="$HOME/miniconda3/bin:$PATH"
