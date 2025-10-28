test_that("sequence collapses to a single string", {
  x <- c("A","T","G","A")
  expect_equal(paste0(x, collapse = ""), "ATGA")
})
