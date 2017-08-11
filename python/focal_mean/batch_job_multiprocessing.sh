#!/bin/bash -l
#SBATCH -J python_focal
#SBATCH -o out.txt
#SBATCH -e err.txt
#SBATCH -t 00:00:20
#SBATCH --cpus-per-task=11
#SBATCH --mem-per-cpu=2
#SBATCH -p test

python multiprocessing_focal_mean.py FILENAME
