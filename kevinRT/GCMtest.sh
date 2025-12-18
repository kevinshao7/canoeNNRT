#!/bin/bash
#SBATCH --job-name=GCM_uranus
#SBATCH --mail-type=BEGIN,END
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=6
#SBATCH --mem-per-cpu=1000m 
#SBATCH --time=2-12:30:00
#SBATCH --account=chengcli1 
#SBATCH --partition=standard
#SBATCH --output=GCM_12_16.log
module load openmpi
mpiexec -n 96 uranusnn.release -i uranusnn.inp
