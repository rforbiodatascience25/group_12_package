test_that("extractCodon works correctly", {
  expect_equal(extractCodon("ATGCGTACG"), c("ATG", "CGT", "ACG"))
  expect_equal(extractCodon("ATGCGTACG", start = 2), c("TGC", "GTA"))
})
