% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/is.xifti.R
\name{is.xifti}
\alias{is.xifti}
\alias{is_xifti}
\title{Validate a \code{"xifti"} object.}
\usage{
is.xifti(x, messages = TRUE)

is_xifti(x, messages = TRUE)
}
\arguments{
\item{x}{The putative \code{"xifti"} object.}

\item{messages}{If \code{x} is not a \code{"xifti"} object, print messages
explaining the problem? Default is \code{TRUE}.}
}
\value{
Logical. Is \code{x} a valid \code{"xifti"} object?
}
\description{
Check if object is valid for a \code{"xifti"} object.
}
\details{
Requirements: it is a list with the same structure as
\code{\link{template_xifti}}. The size of each data entry must be
compatible with its corresponding mask (medial wall for the cortex and
volumetric mask for the subcortex). Metadata should be present if and only
if the corresponding data is also present. The surfaces can be present
whether or not the cortex data are present.

See the "Label Levels" section for the requirements of
\code{xifti$meta$subcort$labels}.
}
\section{Label Levels}{

\code{xifti$meta$subcort$labels} is a factor with the following levels:

\enumerate{
\item{Cortex-L}
\item{Cortex-R}
\item{Accumbens-L}
\item{Accumbens-R}
\item{Amygdala-L}
\item{Amygdala-R}
\item{Brain Stem}
\item{Caudate-L}
\item{Caudate-R}
\item{Cerebellum-L}
\item{Cerebellum-R}
\item{Diencephalon-L}
\item{Diencephalon-R}
\item{Hippocampus-L}
\item{Hippocampus-R}
\item{Pallidum-L}
\item{Pallidum-R}
\item{Putamen-L}
\item{Putamen-R}
\item{Thalamus-L}
\item{Thalamus-R}
}

These correspond to the same structures as given by
\code{ft_read_cifti} in the \code{cifti-matlab} MATLAB toolbox. Note that
the first two levels (left and right cortex) are not used.
}

