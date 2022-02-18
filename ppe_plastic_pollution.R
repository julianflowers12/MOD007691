## covid pollution

library(pacman)
p_load(myScrapers, europepmc, tidypmc, RISmed, glue)

search <- "covid plastic pollution"
start <- 2020
end <- 2021
n <- 111
key <- Sys.getenv("ncbi_key")


res <- pubmedAbstractR(search = search, n = n, start = start, end = end, ncbi_key = key)

res$abstracts$title

sel <- c(5, 8, 10, 12, 13, 15, 20, 21, 22, 23, 24, 33, 35, 42, 44, 48, 53, 55, 57, 58, 59, 62, 67, 75, 78, 81, 83, 88,
         92, 93, 97, 98, 105, 108, 110)

res_sel <- res$abstracts[sel, ]

## find free full texts

get_pmcid <- function(df){

  require(europepmc)
  require(tidyverse)
  pmids <- pluck(df, "pmid")
  details <- purrr::map(pmids, epmc_details) %>%
    purrr::map(., "basic")
  pmcid <- purrr::map(details, "pmcid")
  return(purrr::flatten(pmcid))

}

pmcids <- get_pmcid(df = res_sel)

xml <- purrr::map(pmcids, tidypmc::pmc_xml)
text <- purrr::map(xml, tidypmc::pmc_text)
tables <- purrr::map(xml, tidypmc::pmc_table)
meta <- purrr::map(xml, tidypmc::pmc_metadata)
captions <- purrr::map(xml, tidypmc::pmc_caption)
refs <- purrr::map(xml, tidypmc::pmc_reference)





titles <- purrr::map(meta, "Title")

t7 <- tables[[7]]

t7[1]$`Table 1` %>%
  filter(Country == "UK") %>%
  select(2)

t7$`Table 3` %>%
  filter(Country == "UK") %>%
  select(2)

tables[[9]]$`Table 4` %>%
  filter(Country == "United Kingdom")

tables[[19]]$`Table 2` %>%
  pluck("Country")

tables[[20]]$`Table 1` %>%
  pluck("Country")

mask_plastic <- tables[[30]]$`Table 1`

ta

captions[[19]]

waste <- tables[[19]]$`Table 2` %>%
  janitor::clean_names() %>%
  mutate(populationa = parse_number(populationa),
         estimated_daily_facemask_discarded  = parse_number(estimated_daily_facemask_discarded),
         total_estimated_plastic_waste_tonnes = parse_number(total_estimated_plastic_waste_tonnes)) %>%
  mutate_at(.vars = 3:8, as.numeric) %>%
  mutate(per_capita_waste = total_estimated_plastic_waste_tonnes/ populationa) %>%
  DT::datatable()

text[[19]] %>%
  DT::datatable(options = list(pageLength = 25))

text[[7]] %>%
  DT::datatable(options = list(pageLength = 100))

meta[[7]]

t2 <- tables[[7]]$`Table 1`

t2 %>%
  knitr::kable()

refs[[7]] %>%
  DT::datatable(options = list(pageLength = 100),
                editable = TRUE)

map(meta, "Authors")

t1 <- tables[[17]]$`Table 4`
