% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/is.xifti.R
\name{is.xifti_meta}
\alias{is.xifti_meta}
\title{Validate the \code{"meta"} component of a \code{"xifti"} object}
\usage{
is.xifti_meta(x)
}
\arguments{
\item{x}{The putative \code{"meta"} component.}
}
\value{
Logical. Is \code{x} a valid \code{"meta"} component?
}
\description{
Check if object is valid for \code{xifti$meta}, where \code{xifti} is a
\code{"xifti"} object.
}
\details{
This is a helper function for \code{\link{is.xifti}}.

Requirements: the structure must match that of the \code{"meta"} component
of \code{\link{template_xifti}}.
}
\keyword{internal}
