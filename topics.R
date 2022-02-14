library(data.table)
library(readr)
library(stringr)
library(dplyr)
library(tidyverse)
library(quanteda)
library(stm)
library(tidytext)
library(topicmodels)
library(LDAvis)
library(myScrapers)


speeches <- fread("~/Dropbox/My Mac (Julians-MBP-2)/Downloads/hansard-speeches-v310.csv")

speeches[str_detect(speech, "plastic pollution"),.N, by = .(year, party)] %>%
  pivot_wider(names_from = "year", values_from = "N", values_fill = 0)

pp19 <- speeches[year >  2019 & str_detect(speech, "plastic pollution"),]

anno <- myScrapers::annotate_abstracts(pp19$speech, pmid = pp19$id)

np <- myScrapers::abstract_nounphrases(anno)

np %>%
  drop_na(term) %>%
  group_by(doc_id) %>%
  count(term, sort = TRUE)
  summarise(text = paste(term, collapse = "; ")) %>%
  DT::datatable()

topics <- myScrapers::abstract_topics(k = 15, x = np)

map(1:10 , ~(myScrapers::abstract_topic_viz(np, topics$model, scores = topics$scores, n = .x)))

corp_pp19 <- corpus(pp19, text_field = "speech")

docvars(corp_pp19)

dfm_pp19 <- tokens(corp_pp19, remove_punct = TRUE, remove_url = TRUE, remove_numbers = TRUE) %>%
  tokens_remove(c(stopwords("english"), "government", "hon", "member")) %>%
  dfm()

tf <- topfeatures(dfm_pp19, 500)

stm_pp <- convert(dfm_pp19, to = "stm")

topics_pp <- stm(stm_pp$documents, stm_pp$vocab, data = stm_pp$meta, init.type = "Spectral", K = 10)

tidy(topics_pp)

plot(topics_pp, n = 10, family = "Helvetica", text.cex = .6)

####

lda_pp <- convert(dfm_pp19, to = "topicmodels")

lda_pp <- topicmodels::LDA(lda_pp, k = 15)

tidy(lda_pp)

plot(lda_pp)

plot(topics_pp, n = 10, family = "Helvetica", text.cex = .6)

topicmodels2LDAvis <- function(x, ...){
  post <- topicmodels::posterior(x)
  if (ncol(post[["topics"]]) < 3) stop("The model must contain > 2 topics")
  mat <- x@wordassignments
  LDAvis::createJSON(
    phi = post[["terms"]],
    theta = post[["topics"]],
    vocab = colnames(post[["terms"]]),
    doc.length = slam::row_sums(mat, na.rm = TRUE),
    term.frequency = slam::col_sums(mat, na.rm = TRUE)
  )
}

serVis(topicmodels2LDAvis(lda_pp))
