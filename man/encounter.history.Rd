\name{encounter.history}
\alias{encounter.history}
\title{
Produce a single encounter history file based on population parameters.  
}
\description{
Given an underlying landscape, populates the landscape with simulated individuals based on spacing rules in \code{Parameters}.  Calculates probability of at least one individual at every location on the landscape and accumulates probability over grid cells to determine presence/absence.
}
\usage{
encounter.history(map, Parameters, ...)
}

\arguments{
  \item{Parameters}{
list of parameter values for simulation
}
  \item{map}{
a raster layer with underlying habitat information
}
  \item{...}{
additional options
 }
}
\details{
  Main simulation function called through \code{createReplicates} to produce replicate complete encounter history files. 
  
  Use \code{showSteps = T} as an additional option to display plots, save sampling grid, and other output as error checking.
}
\value{
Vector with one element for each grid cell representing the encounter history at that cell. Encounter histories consist of 1/0 values indicating presence/absence of at least one individual in each cell at each visit in each year of the study period.

If \code{showSteps = T}, output will consist of a data.frame with 2 x n_yrs columns.  For each cell in each year, both an encounter history for the year (1/0s representing used/unused during sampling occasions) and the probability of use in the cell will be included. 
}

\seealso{
  \code{\link{createReplicates}}
}