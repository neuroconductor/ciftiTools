% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/newdata_xifti.R
\name{newdata_xifti}
\alias{newdata_xifti}
\title{Replace the data in a \code{"xifti"}}
\usage{
newdata_xifti(xifti, newdata, newnames = NULL)
}
\arguments{
\item{xifti}{The \code{"xifti"}}

\item{newdata}{The \eqn{V \ times T} matrix of data values to replace those
in \code{xifti} with. The left cortex vertices should be at the top, right
cortex vertices in the middle, and subcortex vertices at the bottom (when
present). Can also be a length-one vector to set all values equally.}

\item{newnames}{Replace the names in the \code{xifti}. If \code{NULL}
(default), keep the original names.}
}
\value{
The new \code{"xifti"}
}
\description{
Replace the data in a \code{"xifti"} with new data from a data matrix.
}
\details{
If the \code{"xifti"} has \eqn{V} grayordinates and \code{T} measurements
in total, \code{newdata} should be a \eqn{V \times T} matrix.
}
\seealso{
Other functions for manipulating `xifti` objects: 
\code{\link{add_surf}()},
\code{\link{apply_xifti}()},
\code{\link{combine_xifti}()},
\code{\link{convert_to_dlabel}()},
\code{\link{merge_xifti}()},
\code{\link{remove_xifti}()},
\code{\link{select_xifti}()},
\code{\link{transform_xifti}()}
}
\concept{manipulating}
