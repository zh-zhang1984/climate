% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sounding_wyoming.R
\name{sounding_wyoming}
\alias{sounding_wyoming}
\title{Sounding data}
\source{
http://weather.uwyo.edu/upperair/sounding.html
}
\usage{
sounding_wyoming(wmo_id, yy, mm, dd, hh)
}
\arguments{
\item{wmo_id}{international WMO station code (World Meteorological Organization ID); For Polish stations: Łeba - 12120, Legionowo - 12374, Wrocław- 12425}

\item{yy}{year - single number}

\item{mm}{month - single number denoting month}

\item{dd}{day - single number denoting day}

\item{hh}{hour - single number denoting initial hour of sounding; for most stations this measurement is done twice a day (i.e. at 12 and 00 UTC), sporadically 4 times a day}
}
\value{
Returns two lists with values described at: weather.uwyo.edu ; The first list contains:
\enumerate{
\item PRES - Pressure (hPa)
\item HGHT - Height (metres)
\item TEMP - Temperature (C)
\item DWPT - Dew point (C)
\item RELH - Relative humidity (\%)
\item MIXR - Mixing ratio (g/kg)
\item DRCT - Wind direction (deg)
\item SKNT - Wind speed (knots)
\item THTA = (K)
\item THTE = (K)
\item THTV = (K)
}
The second list contains metadata and calculated thermodynamic / atmospheric instability indices

A list of 2 data.frames where first data frame represents parameters of upper parts o with columns describing the meteorogical parameters (e.g. temperature, air pressure) where each row represent a measurement,
depending on the height. Secound data.frame present a description of the conditions under which the sounding was carried out.
}
\description{
Downloading the mea (i.e., measurements of the vertical profile of atmosphere) sounding data
}
\examples{
\donttest{
  profile <- sounding_wyoming(wmo_id = 12120, yy = 2019, mm = 4, dd = 4, hh = 0)
  head(profile)
  plot(profile[[1]]$HGHT, profile[[1]]$PRES, type = 'l')
}

}
