library(testthat)
library(MyPackage)

test_that("hello_world function works correctly", {
  expect_equal(hello_world("Alice"), "Hello, Alice Welcome to MyPackage!")
  expect_type(hello_world("Bob"), "character")
})
