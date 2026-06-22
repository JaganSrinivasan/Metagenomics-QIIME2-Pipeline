#!/bin/bash

set -e

#---------- LEVEL 1 (Kingdom) ----------
qiime feature-table relative-frequency \
  --i-table table_collapsed_absfreq_level1.qza \
  --o-relative-frequency-table table_collapsed_relfreq_level1.qza
 
qiime tools export \
  --input-path table_collapsed_relfreq_level1.qza \
  --output-path relfreq/feature-table_relfreq_level1.biom
 
biom convert \
  -i relfreq/feature-table_relfreq_level1.biom/feature-table.biom \
  -o relfreq/feature-table_relfreq_level1.tsv \
  --to-tsv --table-type 'Taxon table'

echo "level 1 completed."

#---------- LEVEL 2 (Phylum) ----------
qiime feature-table relative-frequency \
  --i-table table_collapsed_absfreq_level2.qza \
  --o-relative-frequency-table table_collapsed_relfreq_level2.qza
 
qiime tools export \
  --input-path table_collapsed_relfreq_level2.qza \
  --output-path relfreq/feature-table_relfreq_level2.biom
 
biom convert \
  -i relfreq/feature-table_relfreq_level2.biom/feature-table.biom \
  -o relfreq/feature-table_relfreq_level2.tsv \
  --to-tsv --table-type 'Taxon table'

echo "level 2 completed."

#---------- LEVEL 3 (Class) ----------
qiime feature-table relative-frequency \
  --i-table table_collapsed_absfreq_level3.qza \
  --o-relative-frequency-table table_collapsed_relfreq_level3.qza
 
qiime tools export \
  --input-path table_collapsed_relfreq_level3.qza \
  --output-path relfreq/feature-table_relfreq_level3.biom
 
biom convert \
  -i relfreq/feature-table_relfreq_level3.biom/feature-table.biom \
  -o relfreq/feature-table_relfreq_level3.tsv \
  --to-tsv --table-type 'Taxon table'

echo "level 3 completed."

#---------- LEVEL 4 (Order) ----------
qiime feature-table relative-frequency \
  --i-table table_collapsed_absfreq_level4.qza \
  --o-relative-frequency-table table_collapsed_relfreq_level4.qza
 
qiime tools export \
  --input-path table_collapsed_relfreq_level4.qza \
  --output-path relfreq/feature-table_relfreq_level4.biom
 
biom convert \
  -i relfreq/feature-table_relfreq_level4.biom/feature-table.biom \
  -o relfreq/feature-table_relfreq_level4.tsv \
  --to-tsv --table-type 'Taxon table'

echo "level 4 completed."

#---------- LEVEL 5 (Family) ----------
qiime feature-table relative-frequency \
  --i-table table_collapsed_absfreq_level5.qza \
  --o-relative-frequency-table table_collapsed_relfreq_level5.qza
 
qiime tools export \
  --input-path table_collapsed_relfreq_level5.qza \
  --output-path relfreq/feature-table_relfreq_level5.biom
 
biom convert \
  -i relfreq/feature-table_relfreq_level5.biom/feature-table.biom \
  -o relfreq/feature-table_relfreq_level5.tsv \
  --to-tsv --table-type 'Taxon table'

echo "level 5 completed."

#---------- LEVEL 6 (Genus) ----------
qiime feature-table relative-frequency \
  --i-table table_collapsed_absfreq_level6.qza \
  --o-relative-frequency-table table_collapsed_relfreq_level6.qza
 
qiime tools export \
  --input-path table_collapsed_relfreq_level6.qza \
  --output-path relfreq/feature-table_relfreq_level6.biom
 
biom convert \
  -i relfreq/feature-table_relfreq_level6.biom/feature-table.biom \
  -o relfreq/feature-table_relfreq_level6.tsv \
  --to-tsv --table-type 'Taxon table'

echo "level 6 completed."
 
#---------- LEVEL 7 (Species) ----------
qiime feature-table relative-frequency \
  --i-table table_collapsed_absfreq_level7.qza \
  --o-relative-frequency-table table_collapsed_relfreq_level7.qza
 
qiime tools export \
  --input-path table_collapsed_relfreq_level7.qza \
  --output-path relfreq/feature-table_relfreq_level7.biom
 
biom convert \
  -i relfreq/feature-table_relfreq_level7.biom/feature-table.biom \
  -o relfreq/feature-table_relfreq_level7.tsv \
  --to-tsv --table-type 'Taxon table'

echo "level 7 completed."
