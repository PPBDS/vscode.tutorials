# Tests that URLs students are instructed to download from in the terminal
# tutorials (04-terminal-1, 05-terminal-2) are still reachable. We check for text/plain content-type to catch cases where a
# URL silently redirects to an HTML error page instead of the raw file.
# GitHub rate-limits anonymous requests from CI runners, so retry 429s and, if
# still throttled, skip: a rate limit is not evidence the URL is broken.
check_url_is_plain_text <- function(url) {
  resp <- tryCatch(
    httr2::request(url) |>
      httr2::req_retry(max_tries = 3, max_seconds = 30) |>
      httr2::req_perform(),
    httr2_http_429 = function(cnd) {
      testthat::skip(paste("Rate limited (HTTP 429) fetching", url))
    }
  )
  expect_equal(httr2::resp_status(resp), 200)
  expect_match(httr2::resp_content_type(resp), "text/plain")
}

# skip_on_cran(): CRAN check servers have no internet access.
# skip_if_offline(): avoid failures in local environments without internet.

test_that("terminal tutorials: AUTHORS file is downloadable", {
  testthat::skip_on_cran()
  testthat::skip_if_offline()
  check_url_is_plain_text(
    "https://raw.githubusercontent.com/wch/r-source/trunk/doc/AUTHORS"
  )
})

test_that("terminal tutorials: TODO.txt is downloadable", {
  testthat::skip_on_cran()
  testthat::skip_if_offline()
  check_url_is_plain_text(
    "https://raw.githubusercontent.com/PPBDS/vscode.tutorials/refs/heads/main/TODO.txt"
  )
})

test_that("05-terminal-2: grepping.txt is downloadable", {
  testthat::skip_on_cran()
  testthat::skip_if_offline()
  check_url_is_plain_text(
    "https://raw.githubusercontent.com/PPBDS/vscode.tutorials/refs/heads/main/inst/tutorials/05-terminal-2/images/grepping.txt"
  )
})
