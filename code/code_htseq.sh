#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 10:00:00
#SBATCH -J htseq_scaf6paperv_yj
#SBATCH --mail-type=ALL
#SBATCH --mail-user yjondelius@gmail.com

module load bioinfo-tools
module load samtools/1.9
module load htseq/0.9.1

htseq-count -f bam -r pos -t gene -i ID -s no \
/home/ylvjon/genomeanalysis/analysis/differential_expressions/tophat_scaf6_92_leaf.bam \
/home/ylvjon/genomeanalysis/analysis/differential_expressions/tophat_scaf6_93_root.bam \
/home/ylvjon/genomeanalysis/analysis/differential_expressions/tophat_scaf6_94_arild.bam \
/home/ylvjon/genomeanalysis/analysis/differential_expressions/tophat_scaf6_96_stem.bam \
/home/ylvjon/genomeanalysis/analysis/maker_output_try2/COPY_pilon_improved_assembly_scaf6.maker.output/pilon_improved_assembly_scaf6.gff3 \
> /home/ylvjon/genomeanalysis/analysis/differential_expressions/htseq_92939496_counts.out
