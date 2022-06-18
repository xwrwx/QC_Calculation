#!/bin/bash
#BSUB -J intel
#BSUB -o 001.out
#BSUB -n 8
#BSUB -q cqueue

export LD_LIBRARY_PATH=/apps/software/openmpi-4.1.1/lib:/apps/software/orca_5_0_0:$LD_LIBRARY_PATH
export PATH=/apps/software/openmpi-4.1.1/bin:/apps/software/orca_5_0_0:$PATH

mkdir /scratch/001_563
scp $USER@mgt01:/apps/users/wangru/QM/homework/exam/1-task/orca/1-CIS/001.inp /scratch/001_563
scp $USER@mgt01:/apps/users/wangru/QM/homework/exam/1-task/orca/1-CIS/opt.xyz /scratch/001_563
/apps/software/orca_5_0_0/orca /scratch/001_563/001.inp >& 001.out
scp /scratch/001_563/*.gbw $USER@mgt01:/apps/users/wangru/QM/homework/exam/1-task/orca/1-CIS
scp /scratch/001_563/*.xyz $USER@mgt01:/apps/users/wangru/QM/homework/exam/1-task/orca/1-CIS
scp /scratch/001_563/*.trj $USER@mgt01:/apps/users/wangru/QM/homework/exam/1-task/orca/1-CIS
