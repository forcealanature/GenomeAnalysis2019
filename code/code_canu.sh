#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 20:00:00
#SBATCH -J assembly_pacbireads_scaf6paperv_yj
#SBATCH --mail-type=ALL
#SBATCH --mail-user yjondelius@gmail.com

#Load modules
module load bioinfo-tools
module load canu/1.7

#My commands
canu -p pacbio_assembly_scaffold6_190423 -d /home/ylvjon/genomeanalysis/pacbio/pacbio_results/pacbio_assembly_scaffold6_190423 genomeSize=30M -pacbio-raw /home/ylvjon/genomeanalysis/pacbio/pacbio_scaffold6_rawdata.fq.gz
