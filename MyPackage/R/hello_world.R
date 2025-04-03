#' A Simple Hello Function
#'
#' This function greets the user.
#'
#' @param name A character string representing the name of the person to greet.
#' @return A greeting message.
#' @export
hello_world <- function(name = "User") {
  paste("Hello,", name, "Welcome to MyPackage!")
}
