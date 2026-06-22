#!/bin/bash

set -e

qiime diversity alpha-rarefaction \
  --i-table table.qza \
  --i-phylogeny rooted-tree.qza \
  --p-max-depth 10000 \
  --m-metadata-file metadata.tsv \
  --o-visualization alpha-rarefaction.qzv
