test_that("where controls position", {
  df <- data.frame(x = 1)
  expect_equal(
    add_col(df, "y", 2, where = 1),
    data.frame(y = 2, x = 1)
  )
  expect_equal(
    add_col(df, "y", 2, where = 2),
    data.frame(x = 1, y = 2)
  )
})
test_that("can replace columns", {
  df <- data.frame(x = 1)
  expect_equal(
    add_col(df, "x", 2, where = 2),
    data.frame(x = 2)
  )
})
test_that("default where is far right", {
  df <- data.frame(x = 1)
  expect_equal(
    add_col(df, "y", 2),
    data.frame(x = 1, y = 2)
  )
})
