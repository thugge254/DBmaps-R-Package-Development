## Merge Tables

### Overview

This project provides a function, merge_tables, that allows users to merge three data tables (x, y, and z) based on specified keys. 
It uses the merge() function from base R and the dplyr library for efficient data manipulation.
The function supports merging on two different sets of keys for the x-y and xy-z merges, and it returns the final merged table.

### Functionality

The merge_tables() function merges three data frames (x, y, and z):

It first merges tables x and y using a common key (specified by by_x_y).

The result of the x-y merge is then merged with table z using another key (specified by by_xy_z).

The function returns the final merged table that combines data from all three input tables.

### Required Libraries

This project relies on this one library:

dplyr: For efficient data manipulation (optional for this function, though it improves efficiency for large datasets).

To install the dplyr package, use:

install.packages("dplyr")

### Installation

To install the project locally, you can  clone the repository to your local machine.

1. Clone the repository:

git clone https://github.com/thugge254/DBmaps-R-Package-Development.git

2. Open the project directory in RStudio.

## Usage

### Function Definition

# Load required libraries
library(dplyr)  # For efficient data manipulation

# Function to merge tables x and y, then merge the result with table z
merge_tables <- function(x, y, z, by_x_y, by_xy_z) {
  # Merge table x and y based on the specified key(s)
  xy_merged <- merge(x, y, by = by_x_y, all = TRUE)
  
  # Merge the resulting table (xy_merged) with table z
  xyz_merged <- merge(xy_merged, z, by = by_xy_z, all = TRUE)
  
  # Return the final merged table
  return(xyz_merged)
}

#### Example Usage

# Example data frames
x <- data.frame(ID = c(1, 2, 3), Value_X = c("A", "B", "C"))
y <- data.frame(ID = c(2, 3, 4), Value_Y = c("D", "E", "F"))
z <- data.frame(ID = c(1, 3, 4), Value_Z = c("G", "H", "I"))

# Merging the data frames on 'ID' column
result <- merge_tables(x, y, z, by_x_y = "ID", by_xy_z = "ID")

# Print the final merged table
print(result)

## License
This project is licensed under the MIT License
