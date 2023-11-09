#!/bin/bash
#SBATCH --job-name=metadynamics
#SBATCH --nodes=1
#SBATCH --tasks-per-node=1
#SBATCH --mem=20GB
#SBATCH --time=10:00:00

source /scratch/work/courses/CHEM-GA-2671-2022fa/software/lammps-gcc-30Oct2022/setup_lammps.bash

cd /home/ly2571/comp-lab-class-2023/Week8/Inputs/Part1.2/

densities_ranges=(0.5 0.6 0.7 0.8 0.9 1.0 1.1)
 

for i in ${densities_ranges[@]};
do 
    mpirun -np 1 lmp -var density ${i} -in /home/ly2571/comp-lab-class-2023/Week8/Inputs/2dWCA.in -log density${i}_LOGFILE.log

done


