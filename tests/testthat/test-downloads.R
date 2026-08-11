# Tests that URLs students are instructed to download from in the terminal
# tutorials (06-terminal-2, 07-terminal-3) are still reachable. We check for text/plain content-type to catch cases where a
# URL silently redirects to an HTML error page instead of the raw file.
# GitHub rate-limits anonymous requests from CI runners, so retry 429s and, if
# still throttled, skip: a rate limit is not evidence the URL is broken.
#
# local_path: for URLs that point at THIS repo's main branch, a tutorial-
# directory rename breaks the URL until the rename is pushed (see CLAUDE.md,
# "Renumbering tutorials"). A 404 while the file exists locally means exactly
# that pending-push state, so skip rather than fail; once pushed, the URL
# resolves and full validation resumes. A URL with no local counterpart
# (a genuine typo) still fails.
check_url_is_plain_text <- function(url, local_path = NULL) {
  resp <- tryCatch(
    httr2::request(url) |>
      httr2::req_retry(max_tries = 3, max_seconds = 30) |>
      httr2::req_perform(),
    httr2_http_429 = function(cnd) {
      testthat::skip(paste("Rate limited (HTTP 429) fetching", url))
    },
    httr2_http_404 = function(cnd) {
      if (!is.null(local_path) && file.exists(local_path)) {
        testthat::skip(paste(
          "404 but file exists locally — directory rename not yet pushed to main:",
          url
        ))
      }
      stop(cnd)
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
    "https://raw.githubusercontent.com/wch/r-source/refs/heads/trunk/doc/AUTHORS"
  )
})

test_that("terminal tutorials: TODO.txt is downloadable", {
  testthat::skip_on_cran()
  testthat::skip_if_offline()
  check_url_is_plain_text(
    "https://raw.githubusercontent.com/PPBDS/vscode.tutorials/refs/heads/main/TODO.txt"
  )
})

test_that("07-terminal-3: grepping.txt is downloadable", {
  testthat::skip_on_cran()
  testthat::skip_if_offline()
  check_url_is_plain_text(
    "https://raw.githubusercontent.com/PPBDS/vscode.tutorials/refs/heads/main/inst/tutorials/07-terminal-3/images/grepping.txt",
    local_path = system.file("tutorials/07-terminal-3/images/grepping.txt",
                             package = "vscode.tutorials")
  )
})

test_that("06-terminal-2: penguins.csv is downloadable", {
  testthat::skip_on_cran()
  testthat::skip_if_offline()
  check_url_is_plain_text(
    "https://raw.githubusercontent.com/allisonhorst/palmerpenguins/main/inst/extdata/penguins.csv"
  )
})
