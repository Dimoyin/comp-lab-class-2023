# In this dir, we are going to do the Assignment Week6-2
 1. Assignment link: https://github.com/YutingWuTia/comp-lab-class/blob/main/Week6/Assignment.md
 2. Assignment Week6-2:
 Do masterclass exercise 1: https://www.plumed.org/doc-master/user-doc/html/masterclass-21-4.html

# set up
 $ srun --tasks-per-node=1 --time=4:00:00 --mem=4GB --pty /bin/bash
 $ source /scratch/work/courses/CHEM-GA-2671-2022fa/software/gromacs-2019.6-plumedSept2020/bin/GMXRC.bash.modules
 
# First run the simulation
 1.In dir /A/:
  $ mpirun -np 1 gmx_mpi mdrun -v -s ../../topolA.tpr -nsteps 10000000
 2.In dir /B/:
  $ mpirun -np 1 gmx_mpi mdrun -v -s ../../topolB.tpr -nsteps 10000000

# Second run the command in both dir
$ plumed driver --plumed plumed.dat --mf_xtc traj_comp.xtc


