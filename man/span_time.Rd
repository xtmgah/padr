% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/span_date.R
\name{span_time}
\alias{span_time}
\title{Wrapper around \code{seq.POSIXct}.}
\usage{
span_time(from, to = NULL, len_out = NULL, by = NULL, tz = "UTC")
}
\arguments{
\item{from}{Integer or character of length 4 (yyyy), 6 (yyyymm), or 8 (
yyymmdd). Character of length 11 (yyyymmdd hh), 13 (yyyymmdd hhmm), or 15 (
yyyymmdd hhmmss). Indicating the start value of the sequence.}

\item{to}{Integer or character of length 4 (yyyy), 6 (yyyymm), or 8 (
yyymmdd). Character of length 11 (yyyymmdd hh), 13 (yyyymmdd hhmm), or 15 (
yyyymmdd hhmmss). Indicating the end value of the sequence. Optional.}

\item{len_out}{The desired length of the sequence. Optional.}

\item{by}{The desired interval. Optional.}

\item{tz}{The desired timezone.}
}
\value{
An object of class POSIXct.
}
\description{
Quickly create a sequence of datetimes from minimal specifications.
}
\details{
Minimal specification of datetimes, sets unspecified date parts to
default values. These are 01 for both month and day and 00 for hour, minute,
and second.

In addition to \code{from}, either \code{to} or \code{length} must be specified.
If the \code{by} is not specified, \code{span_time} will set the interval to
the highest of the specified datetime parts in either \code{from} or
\code{to}. For example, if they are "20160103 01" and "20160108 05" it will
be "hour", if they are "2011" and "20110101 021823" it will be "second".
}
\examples{
# using to
span_time(2011, 2013)
span_time("2011", "2013")
span_time(2011, 201301)
span_time(2011, 20130101)
span_time(2011, "20110101 0023")
span_time(2011, "20110101 002300")

# using len_out
span_time(2011, len_out = 3)
span_time("2011", len_out = 3)
span_time(2011, len_out = 10, by = "month")
span_time(2011, len_out = 10, by = "day")
span_time(2011, len_out = 10, by = "hour")
span_time("20110101 00", len_out = 10)
span_time("20110101 002300", len_out = 10)

}
