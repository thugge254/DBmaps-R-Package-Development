## DBmaps R Package Development

This project demonstrates my skills in data manipulation and R package development through three levels of tests: 
Easy
Medium
Hard (MyPackage).

## Easy : Basic Joins Using `merge()` function

- Implemented four types of data merge using the merge() function

 ### code

  library(data.table)

students <- data.table(id = c("A", "B", "C", "D"),
                       Birthdate = c("2001-08-04", "2002-04-28", "2002-06-13", "2002-02-09"))

scores <- data.table(id = c("B", "C", "E"),
                     homework = c(87, 94, 92),
                     quiz = c(91, 90, 87))

  # Inner Join
merge(students, scores, by = "id")

# Left Join
merge(students, scores, by = "id", all.x = TRUE)

# Right Join
merge(students, scores, by = "id", all.y = TRUE)

# Full Join
merge(students, scores, by = "id", all = TRUE)

## Medium Tests : Function to Merge 3 Tables

- Implemented a general-purpose function to merge three data frames using any join type (`inner`, `left`, `right`, `full`) with the `dplyr` package.
  library(dplyr)

merge_three_tables <- function(x, y, z, by_x_y, by_xy_z, join_type = "inner") {
  if (!join_type %in% c("inner", "left", "right", "full")) {
    stop("Invalid join type.")
  }
  
  xy_merged <- switch(join_type,
                      "inner" = inner_join(x, y, by = by_x_y),
                      "left"  = left_join(x, y, by = by_x_y),
                      "right" = right_join(x, y, by = by_x_y),
                      "full"  = full_join(x, y, by = by_x_y))
  
  final_merged <- switch(join_type,
                         "inner" = inner_join(xy_merged, z, by = by_xy_z),
                         "left"  = left_join(xy_merged, z, by = by_xy_z),
                         "right" = right_join(xy_merged, z, by = by_xy_z),
                         "full"  = full_join(xy_merged, z, by = by_xy_z))
  
  return(final_merged)
}


## Hard Test – R Package Development: MyPackage

I demonstrated package development by building a minimal R package with documentation, tests, and a vignette.

#### The main features in the package:

hello_world() function

Roxygen2-based documentation

Unit tests using testthat

Vignette using rmarkdown

Package setup via usethis

### Sample Function

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

### Unit Test

test_that("hello_world function works correctly", {
  expect_equal(hello_world("Alice"), "Hello, Alice Welcome to MyPackage!")
  expect_type(hello_world("Bob"), "character")
})

## Repository Structure

📂 GSoC  
│── 📂 DBmaps-R-Package-Development
│   ├── Easy-test.Rmd  # R Markdown file for the test  
│   ├── R Script.R (Medium test)
│   ├── 📂 MyPackage
│  
│── README.md

## License

This project is open-source and is licensed under the MIT License.

