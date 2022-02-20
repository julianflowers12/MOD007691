### PPE litter

### https://www.nature.com/articles/s41893-021-00824-1

library(readxl); library(tidyverse, quietly = TRUE); library(sf); library(lubridate)
library(ggspatial)
shps

data <- "https://static-content.springer.com/esm/art%3A10.1038%2Fs41893-021-00824-1/MediaObjects/41893_2021_824_MOESM2_ESM.xlsx"

tmp <- tempfile()

curl::curl_download(data, tmp)

sheets <- excel_sheets(tmp)

test <- map(sheets, ~(read_excel(tmp, sheet = .x)))

df1 <- map(sheets[c(1, 8)], ~(read_excel(tmp, sheet = .x, skip = 1) %>% mutate(country = .x)))
df <- map(sheets[c(2, 3, 4, 5, 6, 7, 9, 10 ,12)], ~(read_excel(tmp, sheet = .x) %>% mutate(country = .x)))

df <- map(df, ~(rename(.x, Tags = 2)))
df2 <- read_excel(tmp, sheet = 11) %>% mutate(country = sheets[11])

df2 <- df2 %>%
  select(country, everything()) %>%
  pivot_longer(names_to = "Tags", values_to = "vals", cols = Tags:...18) %>%
  group_by(Litter) %>%
  mutate(Tags = paste(vals, collapse = ", ")) %>%
  select(-c(vals, Country)) %>%
  distinct()

df2 <- df2 %>%
  mutate(Tags = str_remove_all(Tags, "NA"))

df2 <- df2 %>%
  select(country, litter, Tags, everything()) %>%
  select(-...8)

df <- map(df, ~select(.x, country, everything()))
df <- map(df, ~select(.x, -c(9:ncol(.))))
df <- map(df, ~select(.x, -Date))

df1 <- map(df1, ~(select(.x, country,  everything())))
df1 <- map(df1, ~(select(.x, -c(Country, 9:ncol(.)))))
df1 <- map(df1, ~select(.x, -Date))

df <- map(df, ~(select(.x, -Country)))

df2 <- df2 %>%
  select(country, Litter, Tags, `Location (Lat/Long)`, ...6, ...7)

df <- map(df, ~(janitor::clean_names(.x)))
df1 <- map(df1, ~(janitor::clean_names(.x)))
df2 <- df2 %>%
  janitor::clean_names()

dfs <- bind_rows(df, df2)

dfs <- dfs %>%
  separate(location_lat_long, c("lat", "long"), "/") %>%
  mutate_at(.vars = c("lat", "long"), as.numeric) %>%
  mutate(date = paste(x7, x6, "01", sep = "-"))


dfs %>%
  mutate(date1 = ymd(date)) %>%
  mutate(tags = str_split(tags, ", ")) %>%
  unnest("tags") %>%
  mutate(covid = ifelse(str_detect(tags, "mask|wipe|glove|corona"), "covid", "non")) %>%
  group_by(x7, covid, country) %>%
  summarise(user = n_distinct(litter)) %>%
  pivot_wider(names_from = "covid", values_from = "user", values_fill = 0) %>%
  filter(x7 >= 2019) %>%
  ungroup() %>%
  group_by(country) %>%
  summarise(covid_p = covid / (covid + non)) %>%
  flextable::flextable()



litter <- read_excel(tmp, sheet = "UK") %>%
  janitor::clean_names()



head(litter)

litter_long <- function(df){
  df %>%
  separate(location_lat_long, c("lat", "long"), "/") %>%
  pivot_longer(names_to = "tag", values_to = "vals", cols = tags:x18) %>%
  mutate(lat = round(as.numeric(lat), 6),
         long = round(as.numeric(long), 6))
}

litter_long %>%
  count(vals) %>%
  View()


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


### unique locations

rosm::osm.types()

