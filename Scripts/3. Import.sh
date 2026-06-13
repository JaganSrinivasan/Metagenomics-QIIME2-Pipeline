#!/bin/bash
#Confirm current working directory
# Step 1: Import raw data using a manifest file
qiime tools import \
  --type 'SampleData[PairedEndSequencesWithQuality]' \
  --input-path manifest.tsv \
  --output-path demux.qza \
  --input-format PairedEndFastqManifestPhred33V2

#for single reads (changes in the above code)
#--type[SequenceWithQuality]
#--input-format SingleEndFastqManifestPhred33V2
