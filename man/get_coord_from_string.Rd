% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_coord_from_string.R
\name{get_coord_from_string}
\alias{get_coord_from_string}
\title{Getting coordinates from a string provided by the Ogimet web portal}
\format{The returned object is the geographic coordinates using WGS84 (EPSG:4326) in decimal format.
Negative values mean western or southern Hemisphere}
\usage{
get_coord_from_string(txt, pattern = "Longitude")
}
\arguments{
\item{txt}{string with coordinates from Ogimet}

\item{pattern}{which element (Longitude or Latitude) to extract}
}
\description{
Internal function for cleaning coordinates' metadata provided by Ogimet
}
\examples{
\donttest{
 txt <- "12120:   Leba (Poland)\nLatitude: 54-45N    Longitude: 017-32E    Altitude: 2 m."
 climate:::get_coord_from_string(txt, pattern = "Latitude")
}

}
\keyword{internal}
