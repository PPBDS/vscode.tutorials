# Tests that URLs students are instructed to download from in 03-terminal are
# still reachable. We check for text/plain content-type to catch cases where a
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

test_that("03-terminal: AUTHORS file is downloadable", {
  testthat::skip_on_cran()
  testthat::skip_if_offline()
  check_url_is_plain_text(
    "https://raw.githubusercontent.com/wch/r-source/trunk/doc/AUTHORS"
  )
})

test_that("03-terminal: TODO.txt is downloadable", {
  testthat::skip_on_cran()
  testthat::skip_if_offline()
  check_url_is_plain_text(
    "https://raw.githubusercontent.com/PPBDS/vscode.tutorials/refs/heads/main/TODO.txt"
  )
})

# NOTE: the grepping.txt test was removed. That file was deleted from the repo
# in 0d22efc ("initial clean up") and 03-terminal no longer mentions it, so the
# test was checking a URL that can only ever 404 -- it failed every CI run on
# main. Restore both the file and this test together if the exercise comes back.
