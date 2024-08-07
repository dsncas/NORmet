% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nm_scm.r
\name{nm_scm}
\alias{nm_scm}
\title{Function to perform Synthetic Control Method (SCM) for a single treatment target}
\usage{
nm_scm(df, poll_col, code_col, treat_target, control_pool, cutoff_date)
}
\arguments{
\item{df}{Data frame containing the input data.}

\item{poll_col}{The name of the column containing the pollutant data.}

\item{code_col}{The name of the column containing the unit codes.}

\item{treat_target}{The code of the treatment target.}

\item{control_pool}{A vector of codes representing the control units.}

\item{cutoff_date}{The date used to split the data into pre-treatment and post-treatment periods.}
}
\value{
A data frame with the actual and synthetic control data, including the treatment effects.
}
\description{
\code{nm_scm} applies the synthetic control method to estimate the treatment effect
for a specified treatment target using control units.
}
\examples{
\dontrun{
library(dplyr)
library(glmnet)
df <- data.frame(
  date = Sys.time() + seq(1, 100, by = 1),
  pollutant = rnorm(100),
  unit_code = rep(c("A", "B", "C", "D"), each = 25)
)
result <- nm_scm(df, poll_col = "pollutant",
                 code_col = "unit_code", treat_target = "A",
                 control_pool = c("B", "C", "D"), cutoff_date = "2020-01-01")
}
}
