#!/bin/bash
#trimming and filtering

#for single end read
mkdir Fastp && fastp -i file.fastq.gz -o Fastp/file_trimmed.fastq.gz -h Fastp/fastp_report.html -j Fastp/fastp_report.json ; mkdir FastQc_After && fastqc file_trimmed.fastq.gz -o FastQc_After

#for paired end reads 
mkdir Fastp && fastp -i file_R1.fastq.gz -I file_R2.fastq.gz -o Fastp/file_R1_trimmed.fastq.gz -O Fastp/file_R2_trimmed.fastq.gz -h Fastp/fastp_report.html -j Fastp/fastp_report.json ; mkdir FastQc_After && fastqc file_R1_trimmed.fastq.gz file_R2_trimmed.fastq.gz -o FastQc_After -t 2
