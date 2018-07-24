# added by Anaconda3 4.4.0 installer
#export PATH="/glade/u/home/baird/anaconda3/bin:$PATH"

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
