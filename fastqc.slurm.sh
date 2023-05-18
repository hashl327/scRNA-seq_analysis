#!/bin/bash
#SBATCH --job-name=fastqc	# can be changed
#SBATCH --output=fastqc-%j.out	# direct output to this file -- MODIFY WITH CAUTION
#SBATCH --error=fastqc-%j.err	# separate error logs from output logs -- MODIFY WITH CAUTION
#SBATCH --ntasks=10		# maximum number of tasks
#SBATCH --nodes=1		# run all processes on a single node


export PATH=/data/projects/ashley.hahn/bin/FastQC:$PATH

# BALB
fastqc /data/projects/stella.hoft/scRNAseq/Old_TxA23/BalbD-4_S2/M_IG-BalbD-4_S2_L004_R1_001.fastq.gz
fastqc /data/projects/stella.hoft/scRNAseq/Old_TxA23/BalbD-4_S2/M_IG-BalbD-4_S2_L004_R2_001.fastq.gz 

# 3-MONTH TXA23
fastqc /data/projects/stella.hoft/scRNAseq/Old_TxA23/3D-7_S4/M_IG-3D-7_S4_L004_R1_001.fastq.gz 
fastqc /data/projects/stella.hoft/scRNAseq/Old_TxA23/3D-7_S4/M_IG-3D-7_S4_L004_R2_001.fastq.gz 

# 10-MONTH TXA23
fastqc /data/projects/stella.hoft/scRNAseq/Old_TxA23/10D-6_S5/M_IG-10D-6_S5_L004_R1_001.fastq.gz 
fastqc /data/projects/stella.hoft/scRNAseq/Old_TxA23/10D-6_S5/M_IG-10D-6_S5_L004_R2_001.fastq.gz 

# 16-MONTH TXA23
fastqc /data/projects/stella.hoft/scRNAseq/Old_TxA23/16D-5_S1/M_IG-16D-5_S1_L004_R1_001.fastq.gz 
fastqc /data/projects/stella.hoft/scRNAseq/Old_TxA23/16D-5_S1/M_IG-16D-5_S1_L004_R2_001.fastq.gz 


exit 0
