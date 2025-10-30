test_that("Transcription and RNA conversion works", {
  expect_equal(transcription('ATCTGCGA'), 'AUCUGCGA')
  expect_equal(transcription('ACGCGA'), 'ACGCGA')
})
