# In this dir, we are going to do the Assignment Week6-5
 1. Assignment link: https://github.com/YutingWuTia/comp-lab-class/blob/main/Week6/Assignment.md
 2. Assignment Week6-5:
 Do Lugano tutorial exercise 3:  https://www.plumed.org/doc-master/user-doc/html/lugano-3.html

 3. a well-tempered metadynamics run on any meta state, here we do it on meta state A
 __dialaA.pdb__, __topolA.tpr__ are both copied from ../

# Modify the parameters in plumed.dat in every dir
changing biasfactors in plumed.dat, and $ mkdir StrideHills
$ sbatch metadynamic.sbatch
