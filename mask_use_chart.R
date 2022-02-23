## ONS OLS data for masks

library(pacman)
p_load(tidyverse, myScrapers, readxl, lubridate)

url <- "https://www.ons.gov.uk/peoplepopulationandcommunity/healthandsocialcare/healthandwellbeing/datasets/coronavirusandthesocialimpactsongreatbritaindata"

csvs <- get_page_csvs(url)

csvs <- csvs %>%
  enframe() %>%
  mutate(link = paste0("https://www.ons.gov.uk", value))

read_excel(csvs$link[1])


xlsx <- csvs %>%
  mutate( xlsx = purrr::map(link, ~(curl::curl_download(.x, destfile = basename(.x)))))


dates <- xlsx$xlsx %>%
  #purrr::map(., excel_sheets)
  purrr::map_dfr(., read_excel, sheet = "Table 3", range = "A2:A2") %>%
  purrr::map(., as.character) %>%
  enframe() %>%
  mutate(name = str_remove(name, "Great Britain, ")) %>%
  #.[-5,] %>%
  select(date = name)

dates[1]

dates %>%
  enframe() %>%
  unnest("value") %>%
  head()


ss <- xlsx$xlsx[-5] %>%
  #purrr::map(., excel_sheets)
  purrr::map_dfr(., read_excel, sheet = "Table 3", range = "A8:D14") %>%
  janitor::remove_empty()

xlsx$xlsx[5] %>%
  as.character() %>%
  read_excel()

ss %>%
  rename(mask = 1) %>%
  .[-5,] %>%
  filter(mask == "Yes") %>%
  cbind(dates) %>%
  slice(-5) %>%
  mutate(date = str_remove(date, ".*\\sto."),
         date = dmy(date)) %>%
  ggplot(aes(date, ...2)) +
  geom_col(fill = "red") +
  labs(y = "% saying they wore a mask in last 7 days",
       x = "",
       caption = "Source: Coronavirus and the social impacts on Great Britain, ONS
") +
  theme_minimal()

mask_type <- data.frame(type = c("Medical mask that you bought" , "Home made cloth mask", "Cloth mask that you had bought",
"Scarf or similar", "Other" , "Not sure"),
n = c(30,
26,
23,
17,
12,
3)
)

