## Jaya Optimization in R

This project demonstrates the usage of the Jaya optimization algorithm in R.

## Installation of the jaya package

To install the Jaya package in R:
install.packages("Jaya", repos = "https://cloud.r-project.org")

## Usage

The jaya package optimizes a give function, in this function, x1 and x2 variables have a limit of -10 to 10.

## Implementation

The optimization process is implemented in an R Markdown file.  Below is an overview of the main function:
objective_function <- function(x) {
  (x[1] - 3)^2 + (x[2] + 2)^2
}

## Run the Jaya algorithm
library(Jaya)
result <- jaya(
  fun = objective_function,
  lower = lower_bounds,
  upper = upper_bounds,
  popSize = 20,
  maxiter = 100,
  n_var = 2,
  opt = "minimize"
)

## Print and visualize results
print(summary(result))
plot(result)

## Results

The Jaya optimizatin function finds the optimal values that minimize the given function. The output includes:
The best solution found (optimal variable values and objective function value).
A plot showing the convergence of the optimization process.

## Repository Structure

📂 GSoC  
│── 📂 Jaya-Optimization-Test-in-R  
│   ├── Jaya-Optimization-Test-in-R.Rmd  # R Markdown file for the test  
│   ├── Jaya-Optimization-Test-in-R.R
│   ├── Jaya-Optimization-Test-in-R.html
│  
│── README.md

## License

This project is open-source and is licensed under the MIT License.
