#!/bin/bash
#SBATCH --job-name=orthofinder
#SBATCH --partition=defq
#SBATCH --nodes=8
#SBATCH --ntasks-per-node=1
#SBATCH --mem=50g
#SBATCH --time=48:00:00
#SBATCH --output=/gpfs01/home/alymh12/orthofinderA/OandE/%x.out
#SBATCH --error=/gpfs01/home/alymh12/orthofinderA/OandE/%x.err

# These steps are required to activate Conda
source $HOME/.bash_profile
conda activate /gpfs01/home/alymh12/miniconda3/envs/ortho 

# Run orthofinder
orthofinder -t 8 -f /gpfs01/home/alymh12/orthofinderA -S blast
orthofinder -t 8 -f /gpfs01/home/alymh12/orthofinderA