#!/bin/bash
#BSUB -J intel
#BSUB -o 003.out
#BSUB -n 8
#BSUB -q cqueue

export LD_LIBRARY_PATH=/apps/software/openmpi-4.1.1/lib:/apps/software/orca_5_0_0:$LD_LIBRARY_PATH
export PATH=/apps/software/openmpi-4.1.1/bin:/apps/software/orca_5_0_0:$PATH

mkdir /scratch/003_527
scp $USER@mgt01:/apps/users/wangru/QM/homework/exam/1-task/orca/3-TDDFT/003.inp /scratch/003_527
scp $USER@mgt01:/apps/users/wangru/QM/homework/exam/1-task/orca/3-TDDFT/opt.xyz /scratch/003_527
/apps/software/orca_5_0_0/orca /scratch/003_527/003.inp >& 003.out
scp /scratch/003_527/*.gbw $USER@mgt01:/apps/users/wangru/QM/homework/exam/1-task/orca/3-TDDFT
scp /scratch/003_527/*.xyz $USER@mgt01:/apps/users/wangru/QM/homework/exam/1-task/orca/3-TDDFT
scp /scratch/003_527/*.trj $USER@mgt01:/apps/users/wangru/QM/homework/exam/1-task/orca/3-TDDFT
