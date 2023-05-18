#!/bin/bash
#SBATCH -J CRCount		# Can be changed
#SBATCH -o CRCount-%j.out	# MODIFY WITH CAUTION
#SBATCH -e CRCount-%j.err	# MODIFY WITH CAUTION
#SBATCH -n 20

# Change the following for your particular experiment
SCRATCHDIR="/data/projects/michelle.pherson"
INPDIR="/data/projects/ashley.hahn/fastqs"
OUTDIR="/data/projects/ashley.hahn/cellranger_outs"
GENOME="GRCh38-2020-A"

# EDITS BELOW THIS LINE ONLY WITH CAUTION

ncores="20"
GENOMEDIR="/data/projects/ashley.hahn/reference_genomes"

source /data/projects/michelle.pherson/cellranger/cellranger-6.0.1/sourceme.bash

cellranger count --id=${OUTDIR} \
		 --transcriptome=${GENOMEDIR}/refdata-gex-${GENOME} \
		 --fastqs=${SCRATCHDIR}/${INPDIR} \
		 --localcores=${ncores} # DO NOT MODIFY

exit 0

