#!/bin/bash
#SBATCH --partition=main       
#SBATCH --requeue           
#SBATCH --job-name=zipx001a    
#SBATCH --nodes=1             
#SBATCH --ntasks=1            
#SBATCH --cpus-per-task=1       
#SBATCH --mem=2000       
#SBATCH --time=02:00:00  
#SBATCH --output=slurm.%N.%j.out
#SBATCH --error=slurm.%N.%j.err
cd /scratch/mk2364
module purge
module load lammps/16Mar18-intel-gc563
srun lmp_mpi -in in.micelle-rigid.lmp
