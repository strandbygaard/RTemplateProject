library(testthat)

source("../../R/sample.R")

test_that("Multiply by 2", {
  expect_equal(sample_function(2), 4)
})

