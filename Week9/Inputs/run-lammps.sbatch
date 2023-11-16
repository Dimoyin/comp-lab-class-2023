#!/bin/bash

#SBATCH --job-name=create_and_anneal
#SBATCH --output=result.out
#SBATCH --error=error.err
#SBATCH --ntasks=8
#SBATCH --cpus-per-task=1
#SBATCH --time=01:00:00
#SBATCH --partition=your_partition_name


# Step 1: Create the system
mpirun -np 4 lmp -var configfile ../Inputs/n360/kalj_n360_create.lmp -var id 1 -in ../Inputs/create_3d_binary.lmp

# Following steps: Annealing the system
# Here you will add commands to progressively anneal the system at lower temperatures.
# For example:
# mpirun -np 4 lmp -var temp 300 -in annealing_script.lmp
# mpirun -np 4 lmp -var temp 250 -in annealing_script.lmp
# ...

# Ensure you have the necessary scripts and input files for the annealing steps.
