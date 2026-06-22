#!/bin/bash
# Step 5: Assign taxonomy and generate visualization

echo "Running taxonomic classification..."
qiime feature-classifier classify-sklearn \
  --i-classifier classifier.qza \
  --i-reads rep-seqs.qza \
  --o-classification taxonomy.qza \
  --verbose
echo "Tabulating taxonomy metadata for visualization..." && \
qiime metadata tabulate \
  --m-input-file taxonomy.qza \
  --o-visualization taxonomy.qzv

echo "Taxonomy assignment complete!"
