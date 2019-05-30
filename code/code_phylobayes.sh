#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 8
#SBATCH -t 36:00:00
#SBATCH -J phylobase_xtraallt_scaf6paperv_yj
#SBATCH --mail-type=ALL
#SBATCH --mail-user yjondelius@gmail.com

module load bioinfo-tools
module load phylobayes

#My commands

#Model CAT-GTR
#export Concatenated_paperV_data=/home/ylvjon/genomeanalysis/phylo/49genes_concatenated_RNA.nexus

#pb -d /home/ylvjon/genomeanalysis/phylo/49genes_concatenated_RNA.nexus \
  # -x 1 20\

#export Concatenated_paperV_data=/home/ylvjon/genomeanalysis/phylo/49genes_concatenated_RNA.nexus

pb -d /home/ylvjon/genomeanalysis/phylo/49genes.phylip -cat -gtr 49genes4 \
   #-t ${Concatenated_paperV_data}/49genes.tre \
   -readpb -x 1000 10 49genes4 \
   -bpcomp -x 1000 10 49genes4 \
   -tracecomp -x 1000 49genes4
