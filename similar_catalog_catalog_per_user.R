data = Similar_Catalog_Raw_catalog_per_user

#casual core
library(dplyr)
group_by(data, data$Group) %>%
  summarise(
    count = n(),
    median = median(data$`casual core`, na.rm = TRUE),
    IQR = IQR(data$`casual core`, na.rm = TRUE)
  )

library(ggpubr)
ggboxplot(data, x = "Group", y = "casual core", 
          color = "Group", palette = c("#00AFBB", "#E7B800"),
          ylab = "casual core", xlab = "Groups")

wilcox.test(data$`casual core` ~ data$Group, alternative = "two.sided", paired = FALSE)

#6month user
library(dplyr)
group_by(data, data$Group) %>%
  summarise(
    count = n(),
    median = median(data$`6mo`, na.rm = TRUE),
    IQR = IQR(data$`6mo`, na.rm = TRUE)
  )

library(ggpubr)
ggboxplot(data, x = "Group", y = "6mo", 
          color = "Group", palette = c("#00AFBB", "#E7B800"),
          ylab = "6mo", xlab = "Groups")

wilcox.test(data$`6mo` ~ data$Group, alternative = "two.sided", paired = FALSE)
