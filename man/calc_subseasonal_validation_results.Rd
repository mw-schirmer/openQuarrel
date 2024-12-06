% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions_and_settings.R
\name{calc_subseasonal_validation_results}
\alias{calc_subseasonal_validation_results}
\title{Calculates subseasonal validation results}
\usage{
calc_subseasonal_validation_results(
  val_subseason,
  dates,
  ind,
  period_name,
  col_name = "period",
  Qsim,
  Qobs,
  val_crit_transfo = "KGE_none"
)
}
\arguments{
\item{val_subseason}{a list with named arrays of two digits describing
months used to calculate subseasonal validation metrics}

\item{ind}{indices used for subsetting \code{hydro_data}}

\item{period_name}{entries in column \code{col_name} naming the subset period}

\item{col_name}{additional column name in returned data frame (default is
period)}

\item{Qsim}{vector with simulated runoff}

\item{Qobs}{vector with observed runoff}

\item{val_crit_transfo}{a vector of strings specifying validation criteria and a
runoff transformation separated by a \code{"_"}. supported are validation
criteria from the \code{\link{hydroGOF}} package usable by the
\code{\link{calc_hydroGOF}} function, for supported runoff transformations
please refer to \code{\link{transfo_q}}}

\item{date}{date a vector of dates (e.g. Dates, Posix)
with \code{\link{load_meteo_data}}}
}
\value{
a data frame as \code{\link{validate_model}} but with two additional
columns naming the period and the season
}
\description{
Within a subset of hydrological input data \code{hydro_data} subset with
\code{ind} it calculates performances metrics for monthly defined periods by
calling \code{\link{calc_validation_results}} with \code{col_name = "season"}
and the period names from the names in \code{val_subseason}.
Returns a new data frame with an
additional column called \code{col_name} with entries \code{period_name}
}
\examples{
perf_cal <- calc_subseasonal_validation_results(
  val_subseason = list(
    spring = c("02", "03", "04", "05"),
    summer = c("06", "07", "08", "09"),
    hydro_data$BasinObs$DatesR,
    split_indices$ind_cal, "calibration",
    col_name = "period",
    simulation_results$Qsim, Qobs,
    val_crit_transfo =
      c(
        "KGE_none", "NSE_none", "VE_none", "pbias_none",
        "KGE_inv", "NSE_inv",
        "KGE_sqrt", "NSE_sqrt"
      )
  )
)
}
\seealso{
\code{\link{calc_validation_results}}, \code{\link{validate_model}},
\code{\link{calc_hydroGOF}}, \code{\link{transfo_q}}
}
