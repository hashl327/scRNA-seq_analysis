#!/bin/bash
#SBATCH --job-name=bcftools	# can be changed
#SBATCH --output=slurm-%j.out	# direct output to this file -- MODIFY WITH CAUTION
#SBATCH --error=slurm-%j.err	# separate error logs from output logs -- MODIFY WITH CAUTION
#SBATCH --ntasks=10		# maximum number of tasks
#SBATCH --nodes=1		# run all processes on a single node

# Balb
bcftools mpileup -f /data/projects/ashley.hahn/reference_genomes/refdata-gex-mm10-2020-A/fasta/genome.fa /data/projects/stella.hoft/scRNAseq/Old_TxA23/BalbD-4_S2/BalbD-4_S2_out/outs/possorted_genome_bam.bam | bcftools call -mv -Ob -o /data/projects/ashley.hahn/bcftools_outs/BalbD-4_S2-variant_calls.bcf 

# 3-month
bcftools mpileup -f /data/projects/ashley.hahn/reference_genomes/refdata-gex-mm10-2020-A/fasta/genome.fa /data/projects/stella.hoft/scRNAseq/Old_TxA23/3D-7_S4/3D-7_S4_out/outs/possorted_genome_bam.bam | bcftools call -mv -Ob -o /data/projects/ashley.hahn/bcftools_outs/3D-7_S4-variant_calls.bcf

# 10-month
bcftools mpileup -f /data/projects/ashley.hahn/reference_genomes/refdata-gex-mm10-2020-A/fasta/genome.fa /data/projects/stella.hoft/scRNAseq/Old_TxA23/10D-6_S5/10D-6_S5_out/outs/possorted_genome_bam.bam | bcftools call -mv -Ob -o /data/projects/ashley.hahn/bcftools_outs/10D-6_S5-variant_calls.bcf

# 16-month
bcftools mpileup -f /data/projects/ashley.hahn/reference_genomes/refdata-gex-mm10-2020-A/fasta/genome.fa /data/projects/stella.hoft/scRNAseq/Old_TxA23/16D-5_S1/16D-5_S1_out/outs/possorted_genome_bam.bam | bcftools call -mv -Ob -o /data/projects/ashley.hahn/bcftools_outs/16D-5_S1-variant_calls.bcf

exit 0
