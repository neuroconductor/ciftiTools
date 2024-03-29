% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/info_cifti.R
\name{get_intn_meta_from_cifti_xml}
\alias{get_intn_meta_from_cifti_xml}
\title{Extract intent-specific metadata from CIFTI}
\usage{
get_intn_meta_from_cifti_xml(xml, intent = 3000)
}
\arguments{
\item{intent}{The CIFTI's NIFTI intent code}

\item{x}{List representing "MatrixIndicesMap" entry XML
(\code{xifti$CIFTI$Matrix[[2]]})}
}
\value{
The metadata, a list
}
\description{
Extract intent-specific Metadata from CIFTI header XML (first "MatrixIndicesMap" entry)
}
\keyword{internal}
