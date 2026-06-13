#!/bin/bash
set -e
#Denoise with DADA2 (Adjust trunc-len parameters based on your quality plots)
qiime dada2 denoise-paired \
  --i-demultiplexed-seqs demux.qza \
  --p-trim-left-f 0 \
  --p-trim-left-r 0 \
  --p-trunc-len-f 240 \
  --p-trunc-len-r 200 \
  --o-table table.qza \
  --o-representative-sequences rep-seqs.qza \
  --o-denoising-stats denoising-stats.qza && \
  \
  #for visualizing table.qza, rep-seq.qza and denoising-stats.qza
  qiime demux summarize \
  --i-data demux.qza\
  --o-visualization demux-summary.qzv && \
  \
  qiime feature-table summarize \
  --i-table table.qza\
  --o-visualization table.qzv && \
  \
  qiime feature-table tabulate-seqs \
  --i-data rep-seqs.qza \
  --o-visualization rep-seqs.qzv && \
  \
  qiime metadata tabulate \
  --i-input-file denoising-stats.qza \
  --o-visualization denoising-stats.qzv
  
