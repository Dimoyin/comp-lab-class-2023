#!/bin/bash
#SBATCH --job-name=metadynamics
#SBATCH --nodes=1
#SBATCH --tasks-per-node=1
#SBATCH --mem=80GB
#SBATCH --time=2:00:00
source /scratch/work/courses/CHEM-GA-2671-2022fa/software/gromacs-2019.6-plumedSept2020/bin/GMXRC.bash.modules

plumed sum_hills --hills adp_stateA_biasfactor10_pace500_height1.2_sigma0.55_2D_10ns.hills.txt --outfile adp_stateA_biasfactor10_pace500_height1.2_sigma0.55_1.05_2D_10ns.fes.dat
plumed sum_hills --hills adp_stateA_biasfactor10_pace500_height1.2_sigma0.55_2D_10ns.hills.txt --stride 100 --mintozero --outfile StrideHills/adp_stateA_biasfactor10_pace500_height1.2_sigma0.55_2D_10ns.fes.dat
