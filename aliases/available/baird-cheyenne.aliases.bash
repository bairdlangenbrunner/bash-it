# added by Anaconda3 4.4.0 installer
export PATH="/glade/u/home/baird/anaconda3/bin:$PATH"

export DIR=/glade/p/work/baird/WRF
export CC=icc
export CXX=g++
export FC=ifort
export FCFLAGS=-m64
export F77=ifort
export FFLAGS=-m64
export NETCDF=/glade/apps/opt/netcdf/4.3.0/intel/12.1.5
export JASPERLIB=/glade/u/home/wrfhelp/UNGRIB_LIBRARIES/lib
export JASPERINC=/glade/u/home/wrfhelp/UNGRIB_LIBRARIES/include

export MP_TASK_AFFINITY=cpu # for running affinity tasks in parallel
# sidesteps issues when running WRF, like this error message:
# AFFINITY: [ys6102] Oversubscribe: 16 tasks in total, each task requires 4 resource, but there are only 16 available resource. Affinity can not be applied

module load netcdf

alias work='cd /glade/work/baird/'

# for compiling WRF in parallel
export J="-j 6"

gladequota

module load ncview
module load netcdf

# added by Anaconda3 4.4.0 installer
export PATH="/glade/u/home/baird/anaconda3/bin:$PATH"

alias dnest="cd /glade/p/work/baird/WRF_cases/CHEYENNE/WRF_400_FMAASO_nested/WRFV3/r    un/"
alias dwrf="cd /glade/p/work/baird/WRF_cases/"

alias qsub2hr="qsub -I -l select=4:ncpus=36:mpiprocs=36 -l walltime=02:00:00 -q regu    lar -A UCLA0022"
alias qsub30min="qsub -I -l select=4:ncpus=36:mpiprocs=36 -l walltime=00:30:00 -q re    gular -A UCLA0022"

#export CLICOLOR=1;
#export LSCOLORS=exfxcxdxbxegedabagacad;

export PBS_ACCOUNT=UCLA00220
