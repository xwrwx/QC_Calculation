#!/bin/bash
#BSUB -J intel
#BSUB -o opt.out
#BSUB -n 8
#BSUB -q cqueue

export LD_LIBRARY_PATH=/apps/software/openmpi-4.1.1/lib:/apps/software/orca_5_0_0:$LD_LIBRARY_PATH
export PATH=/apps/software/openmpi-4.1.1/bin:/apps/software/orca_5_0_0:$PATH

mkdir /scratch/opt_608
scp $USER@mgt01:/apps/users/wangru/QM/homework/exam/1-task/opt-orca/opt.inp /scratch/opt_608
scp $USER@mgt01:/apps/users/wangru/QM/homework/exam/1-task/opt-orca/benzene_dimer.xyz /scratch/opt_608
/apps/software/orca_5_0_0/orca /scratch/opt_608/opt.inp >& opt.out
scp /scratch/opt_608/*.gbw $USER@mgt01:/apps/users/wangru/QM/homework/exam/1-task/opt-orca
scp /scratch/opt_608/*.xyz $USER@mgt01:/apps/users/wangru/QM/homework/exam/1-task/opt-orca
scp /scratch/opt_608/*.trj $USER@mgt01:/apps/users/wangru/QM/homework/exam/1-task/opt-orca
