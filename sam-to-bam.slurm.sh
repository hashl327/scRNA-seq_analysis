#!/bin/bash
#SBATCH --job-name=sam-to-bam		# can be changed
#SBATCH --output=sam-to-bam_%j.out	# direct output to this file -- MODIFY WITH CAUTION
#SBATCH --error=vsam-to-bam_%j.err	# separate error logs from output logs -- MODIFY WITH CAUTION
#SBATCH --ntasks=10			# maximum number of tasks
#SBATCH --nodes=1			# run all processes on a single node


export PATH=/data/projects/ashley.hahn/bin/:$PATH

## convert bam files to sam for readability.

# Balb
samtools view -h -o /data/projects/ashley.hahn/samtools_outsBalb-possorted_genome.sam /data/projects/stella.hoft/scRNAseq/Old_TxA23/BalbD-4_S2/BalbD-4_S2_out/outs/possorted_genome_bam.bam

# 3-month TxA23
samtools view -h -o /data/projects/ashley.hahn/samtools_outs3-month-possorted_genome.sam /data/projects/stella.hoft/scRNAseq/Old_TxA23/3D-7_S4/3D-7_S4_out/outs/possorted_genome_bam.bam

# 10-month TxA23
samtools view -h -o /data/projects/ashley.hahn/samtools_outs10-month-possorted_genome.sam /data/projects/stella.hoft/scRNAseq/Old_TxA23/10D-6_S5/10D-6_S5_out/outs/possorted_genome_bam.bam

# 16-month TxA23
samtools view -h -o /data/projects/ashley.hahn/samtools_outs16-month-possorted_genome.sam /data/projects/stella.hoft/scRNAseq/Old_TxA23/16D-5_S1/16D-5_S1_out/outs/possorted_genome_bam.bam

exit 0
