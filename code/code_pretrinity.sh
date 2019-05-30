#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 2:00:00
#SBATCH -J pretrinity_sorting_scaf6paperv_yj
#SBATCH --mail-type=ALL
#SBATCH --mail-user yjondelius@gmail.com

#Load modules
module load bioinfo-tools
module load samtools

samtools merge /home/ylvjon/genomeanalysis/analysis/tophat_acceptedhits/tophat_merged_4tissues.bam \
/home/ylvjon/genomeanalysis/analysis/tophat_outfiles/transass_6S92/accepted_hits.bam \
/home/ylvjon/genomeanalysis/analysis/tophat_outfiles/transass_6S93/accepted_hits.bam \
/home/ylvjon/genomeanalysis/analysis/tophat_outfiles/transass_6S94/accepted_hits.bam \
/home/ylvjon/genomeanalysis/analysis/tophat_outfiles/transass_6S96/accepted_hits.bam \

samtools sort /home/ylvjon/genomeanalysis/analysis/tophat_acceptedhits/tophat_merged_4tissues.bam -o /home/ylvjon/genomeanalysis/analysis/tophat_sorted/tophat_4tissues_sorted.bam
