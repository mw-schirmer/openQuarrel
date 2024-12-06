% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions_and_settings.R
\name{create_input}
\alias{create_input}
\title{Create model input}
\usage{
create_input(model, BasinObs, BasinInfo)
}
\arguments{
\item{model}{a string indicating a hydrological model}

\item{BasinObs}{data frame with time series of input data from
\code{\link{load_meteo_data}}}

\item{BasinInfo}{a list with spatial basin information}
}
\value{
model a string specifying the hydrological model
}
\description{
Create input structure dependent on hydrological model choice
}
\examples{
create_input("TUW", BasinObs, BasinInfo)
}
