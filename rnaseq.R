options(stringsAsFactors = FALSE)
library(tidyverse)
library(rio)
library(ggthemes)
library(ggrepel)
library(ggimage)
library(RColorBrewer)
library(ggrepel)

#----- brain measurements for raw counts
data_rnaseq <- import(file = "data/BK_iso_R01_prelim_analyses.isoSCM.41020.PARAMETRIC.csv") 

ggplot(data_rnaseq) +
  geom_point(aes(x = data_rnaseq$log2FC.Iso_v_Soc.combined_model, y = -log(data_rnaseq$padj.Iso_v_Soc.combined_model))) +
  theme_bw()
ggsave(filename = "figure_1.png", path = "figures")             
        