#' Print Local git Repositories to Synchronize
#'
#' This function checks if all git repositories in the `path` folder are 
#' update-to-date. It prints the list of git repositories for which changes 
#' need to be committed and pushed to remote hub.
#'
#' @param path the root directory from which all folders are recursively
#' inspected.
#'
#' @export
#'
#' @examples
#' \dontrun{
#' git_to_commit(path = "~/GitHub")
#' }

git_to_commit <- function(path = "~") {
  
  
  ## Checks ----
  
  if (!dir.exists(path)) {
    stop("The directory '", path, "' does not exist.")
  }
  
  
  ## List <.git> directories ----
  
  all_gits <- list.files(path = path, pattern = "^\\.git$", recursive = TRUE,
                         include.dirs = TRUE, all.files = TRUE)
  
  
  if (length(all_gits)) {
    
    ui_done("{ui_value(length(all_gits))} repositories found in {ui_value(path)}")
    
    all_gits <- gsub("/\\.git$", "", all_gits)
    
    
    ## Detect not update-to-date repositories ----
    
    pos <- unlist(lapply(file.path(path, all_gits), function(x) {
      ifelse(nrow(gert::git_status(repo = x)), 1, 0)
    }))
    
    
    ## If there is not update-to-date repositories ----
    
    if (sum(pos)) {
      
      gits <- all_gits[pos == 1]
      
      ui_todo("{ui_value(length(gits))} repositories need to be synchronized:")
      invisible(lapply(gits, function(x) {
        ui_line("    {clisymbols::symbol$radio_on} {ui_value(x)}")
      }))
      
    } else {
      
      ui_done("All {ui_field('git')} repositories are update-to-date")
    }
    
  } else {
    
    ui_oops("No {ui_field('git')} repositories found in {ui_value(path)}")
  }
  
  invisible(NULL)
}
