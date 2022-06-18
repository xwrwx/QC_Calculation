#!/bin/bash
#BSUB -J intel
#BSUB -o 002.out
#BSUB -n 8
#BSUB -q cqueue

export LD_LIBRARY_PATH=/apps/software/openmpi-4.1.1/lib:/apps/software/orca_5_0_0:$LD_LIBRARY_PATH
export PATH=/apps/software/openmpi-4.1.1/bin:/apps/software/orca_5_0_0:$PATH

mkdir /scratch/002_393
scp $USER@mgt01:/apps/users/wangru/QM/homework/exam/1-task/orca/2-TDA/002.inp /scratch/002_393
scp $USER@mgt01:/apps/users/wangru/QM/homework/exam/1-task/orca/2-TDA/opt.xyz /scratch/002_393
/apps/software/orca_5_0_0/orca /scratch/002_393/002.inp >& 002.out
scp /scratch/002_393/*.gbw $USER@mgt01:/apps/users/wangru/QM/homework/exam/1-task/orca/2-TDA
scp /scratch/002_393/*.xyz $USER@mgt01:/apps/users/wangru/QM/homework/exam/1-task/orca/2-TDA
scp /scratch/002_393/*.trj $USER@mgt01:/apps/users/wangru/QM/homework/exam/1-task/orca/2-TDA
