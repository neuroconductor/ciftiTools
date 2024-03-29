% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{format_path}
\alias{format_path}
\title{Format a path}
\usage{
format_path(path, dir = NULL, mode = NA)
}
\arguments{
\item{path}{The path to normalize.}

\item{dir}{(Optional) the directory to append to the beginning of the path.
\code{NULL} (default) to not append any directory, leaving \code{path}
unchanged.}

\item{mode}{The mode for \code{\link{file.access}} to verify existence,
writing permission, or reading permission. Use NA (default) to not perform
any is.}
}
\value{
The normalized path, or \code{NULL} if the path was \code{NULL}.
}
\description{
Normalize and validate a path (optionally, within a certain directory).
}
\keyword{internal}
