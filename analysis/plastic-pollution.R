## Special protection areas

install.packages("pacman")
library(pacman)

p_load(tidyverse, rvest, devtools, rlang)

devtools::install_github("julianflowers/myScrapers")
library(myScrapers)
sac <- "https://jncc.gov.uk/our-work/list-of-spas/"

tables <- read_html(sac) %>%
  rvest::html_table()

tables <- map_dfr(tables, bind_rows)

colnames(tables) <- tables[1, ]

tables <- tables %>%
  slice(-1)

