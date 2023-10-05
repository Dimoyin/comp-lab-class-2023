#!/bin/bash
#SBATCH --job-name=run-gromacs
#SBATCH --nodes=1
#SBATCH --tasks-per-node=48
#SBATCH --mem=8GB
#SBATCH --time=24:00:00

module purge
module load gromacs/openmpi/intel/2020.4
mpirun -np 1 gmx_mpi grompp -f nvt_equilibration.mdp -c energy_minim.gro -r energy_minim.gro -p topol.top -o nvt_equilibration.tpr
mpirun gmx_mpi mdrun -deffnm nvt_equilibration
mpirun -np 1 gmx_mpi grompp -f npt_equilibration.mdp -c nvt_equilibration.gro -r nvt_equilibration.gro -t nvt_equilibration.cpt -p topol.top -o npt_equilibration.tpr
mpirun gmx_mpi mdrun -deffnm npt_equilibration
mpirun -np 1 gmx_mpi grompp -f md_1ns.mdp -c npt_equilibration.gro -t npt_equilibration.cpt -p topol.top -o md_0_1.tpr
mpirun gmx_mpi mdrun -deffnm md_0_1
mpirun -np 1 gmx_mpi grompp -f md_50ns.mdp -c npt_equilibration.gro -t npt_equilibration.cpt -p topol.top -o md_0_50.tpr
mpirun gmx_mpi mdrun -deffnm md_0_50