# infographic
## plastic waste

url <- "https://commons.wikimedia.org/wiki/Data:Plastic_waste_percentages_-_Jambeck_et_al._%282015%29_%28OWID_2767%29.tab#:~:text=Data%3APlastic%20waste%20percentages%20-%20Jambeck%20et%20al.%20%282015%29,%20%20%20%2056%20more%20rows%20"

library(rvest); library(tidyverse); library(ggtext); library(ggalt); library(DT)

table <- read_html(url) %>%
  html_table()

global_waste <- table[[1]] %>%
  slice(-c(1:2)) %>%
  pivot_longer(names_to = "metric",
               values_to = "values",
               cols = 3:5) %>%
  mutate(values = as.numeric(values))

gw <- global_waste %>%
  pivot_wider(names_from = "Year",
              values_from = "values") %>%
  drop_na() %>%
  top_n(100) %>%
  mutate(diff = `2025` - `2010`,
         direction = ifelse(diff >= 0, "Worse", "Better"))



gw %>%
  filter(metric == "Plastic_waste_generated__global_total",
         `2010` > .05 ) %>%
  ggplot(aes(x = `2010`, reorder(Entity, `2025`), xend = `2025`), group = direction) +
  geom_dumbbell(size = 2.5,
                colour_x = "goldenrod",
                colour_xend = "red",
                colour = "white",
                dot_guide = TRUE,
                dot_guide_size = 0.25) +
  labs(x = "Total plastic waste (millions of tons) log scale",
       y = "",
       title = "Top 100 plastic waste generating countries 2010 (yellow) to 2025 (red)"
       ) +
  scale_x_log10() +
  theme(panel.background = element_rect(fill = "black"),
        panel.grid.major = element_blank(),
        plot.title.position = "plot",
        plot.title = element_text(colour = "black"),
        plot.background = element_rect(fill = "white")) +
  facet_wrap(~direction)






