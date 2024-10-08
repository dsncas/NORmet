% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nm_scm.r
\name{nm_mlsc}
\alias{nm_mlsc}
\title{Single treatment target synthetic control with ML models}
\usage{
nm_mlsc(
  df,
  poll_col,
  code_col,
  treat_target,
  control_pool,
  cutoff_date,
  model_config,
  training_split = 0.75,
  verbose = TRUE
)
}
\arguments{
\item{df}{Data frame containing the input data.}

\item{poll_col}{The name of the column containing the pollutant data.}

\item{code_col}{The name of the column containing the unit codes.}

\item{treat_target}{The code of the treatment target.}

\item{control_pool}{A vector of codes representing the control units.}

\item{cutoff_date}{The date used to split the data into pre-treatment and post-treatment periods.}

\item{model_config}{A list containing configuration parameters for model training.}

\item{training_split}{The proportion of the data to be used for training. Default is 0.75.}

\item{verbose}{Should the function print progress messages? Default is TRUE.}
}
\value{
A list containing the synthetic control data, model statistics, and the trained model.
}
\description{
\code{nm_mlsc} applies machine learning models to estimate the synthetic control for a single treatment target.
}
\examples{
\dontrun{
library(dplyr)
df <- data.frame(
  date = Sys.time() + seq(1, 100, by = 1),
  pollutant = rnorm(100),
  unit_code = rep(c("A", "B", "C", "D"), each = 25)
)
result <- nm_mlsc(df, poll_col = "pollutant",
                  code_col = "unit_code", treat_target = "A",
                  control_pool = c("B", "C", "D"), cutoff_date = "2020-01-01",
                  model_config = list(max_models = 5, time_budget = 600))
}
}
