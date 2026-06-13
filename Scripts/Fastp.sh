#!/bin/bash
#trimming and filtering

#for single end read
fastp -i file.fastq.gz -o file_trimmed.fastq.gz -h fastp_report.html -j fastp_report.json

#for paired end reads 
fastp -i file_R1.fastq.gz -I file_R2.fastq.gz -o file_R1_trimmed.fastq.gz -O file_R2_trimmed.fastq.gz -h fastp_report.html -j fastp_report.json
