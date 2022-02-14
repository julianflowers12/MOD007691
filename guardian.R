library(myScrapers)

library(pacman)
p_load(quanteda.textmodels, quanteda.textstats, guardianapi, myScrapers, lubridate, tidyverse)

## search Guardian for articles on wildlife conservation

## reads open data platform


guardianapi::gu_api_key(check_env = TRUE)

######## search

query <- "greenwash"


last_year <- guardianapi::gu_content(query = query, from_date = today() - days(365), to_date = today())

last_year %>%
  #filter(section_id == "environment") %>%
  select(web_title, body, contains("url")) %>%
  DT::datatable(escape = FALSE,
                option = list(pageLength = 50))


########
## pubmed
search <- "microplastics gastrointestinal human[mh]"
start <- 2000
end <- 2022

key <- Sys.getenv("ncbi_key")

n <- 77

res <- pubmedAbstractR(search = search, n = n, start = start, end = end, ncbi_key = key)

res$abstracts %>%
  DT::datatable(option = list(pageLength = 50))
res$abstracts[9,]$abstract

## semantic scholar

ss_res <- myScrapers::get_ss_data(search = search)

ss_res$data %>%
  DT::datatable()

