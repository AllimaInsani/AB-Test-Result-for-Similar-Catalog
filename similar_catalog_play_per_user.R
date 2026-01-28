data = Similar_Catalog_Raw_play_per_user

#casual core
library(dplyr)
group_by(data, data$Group) %>%
  summarise(
    count = n(),
    median = median(data$`Play per User`, na.rm = TRUE),
    IQR = IQR(data$`Play per User`, na.rm = TRUE)
  )

library(ggpubr)
ggboxplot(data, x = "Group", y = "Play per User", 
          color = "Group", palette = c("#00AFBB", "#E7B800"),
          ylab = "Play per User", xlab = "Groups")

wilcox.test(data$`Play per User` ~ data$Group, alternative = "two.sided", paired = FALSE)

#6month user
library(dplyr)
group_by(data, data$Group) %>%
  summarise(
    count = n(),
    median = median(data$`6mo play per user`, na.rm = TRUE),
    IQR = IQR(data$`6mo play per user`, na.rm = TRUE)
  )

library(ggpubr)
ggboxplot(data, x = "Group", y = "6mo play per user", 
          color = "Group", palette = c("#00AFBB", "#E7B800"),
          ylab = "6mo play per user", xlab = "Groups")

wilcox.test(data$`6mo play per user` ~ data$Group, alternative = "two.sided", paired = FALSE)
