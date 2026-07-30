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

- **Introduction** (01-introduction): First tutorial after Getting
  Started — VS Code, the Terminal, repos, R scripts, plots, and Git

- **Code** (02-code): Introduction to VS Code and writing R code in
  simple scripts

- **Quarto** (03-quarto): Advanced R coding tricks in VS Code and Quarto
  document creation

- **Terminal Introduction** (04-terminal-1): Command line fundamentals

- **Terminal Advanced** (05-terminal-2): More command line: paths,
  options, wildcards, and regular expressions

- **Antigravity** (06-antigravity): Meeting the Antigravity CLI agent
  (agy) and using it to create and render a Quarto analysis

- **GitHub Introduction** (07-github-1): Git and GitHub basics within VS
  Code

- **VS Code and GitHub Advanced** (08-github-2): Advanced Git/GitHub
  workflows and GitHub Pages

- **Quarto Websites Introduction** (09-websites-1): Basic website
  construction using Quarto projects

- **Quarto Websites Advanced** (10-websites-2): Advanced Quarto websites
  with modular data analysis

- **Devcontainers** (11-devcontainers): An introduction to
  devcontainers, touring a pre-built Jupyter devcontainer.json and
  building an R devcontainer.json from scratch

- **Our Codespace Starter** (12-our-codespace-starter): A tour of the
  devcontainer.json behind codespace-starter itself

- **The Devcontainer Dockerfile** (13-docker): A reading tour of the
  Dockerfile that builds the PPBDS devcontainer image

## Running Tutorials

To run a tutorial, use:
`learnr::run_tutorial(name = "short_tutorial_name", package = "vscode.tutorials")`

Available tutorial names include: 01-introduction, 02-code, 03-quarto,
04-terminal-1, 05-terminal-2, 06-antigravity, 07-github-1, 08-github-2,
09-websites-1, 10-websites-2, 11-devcontainers,
12-our-codespace-starter, and 13-docker.

## See also

Useful links:

- <https://ppbds.github.io/vscode.tutorials/>

- <https://github.com/PPBDS/vscode.tutorials>

- Report bugs at <https://github.com/PPBDS/vscode.tutorials/issues>

## Author

**Maintainer**: David Kane <dave.kane@gmail.com>
([ORCID](https://orcid.org/0000-0002-6660-3934)) \[copyright holder\]
