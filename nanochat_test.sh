#!/bin/bash
#SBATCH --job-name=nanochat_test
#SBATCH --output=./logs/log.%j.out
#SBATCH --error=./logs/log.%j.err
#SBATCH --time=01:30:00                
#SBATCH --nodes=1
#SBATCH --gpus=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1


conda deactivate
unset CONDA_PREFIX

# module load cudatoolkit PrgEnv-gnu nvhpc brics/nccl/2.26.6-1
# module load nvhpc-hpcx-cuda12/24.11 PrgEnv-gnu nvhpc brics/nccl/2.26.6-1

# export TORCH_COMPILE_DISABLE=1
# export TORCHINDUCTOR_DISABLE=1
# export TORCHDYNAMO_DISABLE=1

./speedrun_tiny.sh