test_that("RNA converter works", {
  expect_equal(DNA_to_RNA('ATCTGCGA'), 'AUCUGCGA')
  expect_equal(DNA_to_RNA('ACGCGA'), 'ACGCGA')
})
