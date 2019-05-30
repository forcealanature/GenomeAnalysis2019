#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 00:50:00
#SBATCH -J pilon_improveassembly_scaf6paperv_yj
#SBATCH --mail-type=ALL
#SBATCH --mail-user yjondelius@gmail.com

#Load modules
module load bioinfo-tools
module load Pilon/1.22

#My commands
pilon --genome /home/ylvjon/genomeanalysis/pacbio/pacbio_results/pacbio_assembly_scaffold6_190423/pacbio_assembly_scaffold6_190423.contigs.fasta --bam /home/ylvjon/genomeanalysis/analysis/bwa_pacill_assembly_scaf6.sorted.bam --output pilon_improved_assembly_scaf6 --outdir /home/ylvjon/genomeanalysis/analysis --diploid --threads 4
