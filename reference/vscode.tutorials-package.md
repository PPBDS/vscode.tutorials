# VS Code Tutorials

The vscode.tutorials package provides interactive tutorials focused on
VS Code and modern development tools, covering scripts, Quarto
documents, the terminal, Git, GitHub, and Quarto websites.

## Details

A comprehensive collection of interactive tutorials covering VS Code and
modern development workflows. This package makes extensive use of the
tools in the tutorial.helpers package.

## VS Code and Development Tools Tutorials

The package includes tutorials focused on VS Code and modern R
development:

- **Workspace** (00-workspace): A tour of the workspace — the bash and R
  Terminals, GitHub Copilot, and the ways to run R code

- **Workflow** (01-workflow): First tutorial after Workspace — VS Code,
  the Terminal, repos, R scripts, plots, and Git

- **Code** (02-code): Introduction to VS Code and writing R code in
  simple scripts

- **Quarto** (03-quarto): Advanced R coding tricks in VS Code and Quarto
  document creation

- **Antigravity** (04-antigravity): Meeting the Antigravity CLI agent
  (agy) and using it to create and render a Quarto analysis

- **Terminal 1** (05-terminal-1): First of three bash Terminal
  tutorials: core commands, paths, and output redirection

- **Terminal 2** (06-terminal-2): Command options, environment
  variables, looking inside files, and running R and Python programs

- **Terminal 3** (07-terminal-3): Wildcards, regular expressions, grep,
  and pipes

- **GitHub Introduction** (08-github-1): Git and GitHub basics within VS
  Code

- **GitHub Advanced** (09-github-2): Advanced Git/GitHub workflows and
  GitHub Pages

- **Websites 1** (10-websites-1): Basic website construction using
  Quarto projects

- **Websites 2** (11-websites-2): Advanced Quarto websites with modular
  data analysis

- **Devcontainers** (12-devcontainers): An introduction to
  devcontainers, touring a pre-built Jupyter devcontainer.json and
  building an R devcontainer.json from scratch

- **Our Codespace Starter** (13-our-codespace-starter): A tour of the
  devcontainer.json behind codespace-starter itself

- **The Devcontainer Dockerfile** (14-docker): A reading tour of the
  Dockerfile that builds the PPBDS devcontainer image

- **Your Starter** (15-your-starter): Build your own version of
  codespace-starter (under construction)

- **Dotfiles** (16-dotfiles): Personalize every Codespace with a
  dotfiles repo (under construction)

- **OpenRouter** (17-openrouter): Get an OpenRouter API key, store it
  safely, and drive aider with it

- **Models And Money** (18-models): Call OpenRouter directly from bash
  and R, and compare model prices

## Running Tutorials

To run a tutorial, use:
`learnr::run_tutorial(name = "short_tutorial_name", package = "vscode.tutorials")`

Available tutorial names include: 00-workspace, 01-workflow, 02-code,
03-quarto, 04-antigravity, 05-terminal-1, 06-terminal-2, 07-terminal-3,
08-github-1, 09-github-2, 10-websites-1, 11-websites-2,
12-devcontainers, 13-our-codespace-starter, 14-docker, 15-your-starter,
16-dotfiles, 17-openrouter, and 18-models.

## See also

Useful links:

- <https://ppbds.github.io/vscode.tutorials/>

- <https://github.com/PPBDS/vscode.tutorials>

- Report bugs at <https://github.com/PPBDS/vscode.tutorials/issues>

## Author

**Maintainer**: David Kane <dave.kane@gmail.com>
([ORCID](https://orcid.org/0000-0002-6660-3934)) \[copyright holder\]
