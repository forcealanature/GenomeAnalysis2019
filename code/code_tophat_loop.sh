#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 10:00:00
#SBATCH -J tophat_scaf6paperv_yj
#SBATCH --mail-type=ALL
#SBATCH --mail-user yjondelius@gmail.com

#Load modules
module load bioinfo-tools
module load samtools
module load bowtie2
module load tophat

#My commands
for file in /home/ylvjon/genomeanalysis/RNAdata/trimmed2/*_06.1.fasta.gz
do
  file2="$(sed 's/_06\.1/_06.2/' <<<$file)"
  output=$(basename $file)
  tophat -o /home/ylvjon/genomeanalysis/analysis/tophat_scaf6_outfiles/tophat_out_${output%.fastq.gz} \
  -p 4 home/ylvjon/genomeanalysis/analysis/genome_index_base/bowtie2onpilon $file $file2
done
