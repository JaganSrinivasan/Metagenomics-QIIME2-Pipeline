#!/bin/bash
#Quality Assessment of Raw data

#for single reads
fastqc file.fastq.gz -o out_dir

#for paired reads
fastqc file_R1.fastq.gz file_R2.fastq.gz -o out_dir
