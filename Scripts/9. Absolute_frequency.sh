#!/bin/bash

#---------- LEVEL 1 (Kingdom) ----------
qiime taxa collapse \
  --i-table table.qza \
  --i-taxonomy taxonomy.qza \
  --p-level 1 \
  --o-collapsed-table table_collapsed_absfreq_level1.qza
 
qiime tools export \
  --input-path table_collapsed_absfreq_level1.qza \
  --output-path absfreq/feature-table_absfreq_level1.biom
 
biom convert \
  -i absfreq/feature-table_absfreq_level1.biom/feature-table.biom \
  -o absfreq/feature-table_absfreq_level1.tsv \
  --to-tsv --table-type 'Taxon table'

#---------- LEVEL 2 (Phylum) ----------
qiime taxa collapse \
  --i-table table.qza \
  --i-taxonomy taxonomy.qza \
  --p-level 2 \
  --o-collapsed-table table_collapsed_absfreq_level2.qza
 
qiime tools export \
  --input-path table_collapsed_absfreq_level2.qza \
  --output-path absfreq/feature-table_absfreq_level2.biom
 
biom convert \
  -i absfreq/feature-table_absfreq_level2.biom/feature-table.biom \
  -o absfreq/feature-table_absfreq_level2.tsv \
  --to-tsv --table-type 'Taxon table'

#---------- LEVEL 3 (Class) ----------
qiime taxa collapse \
  --i-table table.qza \
  --i-taxonomy taxonomy.qza \
  --p-level 3 \
  --o-collapsed-table table_collapsed_absfreq_level3.qza
 
qiime tools export \
  --input-path table_collapsed_absfreq_level3.qza \
  --output-path absfreq/feature-table_absfreq_level3.biom
 
biom convert \
  -i absfreq/feature-table_absfreq_level3.biom/feature-table.biom \
  -o absfreq/feature-table_absfreq_level3.tsv \
  --to-tsv --table-type 'Taxon table'
 
#---------- LEVEL 4 (Order) ----------
qiime taxa collapse \
  --i-table table.qza \
  --i-taxonomy taxonomy.qza \
  --p-level 4 \
  --o-collapsed-table table_collapsed_absfreq_level4.qza
 
qiime tools export \
  --input-path table_collapsed_absfreq_level4.qza \
  --output-path absfreq/feature-table_absfreq_level4.biom
 
biom convert \
  -i absfreq/feature-table_absfreq_level4.biom/feature-table.biom \
  -o absfreq/feature-table_absfreq_level4.tsv \
  --to-tsv --table-type 'Taxon table'
 
#---------- LEVEL 5 (Family) ----------
qiime taxa collapse \
  --i-table table.qza \
  --i-taxonomy taxonomy.qza \
  --p-level 5 \
  --o-collapsed-table table_collapsed_absfreq_level5.qza
 
qiime tools export \
  --input-path table_collapsed_absfreq_level5.qza \
  --output-path absfreq/feature-table_absfreq_level5.biom
 
biom convert \
  -i absfreq/feature-table_absfreq_level5.biom/feature-table.biom \
  -o absfreq/feature-table_absfreq_level5.tsv \
  --to-tsv --table-type 'Taxon table'
 
#---------- LEVEL 6 (Genus) ----------
qiime taxa collapse \
  --i-table table.qza \
  --i-taxonomy taxonomy.qza \
  --p-level 6 \
  --o-collapsed-table table_collapsed_absfreq_level6.qza
 
qiime tools export \
  --input-path table_collapsed_absfreq_level6.qza \
  --output-path absfreq/feature-table_absfreq_level6.biom
 
biom convert \
  -i absfreq/feature-table_absfreq_level6.biom/feature-table.biom \
  -o absfreq/feature-table_absfreq_level6.tsv \
  --to-tsv --table-type 'Taxon table'
 
#---------- LEVEL 7 (Species) ----------
qiime taxa collapse \
  --i-table table.qza \
  --i-taxonomy taxonomy.qza \
  --p-level 7 \
  --o-collapsed-table table_collapsed_absfreq_level7.qza
 
qiime tools export \
  --input-path table_collapsed_absfreq_level7.qza \
  --output-path absfreq/feature-table_absfreq_level7.biom
 
biom convert \
  -i absfreq/feature-table_absfreq_level7.biom/feature-table.biom \
  -o absfreq/feature-table_absfreq_level7.tsv \
  --to-tsv --table-type 'Taxon table'
