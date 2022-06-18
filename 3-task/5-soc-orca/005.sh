#!/bin/bash
#BSUB -J intel
#BSUB -o 005.out
#BSUB -n 8
#BSUB -q cqueue

export LD_LIBRARY_PATH=/apps/software/openmpi-4.1.1/lib:/apps/software/orca_5_0_0:$LD_LIBRARY_PATH
export PATH=/apps/software/openmpi-4.1.1/bin:/apps/software/orca_5_0_0:$PATH

mkdir /scratch/005_159
scp $USER@mgt01:/apps/users/wangru/QM/homework/exam/3-task/5-soc-orca/005.inp /scratch/005_159
scp $USER@mgt01:/apps/users/wangru/QM/homework/exam/3-task/5-soc-orca/opt.xyz /scratch/005_159
/apps/software/orca_5_0_0/orca /scratch/005_159/005.inp >& 005.out
scp /scratch/005_159/*.gbw $USER@mgt01:/apps/users/wangru/QM/homework/exam/3-task/5-soc-orca
scp /scratch/005_159/*.xyz $USER@mgt01:/apps/users/wangru/QM/homework/exam/3-task/5-soc-orca
scp /scratch/005_159/*.trj $USER@mgt01:/apps/users/wangru/QM/homework/exam/3-task/5-soc-orca
