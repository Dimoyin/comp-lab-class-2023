#!/bin/bash
#
#SBATCH --job-name=week5
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --ntasks-per-node=3
#SBATCH --time=1:00:00
#SBATCH --mem=1GB
#SBATCH --output=parallel_tempering.out

module purge
module load gromacs/openmpi/intel/2018.3

for t in 300 363 440
do
    gmx_mpi grompp -f T${t}/adp.mdp -c T${t}/adp.gro -p T${t}/adp.top -o T${t}/adp.tpr
done

mpirun -np 3 gmx_mpi mdrun -s adp -multidir T300/ T363/ T440/ -deffnm adp_exchange3temps -replex 50
