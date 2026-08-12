#' VS Code Tutorials
#'
#' A comprehensive collection of interactive tutorials covering VS Code and modern
#' development workflows. This package makes extensive use of the tools in the
#' tutorial.helpers package.
#'
#' @description
#' The vscode.tutorials package provides interactive tutorials focused on VS Code
#' and modern development tools, covering scripts, Quarto documents, the terminal,
#' Git, GitHub, and Quarto websites.
#'
#' @section VS Code and Development Tools Tutorials:
#' The package includes tutorials focused on VS Code and modern R development:
#' \itemize{
#'   \item \strong{Workspace} (00-workspace): A tour of the workspace --- the bash and R Terminals, GitHub Copilot, and the ways to run R code
#'   \item \strong{Workflow} (01-workflow): First tutorial after Workspace --- VS Code, the Terminal, repos, R scripts, plots, and Git
#'   \item \strong{Code} (02-code): Introduction to VS Code and writing R code in simple scripts
#'   \item \strong{Quarto} (03-quarto): Advanced R coding tricks in VS Code and Quarto document creation
#'   \item \strong{Antigravity} (04-antigravity): Meeting the Antigravity CLI agent (agy) and using it to create and render a Quarto analysis
#'   \item \strong{Terminal 1} (05-terminal-1): First of three bash Terminal tutorials: core commands, paths, and output redirection
#'   \item \strong{Terminal 2} (06-terminal-2): Command options, environment variables, looking inside files, and running R and Python programs
#'   \item \strong{Terminal 3} (07-terminal-3): Wildcards, regular expressions, grep, and pipes
#'   \item \strong{GitHub Introduction} (08-github-1): Git and GitHub basics within VS Code
#'   \item \strong{GitHub Advanced} (09-github-2): Advanced Git/GitHub workflows and GitHub Pages
#'   \item \strong{Websites 1} (10-websites-1): Basic website construction using Quarto projects
#'   \item \strong{Websites 2} (11-websites-2): Advanced Quarto websites with modular data analysis
#'   \item \strong{Devcontainers} (12-devcontainers): An introduction to devcontainers, touring a pre-built Jupyter devcontainer.json and building an R devcontainer.json from scratch
#'   \item \strong{Our Codespace Starter} (13-our-codespace-starter): A tour of the devcontainer.json behind codespace-starter itself
#'   \item \strong{The Devcontainer Dockerfile} (14-docker): A reading tour of the Dockerfile that builds the PPBDS devcontainer image
#'   \item \strong{Your Starter} (15-your-starter): Build your own version of codespace-starter (under construction)
#'   \item \strong{Dotfiles} (16-dotfiles): Build a private dotfiles repo GitHub installs into every new Codespace, carrying your Git identity and shell settings
#'   \item \strong{OpenRouter} (17-openrouter): Get an OpenRouter API key, store it safely, and drive aider with it
#'   \item \strong{Models And Money} (18-models): Buy $10 of OpenRouter credits (the only credit card in the course), call the API from bash and R, and compare what the price gap between free and frontier models buys
#' }
#'
#' @section Running Tutorials:
#' To run a tutorial, use:
#' \code{learnr::run_tutorial(name = "short_tutorial_name", package = "vscode.tutorials")}
#'
#' Available tutorial names include: 00-workspace, 01-workflow, 02-code, 03-quarto,
#' 04-antigravity, 05-terminal-1, 06-terminal-2, 07-terminal-3, 08-github-1,
#' 09-github-2, 10-websites-1, 11-websites-2, 12-devcontainers,
#' 13-our-codespace-starter, 14-docker, 15-your-starter, 16-dotfiles,
#' 17-openrouter, and 18-models.
#'
#' @importFrom tutorial.helpers show_file
#' @importFrom usethis use_git_config
#'
#' @keywords internal
"_PACKAGE"
