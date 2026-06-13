# QIIME2 Microbial Diversity Pipeline

A step-by-step bioinformatics pipeline using **QIIME2** to analyze and characterize the diversity of microbial communities from marker gene marker sequencing data (e.g., 16S rRNA).

---

## 📌 Overview

This repository contains the scripts and workflows required to process raw sequencing reads into meaningful microbial diversity insights. The pipeline covers everything from quality control and demultiplexing to alpha and beta diversity analyses.

## 🚀 Features

* **Quality Control & Denoising:** Supports DADA2/Deblur for sequence variant (ASV) generation.
* **Taxonomic Classification:** Assigns taxonomy using pre-trained Naive Bayes classifiers.
* **Diversity Analysis:** Calculates Alpha diversity (richness, evenness) and Beta diversity (PCoA plots, UniFrac distances).
* **Visualization:** Generates interactive `.qzv` files viewable via QIIME2 View.

---

## 🛠️ Prerequisites & Installation

To run this pipeline, you need to have **QIIME2** installed. We recommend using a Conda environment.

1. Clone this repository:
   ```bash
   git clone https://github.com/JaganSrinivasan/Metagenomics-QIIME2-Pipeline.git
   cd Metagenomics-QIIME2-Pipeline
