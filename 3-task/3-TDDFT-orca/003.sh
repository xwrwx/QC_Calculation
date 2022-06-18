#!/bin/bash
#BSUB -J intel
#BSUB -o 003.out
#BSUB -n 8
#BSUB -q cqueue

export LD_LIBRARY_PATH=/apps/software/openmpi-4.1.1/lib:/apps/software/orca_5_0_0:$LD_LIBRARY_PATH
export PATH=/apps/software/openmpi-4.1.1/bin:/apps/software/orca_5_0_0:$PATH

mkdir /scratch/003_147
scp $USER@mgt01:/apps/users/wangru/QM/homework/exam/3-task/3-TDDFT-orca/003.inp /scratch/003_147
scp $USER@mgt01:/apps/users/wangru/QM/homework/exam/3-task/3-TDDFT-orca/opt.xyz /scratch/003_147
/apps/software/orca_5_0_0/orca /scratch/003_147/003.inp >& 003.out
scp /scratch/003_147/*.gbw $USER@mgt01:/apps/users/wangru/QM/homework/exam/3-task/3-TDDFT-orca
scp /scratch/003_147/*.xyz $USER@mgt01:/apps/users/wangru/QM/homework/exam/3-task/3-TDDFT-orca
scp /scratch/003_147/*.trj $USER@mgt01:/apps/users/wangru/QM/homework/exam/3-task/3-TDDFT-orca
