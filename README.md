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
2. Create and activate the QIIME2 Conda environment:
   Follow official QIIME2 docs for your specific OS installation

---

## 🏃‍♂️ How to Run

**Step 1: **Quality assessment of the Raw reads By fastQC

Step 2:
   Trimming and Filtering (Fastp/Trimmomatic)

Step 3:
   Importing a .fastq.gz file into QIIME2 Artifact (.qza)

Step 4:
   Demultiplex (Only if your data is multiplexed)

Step 5:
   Quality filter and generate Amplicon Sequence Variants (ASVs) using DADA2

Step 6:
   Taxonomy Identification by using Classifiers

Step 7:
   Phylogenic tree construction

Step 8:
   Core diversity Analysis (Alpha and Bete diversity)

   ---

## 📊 Outputs & Visualizations
Key outputs generated:

taxa-bar-plot.qzv - Taxonomy bar plot.

shannon_vector.qzv - Alpha diversity metrics (Shannon Index).

unweighted_unifrac_emperor.qzv - Interactive 3D Beta diversity PCoA plots.

💡 Tip: Drag and drop any .qzv files into view.qiime2.org to view the interactive charts.

---

## 📜 License
This project is licensed under the MIT License - see the LICENSE file for details.
