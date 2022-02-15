# infographic
## plastic waste

url <- "https://commons.wikimedia.org/wiki/Data:Plastic_waste_percentages_-_Jambeck_et_al._%282015%29_%28OWID_2767%29.tab#:~:text=Data%3APlastic%20waste%20percentages%20-%20Jambeck%20et%20al.%20%282015%29,%20%20%20%2056%20more%20rows%20"

library(rvest); library(tidyverse); library(ggtext); library(ggalt); library(DT); library(sf); library(maps); library(mapdata); library(rlang)

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
  #top_n(150) %>%
  mutate(diff = `2025` - `2010`,
         direction = ifelse(diff >= 0, "Forecast to worsen", "Forecast to improve"))



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
       title = "Top 100 plastic waste generating countries 2010 (yellow) to 2025 (red)",
       caption = "Sorted by waste production in 2010") +
  scale_x_log10() +
  theme(panel.background = element_rect(fill = "black"),
        panel.grid.major = element_blank(),
        plot.title.position = "plot",
        plot.title = element_text(colour = "black"),
        plot.background = element_rect(fill = "white")) +
  facet_wrap(~direction)

gw <- gw %>%
  mutate(region = case_when(str_detect(Entity, "Cote") ~ "Ivory Coast",
                            str_detect(Entity, "United States") ~ "USA",
                            str_detect(Entity, "Vanuat") ~ "Vanuatu",
                            str_detect(Entity, "Democratic Republic of Congo") ~ "Democratic Republic of the Congo",
                            str_detect(Entity, "United Kingdom") ~ "UK",
                            str_detect(Entity, "Faeroe") ~ "Faroe",
                            str_detect(Entity, "Naur") ~ "Nauru",
                            str_detect(Entity, "Pala") ~ "Palau",
                            str_detect(Entity, "St Kitts and Nevis") ~ "Saint Kitts",
                            str_detect(Entity, "Saint Vincent and the Grenadines") ~ "Saint Vincent",
                            str_detect(Entity, "Sint Maarten (Dutch part)") ~ "Sint Maarten",
                            str_detect(Entity, "Tuval") ~ "Tuvalu",
                            str_detect(Entity, "Per") ~ "Peru",



                            TRUE~ Entity)) %>%
  filter(!region %in% c("Antigua and Barbuda", "Trinidad and Tobago", "British Virgin Islands", "Channel Islands",
                        "French Polynesia", "Guam", "Micronesia" ))

View(gw)

now <- map_data("world") %>%

  left_join(gw, by = c("region")) %>%
  #drop_na() %>%
  select(-order) %>%
  #distinct() %>%
  #filter(!region %in% c("Vatican")) %>%
  #count(lat, sort = TRUE) %>%
  #filter(n > 1)
  ggplot(aes(long, lat)) +
  geom_polygon(aes(group = group, fill = `2010`), colour = "lightgrey") +
  coord_map(projection = "albers", parameters = c(0, 0)) +
  scale_fill_distiller(direction = 1, palette = "Purples") +
  theme_void()

future <- map_data("world") %>%
  left_join(gw, by = c("region")) %>%
  #drop_na() %>%
  select(-order) %>%
  #distinct() %>%
  #filter(!region %in% c("Vatican")) %>%
  #count(lat, sort = TRUE) %>%
  #filter(n > 1)
  ggplot(aes(long, lat)) +
  geom_polygon(aes(group = group, fill = `2025`), colour = "lightgrey") +
  coord_map(projection = "albers", parameters = c(0, 0)) +
  scale_fill_distiller(direction = 1, palette = "Purples") +
  theme_void()

library(cowplot)

cowplot::plot_grid(now, future,
                   labels = c("2010", "2025"))


