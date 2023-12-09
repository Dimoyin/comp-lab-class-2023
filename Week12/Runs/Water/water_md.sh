#!/bin/bash

#SBATCH --nodes=1
#SBATCH --ntasks-per-node=12
#SBATCH --cpus-per-task=1
#SBATCH --time=6:00:00
#SBATCH --mem=20GB
#SBATCH --job-name=water_md


module purge
module load cp2k/openmpi/intel/20201212
mpirun -np 12 cp2k.popt -i water.inp -o water_aimd_1ps_0.5fs.log