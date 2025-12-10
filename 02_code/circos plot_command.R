# Install and load the required package
install.packages("circlize")
library(circlize)
library(ggplot2)
set.seed(123)

# 1. Import and read your csv file
fusion_data <- file.choose()
fusion_data <- read.csv(fusion_data)

# 2. Initialize Circos plot with chromosome ideogram
circos.clear()
circos.initializeWithIdeogram()

# 3. Add fusion links 
for(i in 1:nrow(fusion_data)){
  circos.link(
    fusion_data$chr1[i], fusion_data$start1[i],
    fusion_data$chr2[i], fusion_data$start2[i],
    col = rand_color(1)
  )
}
# 4. Add Title
title("Chromosomal Fusion Circos Plot", cex.main = 1.3, font.main = 2)
 
# To save the plot-
#ggsave("circos_pplot.png", width = 14, height = 7, dpi = 300, bg = 'white')
