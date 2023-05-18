#!/bin/bash
#SBATCH --job-name=vartrix	# can be changed
#SBATCH --output=vartrix-%j.out	# direct output to this file -- MODIFY WITH CAUTION
#SBATCH --error=vartrix-%j.err	# separate error logs from output logs -- MODIFY WITH CAUTION
#SBATCH --ntasks=10		# maximum number of tasks
#SBATCH --nodes=1		# run all processes on a single node

# ./vartrix -v <path_to_input_vcf> \
#	  -b <path_to_cellranger_bam> \
#	  -f <path_to_fasta_file> \
#	  -c <path_to_cell_barcodes_file> \
#	  -o <path_for_output_matrix>

export PATH=$PATH:/data/projects/ashley.hahn/scripts/vartrix-1.1.22/target/release/vartrix

# BALB
vartrix -v /data/projects/ashley.hahn/bcftools_outs/BalbD-4_S2-variant_calls.vcf -b /data/projects/stella.hoft/scRNAseq/Old_TxA23/BalbD-4_S2/BalbD-4_S2_out/outs/possorted_genome_bam.bam -f /data/projects/ashley.hahn/reference_genomes/refdata-gex-mm10-2020-A/fasta/genome.fa -c /data/projects/stella.hoft/scRNAseq/Old_TxA23/BalbD-4_S2/BalbD-4_S2_out/outs/filtered_feature_bc_matrix/barcodes.tsv -o /data/projects/ashley.hahn/VarTrix_outs

# 3-MONTH TXA23
vartrix -v /data/projects/ashley.hahn/bcftools_outs/3D-7_S4-variant_calls.vcf -b /data/projects/stella.hoft/scRNAseq/Old_TxA23/3D-7_S4/3D-7_S4_out/outs/possorted_genome_bam.bam -f /data/projects/ashley.hahn/reference_genomes/refdata-gex-mm10-2020-A/fasta/genome.fa -c /data/projects/stella.hoft/scRNAseq/Old_TxA23/3D-7_S4/3D-7_S4_out/outs/filtered_feature_bc_matrix/barcodes.tsv -o /data/projects/ashley.hahn/VarTrix_outs

# 10-MONTH TXA23
vartrix -v /data/projects/ashley.hahn/bcftools_outs/10D-6_S5-variant_calls.vcf -b /data/projects/stella.hoft/scRNAseq/Old_TxA23/10D-6_S5/10D-6_S5_out/outs/possorted_genome_bam.bam -f /data/projects/ashley.hahn/reference_genomes/refdata-gex-mm10-2020-A/fasta/genome.fa -c /data/projects/stella.hoft/scRNAseq/Old_TxA23/10D-6_S5/10D-6_S5_out/outs/filtered_feature_bc_matrix/barcodes.tsv -o /data/projects/ashley.hahn/VarTrix_outs

# 16-MONTH TXA23
vartrix -v /data/projects/ashley.hahn/bcftools_outs/16D-5_S1-variant_calls.vcf -b /data/projects/stella.hoft/scRNAseq/Old_TxA23/16D-5_S1/16D-5_S1_out/outs/possorted_genome_bam.bam -f /data/projects/ashley.hahn/reference_genomes/refdata-gex-mm10-2020-A/fasta/genome.fa -c /data/projects/stella.hoft/scRNAseq/Old_TxA23/16D-5_S1/16D-5_S1_out/outs/filtered_feature_bc_matrix/barcodes.tsv -o /data/projects/ashley.hahn/VarTrix_outs


exit 0
