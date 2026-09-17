#!/usr/bin/env Rscript
# check-config-drift.R — cross-repo drift guard.
#
# Tutorial 13 ("Our Codespace Starter") tours codespace-starter's
# devcontainer.json line by line: "find this line, copy and paste it", with the
# expected paste shown in a fenced block. Nothing else notices when that file
# changes underneath the tutorial — on 2026-08-22 two exercises started pointing
# at lines that no longer existed, and it was found by hand weeks later.
#
# This script fetches the LIVE devcontainer.json and checks that every quoted
# JSON line ("key": ...) and JSONC comment line (// ...) inside the tutorial's
# fenced expected-output blocks still exists in the file, whitespace-trimmed.
# Other block content (shell prompts, ls listings, install logs) is ignored.
#
# Usage:  Rscript .github/scripts/check-config-drift.R [tutorial.Rmd] [source]
#   source may be a URL or a local path, e.g. ../codespace-starter/.devcontainer/devcontainer.json
# Exit 1 with a list of missing lines on drift; base R only, no packages.

args     <- commandArgs(trailingOnly = TRUE)
tutorial <- if (length(args) >= 1) args[1] else "inst/tutorials/13-our-codespace-starter/tutorial.Rmd"
source   <- if (length(args) >= 2) args[2] else
  "https://raw.githubusercontent.com/PPBDS/codespace-starter/main/.devcontainer/devcontainer.json"

tut <- readLines(tutorial, encoding = "UTF-8", warn = FALSE)
# The image pin changes with every release; a stale version in the tutorial's
# illustration doesn't block the exercise (students paste whatever is there),
# so that one line is compared with its version masked.
norm <- function(x) sub("(ghcr\\.io/ppbds/devcontainer):[0-9]+(\\.[0-9]+)*", "\\1:<version>", x)
src <- norm(trimws(readLines(source, encoding = "UTF-8", warn = FALSE)))

in_block <- FALSE; check <- FALSE; open_len <- 0L
checked <- 0L; misses <- character()

for (i in seq_along(tut)) {
  ln <- tut[i]
  fence <- regmatches(ln, regexpr("^`{3,}", ln))
  if (length(fence) == 1) {
    if (!in_block) {
      in_block <- TRUE; open_len <- nchar(fence)
      check <- !grepl("\\{", ln)          # plain ``` blocks only; skip ```{r} / ```{verbatim}
    } else if (nchar(fence) == open_len) {
      in_block <- FALSE; check <- FALSE
    }
    next
  }
  if (!in_block || !check) next
  t <- trimws(ln)
  if (!grepl('^("|//)', t)) next          # only JSON keys and JSONC comments are config quotes
  checked <- checked + 1L
  if (!(norm(t) %in% src)) misses <- c(misses, sprintf("  %s:%d  %s", basename(dirname(tutorial)), i, t))
}

if (length(misses) > 0) {
  cat("CONFIG DRIFT — quoted in the tutorial but no longer present in\n  ", source, "\n\n", sep = "")
  cat(misses, sep = "\n"); cat("\n")
  cat(sprintf("%d of %d quoted lines missing. Fix the tutorial's exercise(s) or expected output.\n",
              length(misses), checked))
  quit(status = 1)
}
cat(sprintf("config-drift OK: all %d quoted config lines present in %s\n", checked, source))
