#!/bin/bash
#SBATCH --job-name=ST_23      # job name (shows up in the queue)
#SBATCH --account=uoa00424     # Project Account
#SBATCH --time=1:30:00         # Walltime (HH:MM:SS)
#SBATCH --mem=6G     # memory/cpu (in MB)
#SBATCH --cpus-per-task=1       # number of cores per task (e.g. OpenMP)
#SBATCH --partition=large        # specify a partition
#SBATCH --hint=nomultithread    # don't use hyperthreading  -Xmx2g
#SBATCH --mail-type=END
#SBATCH --mail-user=hjin317@aucklanduni.ac.nz
#SBATCH --output=ST_%A_%a.out # Include the job ID in the names of
#SBATCH --array=21-24,31-34  # Array definition [1:5, exp code]  201-216,301-316,401-408,501-508  21-24,31-34,41-42,51-52

module load MATLAB/2017b

matlab -nodisplay -r ST_MeanAmp_BinERP_exGau
