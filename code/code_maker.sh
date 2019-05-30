#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 6
#SBATCH -t 20:00:00
#SBATCH -J maker1_paperV_yj
#SBATCH --mail-type=ALL
#SBATCH --mail-user yjondelius@gmail.com

# Load modules
module load bioinfo-tools
module load maker/3.01.1-beta

########## My commands #######################

#Round 1 to generate maker controlfiles. Commands commented out as they were not used in round 2.  

#cd /home/ylvjon/genomeanalysis/analysis/maker_output_try2
#maker -CTL

#Round 2 to generate the first set of annotations

cd /home/ylvjon/genomeanalysis/analysis/maker_output_try2

maker
