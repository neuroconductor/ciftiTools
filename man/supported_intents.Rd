% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/info_cifti.R
\name{supported_intents}
\alias{supported_intents}
\title{The NIFTI intents supported by \code{ciftiTools}}
\usage{
supported_intents()
}
\value{
A \code{data.frame} with each supported file type along the rows, and
column names "extension", "intent_code", "value", and "intent_name"
}
\description{
Table of CIFTI file types (NIFTI intents) supported by \code{ciftiTools}.
}
\details{
See https://www.nitrc.org/forum/attachment.php?attachid=334&group_id=454&forum_id=1955
for information about the different NIFTI intents.
}
