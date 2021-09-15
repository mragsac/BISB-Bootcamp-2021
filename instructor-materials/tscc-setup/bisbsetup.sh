#!/bin/bash
#PBS -l nodes=1:ppn=1
#PBS -l walltime=10:00:00
#PBS -N bisbsetup
#PBS -o bisbsetup.out
#PBS -e bisbsetup.error
#PBS -M your_email@ucsd.edu

# install miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh
bash ~/miniconda.sh -b -p $HOME/miniconda
$HOME/miniconda/bin/conda init
source ~/.bashrc

# install all environments
conda env create -f module4.yml 
conda env create -f module6.yml 
