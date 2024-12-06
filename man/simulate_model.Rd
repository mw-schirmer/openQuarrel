% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions_and_settings.R
\name{simulate_model}
\alias{simulate_model}
\title{Simulate a hydrological model}
\usage{
simulate_model(model, model_param, input, ind = seq_along(input[[1]]))
}
\arguments{
\item{model}{a string specifying the hydrological model, currently
implemented are airGR and TUWmodel package models}

\item{model_param}{a vector of model parameters specific for each model
choice}

\item{input}{the output of the \code{create_input} function, dependent on the
model choice, in general containing information about date, precipitation
air temperature and potential evapotranspiration and spatial information as
area of the catchment or hypsometric curves}

\item{ind}{a vector of indices which can be used to subset the time dependent
elements in input. The default is taking all indices from the first element
of input}
}
\value{
a list with the elements \code{Qsim}, the simulated runoff, and
\code{more_info} with model specific output
}
\description{
Takes a model choice, model parameters, model input and indices indicating a
time subset of the model input which should be used and simulates discharge
values and model specific output
}
\examples{
simulation_results <- simulate_model("TUWmodel", calibration_results$model_param, input, ind = split_indices$ind_cal)
}
