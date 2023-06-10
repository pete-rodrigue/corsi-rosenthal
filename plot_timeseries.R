library(readr)
library(ggplot2)

df <- read_csv("C:/Users/edwar/Downloads/indoorPM2.5.csv", 
               col_types = cols(DATETIME = col_datetime(format = "%m/%d/%Y %H:%M")))


df$color_cut <- cut(df$PM2.5, c(0, 12, 35, 55, 150, 252))

ggplot(df, aes(x=DATETIME, y=PM2.5)) +
  # geom_point(color=df$color) +
  geom_point(aes(color=factor(color_cut))) +
  ggtitle("Particulate matter (PM 2.5) from 9:30 to 11:30 PM in my apartment") +
  xlab("Time on thursday night") +
  ylab("PM 2.5 level") +
  geom_vline(xintercept=as.numeric(df$DATETIME[180]), linetype=4) +
  theme_minimal() +
  scale_color_manual(name = "PM 2.5 category",
                     values = c("(0,12]" = "#91EE90",
                                "(12,35]" = "#FFD701",
                                "(35,55]" = "#F29E06",
                                "(55,150]" = "#FF0000",
                                "(150,252]" = "#A10549"
                                ),
                       labels = c("Good", "Moderate", 
                                  "Unhealthy for sensitive groups", 
                                  "Unhealthy", "Very unhealthy")) + 
  guides(colour = guide_legend(reverse=T)) + 
  annotate("text", x = as.POSIXct("2023-06-08 17:50:00"), y = 50, label = "Finished-->\nthe filter  ") +
  annotate("text", x = as.POSIXct("2023-06-08 17:40:00"), y = 250, label = "Got home")
