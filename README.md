# Circos Plot for Gene Fusion Visualization

### This repository provides a complete guide to generating Circos plots for genomic data.

## Overview

A Circos plot arranges the genome in a circular layout and displays connections, patterns, and structural relationships between different genomic regions.
Its strength lies in visualizing large-scale genome architecture, especially events that are difficult to interpret in linear genomic plots.
By placing chromosomes around a circle, Circos allows researchers to view interactions, rearrangements, and multi-layered genomic information within a single integrated figure.
This makes it particularly helpful when exploring genome organization, complex rearrangements, and inter-chromosomal interactions.

## Dataset Requirements
To create a Circos plot for gene fusions, you need a CSV file containing genomic breakpoints.
Each row represents one fusion event and should have:
- chr1 – Chromosome of the first breakpoint
- start1, end1 – Genomic interval of breakpoint 1
- chr2 – Chromosome of the second breakpoint
- start2, end2 – Genomic interval of breakpoint 2

## Step-by-Step Tutorial
1. Install Required Packages

   Install the packages circlize, tidyverse, ggplot2, RColorBrewer/viridis, and GenomicRanges, as these are needed for reading your data, managing genomic coordinates, and generating the Circos plot.
2. Import Your Fusion Data

   Load the CSV file containing details of all fusion breakpoints.
   Each row tells the software where one gene starts and where the fused partner is located in the genome.
3. Initialize the Circos Layout

   Set up the circular layout by:
   - Clearing any previous Circos plot
   - Defining spacing and layout parameters
   - Adding chromosome ideograms (e.g., human genome)
   The result is a clean circular frame representing the entire genome.
4. Plot Fusion Links

   Add curved lines inside the circle to show fusion events.
   For each fusion event:
  - Identify the first breakpoint
  - Identify the second breakpoint
  - Draw a curved line between them

   These lines represent gene fusions, DNA mixing, or chromosomal rearrangements.
   Clusters of lines indicate hotspots or genome instability.

5. Add Title & Final Visualization

   Add a meaningful title to describe the plot.
   Customize colors, labels, spacing, and styling to improve readability.
   Finally, export the plot in formats like PNG or PDF.


## Use Cases

1. Gene Fusion Detection

- Circos plots are widely used to show gene fusions by drawing curved lines between two chromosomes.
- This helps researchers easily spot fusion events that may drive cancer or other diseases.

2. Chromosomal Translocations

- When two parts of chromosomes swap positions or break and rejoin incorrectly, the Circos plot displays this as crossing lines.
- This makes it easier to identify abnormal rearrangements in the genome.

3. Fusion Hotspot Identification

- If many fusion events occur in the same genomic region, the Circos plot shows clusters of lines going to or from that location.
- These hotspot regions may be biologically important and can help identify potential therapeutic targets.

Note - Using the Circos framework, we can also generate Structural Variant (SV) plots, Multi-Omics integration plots, Comparative Genomics maps, and Microbiome Horizontal Gene Transfer (HGT) visualizations by modifying the commands and input data used in the gene fusion script.




