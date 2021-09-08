# Module 4: Introduction to High-Performance Computing (HPC) using the Triton Shared Compute Cluster (TSCC)

**Instructor:** Michelle Franc Ragsac (mragsac@eng.ucsd.edu)

Due to recent technological advances, scientists have been able to collect large amounts of biological data. Within this module, we’ll cover how High Performance Computing (HPC) technologies make it possible to process biological “Big Data” through hands-on demos of UCSD’s own Triton Shared Compute Cluster (TSCC) for academic research.

This module is meant for all BISB Bootcamp attendees! Our materials will cover how to generate SSH keys and how to submit compute jobs on TSCC with the goal of completing a RNA-sequencing analysis. Within this module, we assume that you have a basic grasp on submitting text-based commands to a terminal emulator, as well as a basic understanding of molecular biology and next-generation sequencing. Finally, this module will be both lecture-based and interactive. 

* **Presentation Link:** https://docs.google.com/presentation/d/1F-B5SxrX-SXqAhoGzx7qYzTvB-NsE6eMy0a_i9TCh8E/edit?usp=sharing

## Module Learning Goals

1. Background on High Performance Computing (HPC)
    1. Motivations for using a compute cluster for biological data analysis
    2. Introduction to the Triton Shared Compute Cluster (TSCC) at UCSD
2. Practical Case Study: *RNA-Sequencing*
    1. Rationale for using RNA-sequencing experiments to study gene expression
    2. Roadmap of a standard RNA-sequencing analysis pipeline
3. Running through a RNA-Seq analysis pipeline on TSCC 
    1. Understanding FASTQ File Data Quality with fastqc
    2. Mapping Illumina short reads to the genome with STAR
    3. Sorting and Indexing aligned sequencing reads with samtools
    4. Generating a gene expression counts table with featureCounts
    5. Compiling Next-Generation Sequencing (NGS) file logs with multiqc
    6. *(If there’s time)* Differential analysis of gene expression with DESeq2

## Module Organization

```bash
. module4_introduction-to-hpc
├── 00_MR_Module4_Introduction-to-HPC-Presentation.pdf
├── README.md
├── data
│   ├── yeast.fasta
│   ├── yeast.gtf
│   ├── yeast_R1.fastq
│   └── yeast_R2.fastq
├── notebooks
│   └── 01_MR_Module4_Introduction-to-HPC_RNA-seq-Analysis-Notebook.ipynb
└── outputs
    ├── STAR_alignment_results/
    ├── STAR_yeast_reference/
    ├── fastqc_output/
    ├── final_counts_matrix.txt
    ├── final_counts_matrix.txt.summary
    └── multiqc_output/

7 directories, 9 files
```