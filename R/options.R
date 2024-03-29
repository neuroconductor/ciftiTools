#' List \code{ciftiTools} options
#' 
#' @return \code{data.frame} describing the options
#' 
#' @export 
#' 
ciftiTools.listOptions <- function() {
  OptionName <- c('wb_path', 'EPS', 'suppress_msgs')
  CurrentValue <- lapply(OptionName, ciftiTools.getOption)
  CurrentValue[vapply(CurrentValue, is.null, FALSE)] <- "NULL"
  CurrentValue <- as.character(CurrentValue)
  Description <- c(
    "Path to the Connectome Workbench folder or executable.", 
    #"Default surface geometry: 'inflated', 'very inflated', or 'midthickness'.",
    "Tolerance for equality between floating-point numbers.",
    "Suppress some messages and warnings that are less important or very frequent."
  )
  Notes <- c(
    "", 
    #"Data were provided [in part] by the Human Connectome Project, WU-Minn Consortium (Principal Investigators: David Van Essen and Kamil Ugurbil; 1U54MH091657) funded by the 16 NIH Institutes and Centers that support the NIH Blueprint for Neuroscience Research; and by the McDonnell Center for Systems Neuroscience at Washington University.", 
    "Currently only used to check that subcortical transformation matrices match that of the MNI template.", 
    ""
  )

  data.frame(OptionName=OptionName, CurrentValue=CurrentValue, Description=Description, Notes=Notes)
}

#' Validate a \code{ciftiTools} option and value
#' 
#' Checks if a ciftiTools option and value are valid.
#'
#' @param opt The option. 
#' @param val The value to set the option as.
#' 
#' @return The (corrected) \code{val}
#'
#' @keywords internal
#' 
ciftiTools.checkOption <- function(opt, val=NULL){
  stopifnot(opt %in% c("wb_path", "EPS", "suppress_msgs"))
  if (is.null(val)) { return(invisible(NULL)) }
  if (opt == "wb_path") {
    val <- get_wb_cmd_path(val)
  # } else if (opt == "surf") {
  #   val <- as.character(val)
  #   val <- match.arg(val, c("inflated", "very inflated", "midthickness"))
  } else if (opt == "EPS") {
    val <- as.numeric(val)
    stopifnot(length(val) == 1)
    stopifnot(val > 0)
    stopifnot(val < 1)
  } else if (opt == "suppress_msgs") {
    val <- as.logical(val)
    stopifnot(length(val) == 1)
  } else { stop() }

  val
}

#' Set a \code{ciftiTools} option
#' 
#' Sets an R option (with prefix "ciftiTools_"). 
#'  See \code{\link{ciftiTools.listOptions}}.
#'
#' @param opt The option. 
#' @param val The value to set the option as.
#'
#' @return The new value, \code{val}
#' 
#' @export
#'
ciftiTools.setOption <- function(opt, val) {
  opt <- match.arg(opt, c("wb_path", "EPS", "suppress_msgs"))
  val <- ciftiTools.checkOption(opt, val)
  val <- list(val)
  names(val) <- paste0("ciftiTools_", opt)
  options(val)
  invisible(val)
}

#' Get a \code{ciftiTools} option
#' 
#' Gets an R option (with prefix "ciftiTools_") value. 
#'  See \code{\link{ciftiTools.listOptions}}.
#'
#' @param opt The option.
#'
#' @return The value, \code{val}
#' 
#' @export
#'
ciftiTools.getOption <- function(opt) {
  getOption(
    paste0("ciftiTools_", opt), 
    default=switch(opt, EPS=1e-8, suppress_msgs=TRUE, wb_path=NULL)
  )
}