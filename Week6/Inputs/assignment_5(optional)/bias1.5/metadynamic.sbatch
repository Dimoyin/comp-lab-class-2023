#!/bin/bash
#SBATCH --job-name=metadynamics
#SBATCH --nodes=1
#SBATCH --tasks-per-node=1
#SBATCH --mem=80GB
#SBATCH --time=2:00:00
source /scratch/work/courses/CHEM-GA-2671-2022fa/software/gromacs-2019.6-plumedSept2020/bin/GMXRC.bash.modules
mpirun -np 1 gmx_mpi mdrun -s topolA.tpr -nsteps 5000000 -plumed plumed.dat
plumed sum_hills --hills adp_stateA_biasfactor1.5_pace500_height1.2_sigma0.55_10ns.hills.txt --outfile adp_stateA_biasfactor1.5_pace500_height1.2_sigma0.55_10ns.fes.dat
plumed sum_hills --hills adp_stateA_biasfactor1.5_pace500_height1.2_sigma0.55_10ns.txt --stride 100 --mintozero --outfile StrideHills/adp_stateA_biasfactor1.5_pace500_height1.2_sigma0.55_10ns.fes.dat
