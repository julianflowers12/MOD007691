## semantic scholar

library(myScrapers); library(tidytext); library(quanteda)

remotes::install_github("ropensci/fulltext")
remotes::install_github("ropensci/medrxivr")


search <- "plastic pollution ppe"

res <- myScrapers::get_ss_data(search = search)

res$data$title

res_sel <- c(13, 22, 25, 28, 31, 34, 36, 44, 63, 78)

res_sel <- res$data[res_sel,]

res_sents <- res_sel %>%
  unnest_tokens(sentence, abstract, "sentences") %>%
  unnest_tokens(word, sentence, "words") %>%
  anti_join(stop_words)

res_sents %>%
  DT::datatable(escape = FALSE)

biorxiv <- fulltext::biorxiv_search(search, limit = 100)

biorxiv$data$title

fulltext::(query = search)


m_content <- medrxivr::mx_api_content(from_date = "2020-01-01")

m_content %>%
  count(category) %>%
  DT::datatable()
