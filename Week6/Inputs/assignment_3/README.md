# In this dir, we are going to do the Assignment Week6-3&4
 1. Assignment link: https://github.com/YutingWuTia/comp-lab-class/blob/main/Week6/Assignment.md
 2. Assignment Week6-3:
 Do Lugano tutorial exercise 1&2:  https://www.plumed.org/doc-master/user-doc/html/lugano-3.html

 3. a well-tempered metadynamics run on any meta state, here we do it on meta state A
 __dialaA.pdb__, __topolA.tpr__ are both copied from ../

$ mpirun -np 1 gmx_mpi mdrun -v -s topol.tpr -nsteps 5000000 -plumed plumed.dat
 
$ plumed sum_hills --hills adp.hills.txt --outfile adp.fes.dat
$ mkdir StrideHills
$ plumed sum_hills --hills adp.hills.txt --stride 100 --mintozero --outfile StrideHills/adp.fes.dat

