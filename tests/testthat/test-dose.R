library(testthat)

test_output <- function() {
  test_that('each condition gives the expected output', {
    expect_equal(
      dose(
        mmrc=1,
        fev=55,
        smoking_status=0,
        exacerbation=0
      )
      ,
      0
    )

    expect_equal(
      dose(
        mmrc=2,
        fev=33,
        smoking_status=1,
        exacerbation=2
      )
      ,
      4
    )

    expect_equal(
      dose(
        mmrc=3,
        fev=29,
        smoking_status=1,
        exacerbation=4
      )
      ,
      7
    )

    expect_equal(
      dose(
        mmrc=4,
        fev=29,
        smoking_status=1,
        exacerbation=4
      )
      ,
      8
    )
  })
}

test_output()
