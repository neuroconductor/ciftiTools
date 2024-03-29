% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rox_args_docs.R
\name{idx_Param}
\alias{idx_Param}
\title{idx}
\arguments{
\item{idx}{Numeric vector indicating the data indices (columns) to read. If
\code{NULL} (default), read in all the data. Must be a subset of the indices
present in the file, or an error will occur.

For high-resolution CIFTI files, reading in only a subset of the data saves
memory, but will be slower than reading in the entire file due to the
required intermediate steps.}
}
\description{
idx
}
\keyword{internal}
