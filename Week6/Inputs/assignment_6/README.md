# In this dir, we are going to do the Assignment Week6-6
 1. Assignment link: https://github.com/YutingWuTia/comp-lab-class/blob/main/Week6/Assignment.md
 
# set up
 $ srun --tasks-per-node=1 --time=4:00:00 --mem=4GB --pty /bin/bash
 $ source /scratch/work/courses/CHEM-GA-2671-2022fa/software/gromacs-2019.6-plumedSept2020/bin/GMXRC.bash.modules
__topolA.tpr__, __dialaA.pdb__ :copied from ../
__plumed.dat__: ref: ../assignment_3/__plumed.dat__ & assignment instruction

$ sbatch metadynamic.sbatch
the slurm.out file says we do not run the last 2 commands succefully
so we run:
$ mkdir StrideHills
$ sbatch sum_hills.sbatch



