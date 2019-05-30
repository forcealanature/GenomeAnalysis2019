#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 10:00:00
#SBATCH -J iqtree_scaf6paperv_yj
#SBATCH --mail-type=ALL
#SBATCH --mail-user yjondelius@gmail.com

#Load modules
module load bioinfo-tools
module load iqtree/1.5.4-omp-mp

#My commands

cd /home/ylvjon/genomeanalysis/phylo/

iqtree -s /home/ylvjon/genomeanalysis/phylo/Durian_GL_49_Concatenated_fasta.fasta -spp /home/ylvjon/genomeanalysis/phylo/partitionfile_for_concat_OFF.nex -m MFP+MERGE -bb 1000

#######NOTE: This is an IQtree bash script for running one tree for the concatenated sequences, it looks all the same for the individual genetrees (same lines copied with a different in path)
#######I did run IQtree on uppmax for the concatenated stuff and for some indivdual genes but mostly I used the web-based services:
####### URL : http://iqtree.cibiv.univie.ac.at
