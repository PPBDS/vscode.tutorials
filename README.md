
<!-- README.md is generated from README.Rmd. Edit ONLY this file if you need to make a change in README.md. But, after you edit it, you run `rmarkdown::render("README.Rmd")` in order to create the new README.md, which is the thing which is actually used. Must be a better way of doing this! -->

# VS Code Tutorials

<!-- badges: start -->

[![R build
status](https://github.com/PPBDS/vscode.tutorials/workflows/R-CMD-check/badge.svg)](https://github.com/PPBDS/vscode.tutorials/actions)
<!-- badges: end -->

Package website: <https://ppbds.github.io/vscode.tutorials/>

## About this package

**vscode.tutorials** is a collection of tutorials for working with VS
Code. Covers scripts, Quarto documents, git, Github, and Quarto
websites. Makes extensive use of the tools in the
**[tutorial.helpers](https://ppbds.github.io/tutorial.helpers/)**
package.

## Installation

Install the development version from [GitHub](https://github.com/) with:

``` r
remotes::install_github("PPBDS/vscode.tutorials")
```

## Tutorials

There are many tutorials in the package. The recommended way to launch
them is with the [R Tutorials extension for VS
Code](https://open-vsx.org/extension/PPBDS/vscode-r-tutorials), which
lists every installed tutorial and lets you start one with a click.

As a backup, you can launch a tutorial from the R console with
`learnr::run_tutorial()`, providing the short name of the tutorial and
the package name.

    learnr::run_tutorial(name = "01-introduction",
                         package = "vscode.tutorials")

### VS Code Tutorials

The core tutorials introduce students to the VS Code integrated
development environment.

- *Introduction* (“01-introduction”). The first tutorial after **Getting
  Started**: move around VS Code, use the Terminal, create a GitHub
  repo, run R scripts, make plots, and commit and push with Git.

- *Code* (“02-code”). Introduce students to VS Code and to writing R
  code in simple scripts.

- *Quarto* (“03-quarto”). Demonstrate more tricks for working with R
  code using VS Code, and also explain Quarto documents.

- *Terminal Introduction* (“04-terminal-1”). Teach the basics of the
  command line.

- *Terminal Advanced* (“05-terminal-2”). More command line: paths,
  options, wildcards, regular expressions, and file operations.

- *Antigravity* (“06-antigravity”). Meet the Antigravity CLI agent
  (`agy`) and use it to create and render a Quarto analysis.

- *GitHub Introduction* (“07-github-1”). Explain the basics of Git and
  GitHub, mostly in the context of VS Code.

- *VS Code and GitHub Advanced* (“08-github-2”). Provide more practice
  in working with Git/GitHub, including more details on the use of
  GitHub Pages.

- *Quarto Websites Introduction* (“09-websites-1”). Demonstrate the
  basics of website construction using Quarto projects.

- *Quarto Websites Advanced* (“10-websites-2”). Practice Quarto
  websites, building two sites and refactoring analysis code into
  scripts that save results as RDS and PNG files.

- *Devcontainers* (“11-devcontainers”). Introduce devcontainers, touring
  a pre-built Jupyter devcontainer.json and building an R
  devcontainer.json from scratch.

- *Our Codespace Starter* (“12-codespace-starter”). Tour the
  devcontainer.json behind `codespace-starter` itself.

- *The Devcontainer Dockerfile* (“13-docker”). Read through the
  Dockerfile that builds the PPBDS devcontainer image.

The *R for Data Science* and *Analyzing US Census Data* tutorials now
live in the separate
**[misc.tutorials](https://github.com/PPBDS/misc.tutorials)** package.
