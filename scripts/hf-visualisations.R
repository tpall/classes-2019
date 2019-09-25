
#' Loading libraries.
#+ libs
library(tidyverse)
library(here)

#' Importing data.
#+ import
hf_summary <- read_csv(here("output/summary.csv"))
hf_summary

#'
#' Plot age ~ post-acute_LOS scatterplot
#+ fig.cap=""
ggplot(data = hf_summary) +
  geom_point(aes(x = age, y = post_acute_LOS, color = county))



ggplot(data = hf_summary) +
  geom_point(aes(x = age, y = post_acute_LOS)) +
  facet_wrap(~county)

ggplot(data = hf_summary) +
  geom_point(aes(x = fracture_type, y = post_acute_LOS)) +
  facet_wrap(~county)


