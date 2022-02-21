### PPE litter in the UK

### https://www.nature.com/articles/s41893-021-00824-1

library(readxl); library(tidyverse, quietly = TRUE); library(sf); library(lubridate); library(purrr); library(raster)
library(ggspatial)
#shps

data <- "https://static-content.springer.com/esm/art%3A10.1038%2Fs41893-021-00824-1/MediaObjects/41893_2021_824_MOESM2_ESM.xlsx"

tmp <- tempfile()

curl::curl_download(data, tmp)

sheets <- excel_sheets(tmp)

litter <- read_excel(tmp, sheet = "UK") %>%
  janitor::clean_names()



head(litter)

litter_long <-
  litter %>%
  separate(location_lat_long, c("lat", "long"), "/") %>%
  pivot_longer(names_to = "tag", values_to = "vals", cols = tags:x18) %>%
  mutate(lat = round(as.numeric(lat), 6),
         long = round(as.numeric(long), 6))


litter_long_clean <- litter_long %>%
  drop_na(vals) %>%
  #count(vals, sort = TRUE) %>%
  mutate(covid = ifelse(str_detect(vals, "mask|glove|corona|wipe"), "COVID", "Non-covid"),
         dow = str_sub(date, 1, 3),
         date1 = str_remove(date, dow),
         date1 = str_squish(date1),
         date1 = str_replace_all(date1, "\\s", "-"),
         date1 = mdy(date1)) %>%
  mutate(month = month(date1, label = TRUE),
         year = year(date1))

item_counts <- litter_long_clean %>%
  group_by(year, month) %>%
  summarise(user = n_distinct(litter))

covid_counts <- litter_long_clean %>%
  group_by(year, month, covid) %>%
  summarise(user = n_distinct(litter))


litter_long_clean %>%
  count(date1, covid) %>%
  ggplot(aes(date1, n)) +
  geom_col() +
  geom_smooth(method = "gam") +
  facet_wrap(~covid, scales = "free")

litter_long_sf <- litter_long_clean %>%
  st_as_sf(., coords = c("long", "lat"), crs = 4326, agr = "constant")

litter_long_sf <- st_transform(litter_long_sf, 27700)

covid_counts %>%
  pivot_wider(names_from = "covid", values_from = "user") %>%
  mutate(covid_prop = 100 * COVID / (COVID + `Non-covid`),
         date = ymd(make_date(year, month, "01"))) %>%
  ggplot(aes(date, covid_prop)) +
  geom_col() +
  geom_smooth(se = FALSE)

litter_long_sf %>%
  ggplot() +
  annotation_map_tile(zoomin = -1, type = "cartolight") +
  geom_sf(aes(colour = covid)) +
  facet_wrap(~covid) +
  theme_void()

