#' VS Code Tutorials
#'
#' A comprehensive collection of interactive tutorials covering VS Code and modern
#' development workflows. The tutorials are built with the learnr2 package, which
#' renders each one to a static page whose code runs in the browser via WebR.
#'
#' @description
#' The vscode.tutorials package provides interactive tutorials focused on VS Code
#' and modern development tools, covering scripts, Quarto documents, the terminal,
#' Git, GitHub, and Quarto websites.
#'
#' @section VS Code and Development Tools Tutorials:
#' The package includes tutorials focused on VS Code and modern R development:
#' \itemize{
#'   \item \strong{Orientation} (orientation): A tour of the workspace --- the bash and R Terminals, GitHub Copilot, and the ways to run R code
#'   \item \strong{Workflow} (workflow): First tutorial after Orientation --- VS Code, the Terminal, repos, R scripts, plots, and Git
#'   \item \strong{Code} (code): Introduction to VS Code and writing R code in simple scripts
#'   \item \strong{Quarto} (quarto): Advanced R coding tricks in VS Code and Quarto document creation
#'   \item \strong{Antigravity} (antigravity): Meeting the Antigravity CLI agent (agy) and using it to create and render a Quarto analysis
#'   \item \strong{Terminal 1} (terminal-1): First of three bash Terminal tutorials: core commands, paths, and output redirection
#'   \item \strong{Terminal 2} (terminal-2): Command options, environment variables, looking inside files, and running R and Python programs
#'   \item \strong{Terminal 3} (terminal-3): Wildcards, regular expressions, grep, and pipes
#'   \item \strong{GitHub Introduction} (github-1): Git and GitHub basics within VS Code
#'   \item \strong{GitHub Advanced} (github-2): Advanced Git/GitHub workflows and GitHub Pages
#'   \item \strong{Websites 1} (websites-1): Basic website construction using Quarto projects
#'   \item \strong{Websites 2} (websites-2): Advanced Quarto websites with modular data analysis
#'   \item \strong{Devcontainers} (devcontainers): An introduction to devcontainers, touring a pre-built Jupyter devcontainer.json and building an R devcontainer.json from scratch
#'   \item \strong{Our Codespace Starter} (our-codespace-starter): A tour of the devcontainer.json behind codespace-starter itself
#'   \item \strong{The Devcontainer Dockerfile} (docker): A reading tour of the Dockerfile that builds the PPBDS devcontainer image
#'   \item \strong{Your Starter} (your-starter): Build your own version of codespace-starter (under construction)
#'   \item \strong{Dotfiles} (dotfiles): Build a private dotfiles repo GitHub installs into every new Codespace, carrying your Git identity and shell settings
#'   \item \strong{OpenRouter} (openrouter): Get an OpenRouter API key, store it safely, and drive aider with it
#'   \item \strong{Models And Money} (models): Buy $10 of OpenRouter credits (the only credit card in the course), call the API from bash and R, and compare what the price gap between free and frontier models buys
#' }
#'
#' @section Running Tutorials:
#' To run a tutorial, use:
#' \code{learnr2::run_tutorial(name = "short_tutorial_name", package = "vscode.tutorials")}
#'
#' Available tutorial names include: orientation, workflow, code, quarto,
#' antigravity, terminal-1, terminal-2, terminal-3, github-1,
#' github-2, websites-1, websites-2, devcontainers,
#' our-codespace-starter, docker, your-starter, dotfiles,
#' openrouter, and models.
#'
#' @importFrom learnr2 show_file
#' @importFrom usethis use_git_config
#'
#' @keywords internal
"_PACKAGE"
