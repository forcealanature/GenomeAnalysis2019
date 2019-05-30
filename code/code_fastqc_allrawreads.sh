#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:55:00
#SBATCH -J fastqc_qualityassesment_scaf6paperv_yj
#SBATCH --mail-type=ALL
#SBATCH --mail-user yjondelius@gmail.com

# Load modules
module load bioinfo-tools
module load FastQC/0.11.5

# My commands

for filename in /home/ylvjon/genomeanalysis/raw_data/RNAdata/trimmed/*.fastq.gz
    do
        fastqc $filename -o /home/ylvjon/genomeanalysis/analysis/fastqc_results/;
    done

for filename in /home/ylvjon/genomeanalysis/raw_data/RNAdata/RNA_scaffold*.fastq.gz
    do
        fastqc $filename -o /home/ylvjon/genomeanalysis/analysis/fastqc_results/;
    done

for filename in /home/ylvjon/genomeanalysis/raw_data/illumina/*.fastq.gz
    do
        fastqc $filename -o /home/ylvjon/genomeanalysis/analysis/fastqc_results/;
    done

for filename in /home/ylvjon/genomeanalysis/raw_data/pacbio/pacbio_scaffold6_rawdata.fq.gz
    do
        fastqc $filename -o /home/ylvjon/genomeanalysis/analysis/fastqc_results/;
    done
