# VS Code Tutorials

The vscode.tutorials package provides interactive tutorials focused on
VS Code and modern development tools, covering scripts, Quarto
documents, the terminal, Git, GitHub, and Quarto websites.

## Details

A comprehensive collection of interactive tutorials covering VS Code and
modern development workflows. The tutorials are built with the learnr2
package, which renders each one to a static page whose code runs in the
browser via WebR.

## VS Code and Development Tools Tutorials

The package includes tutorials focused on VS Code and modern R
development:

- **Orientation** (01-orientation): A tour of the workspace — the bash
  and R Terminals, GitHub Copilot, and the ways to run R code

- **Workflow** (02-workflow): First tutorial after Orientation — VS
  Code, the Terminal, repos, R scripts, plots, and Git

- **Code** (03-code): Introduction to VS Code and writing R code in
  simple scripts

- **Quarto** (04-quarto): Advanced R coding tricks in VS Code and Quarto
  document creation

- **Antigravity** (05-antigravity): Meeting the Antigravity CLI agent
  (agy) and using it to create and render a Quarto analysis

- **Terminal 1** (06-terminal-1): First of three bash Terminal
  tutorials: core commands, paths, and output redirection

- **Terminal 2** (07-terminal-2): Command options, environment
  variables, looking inside files, and running R and Python programs

- **Terminal 3** (08-terminal-3): Wildcards, regular expressions, grep,
  and pipes

- **GitHub Introduction** (09-github-1): Git and GitHub basics within VS
  Code

- **GitHub Advanced** (10-github-2): Advanced Git/GitHub workflows and
  GitHub Pages

- **Websites 1** (11-websites-1): Basic website construction using
  Quarto projects

- **Websites 2** (12-websites-2): Advanced Quarto websites with modular
  data analysis

- **Devcontainers** (13-devcontainers): An introduction to
  devcontainers, touring a pre-built Jupyter devcontainer.json and
  building an R devcontainer.json from scratch

- **Our Codespace Starter** (14-our-codespace-starter): A tour of the
  devcontainer.json behind codespace-starter itself

- **The Devcontainer Dockerfile** (15-docker): A reading tour of the
  Dockerfile that builds the PPBDS devcontainer image

- **Your Starter** (16-your-starter): Build your own version of
  codespace-starter (under construction)

- **Dotfiles** (17-dotfiles): Build a private dotfiles repo GitHub
  installs into every new Codespace, carrying your Git identity and
  shell settings

- **OpenRouter** (18-openrouter): Get an OpenRouter API key, store it
  safely, and drive aider with it

- **Models And Money** (19-models): Buy \$10 of OpenRouter credits (the
  only credit card in the course), call the API from bash and R, and
  compare what the price gap between free and frontier models buys

## Running Tutorials

To run a tutorial, use:
`learnr2::run_tutorial(name = "short_tutorial_name", package = "vscode.tutorials")`

Available tutorial names include: 01-orientation, 02-workflow, 03-code,
04-quarto, 05-antigravity, 06-terminal-1, 07-terminal-2, 08-terminal-3,
09-github-1, 10-github-2, 11-websites-1, 12-websites-2,
13-devcontainers, 14-our-codespace-starter, 15-docker, 16-your-starter,
17-dotfiles, 18-openrouter, and 19-models.

## See also

Useful links:

- <https://ppbds.github.io/vscode.tutorials/>

- <https://github.com/PPBDS/vscode.tutorials>

- Report bugs at <https://github.com/PPBDS/vscode.tutorials/issues>

## Author

**Maintainer**: David Kane <dave.kane@gmail.com>
([ORCID](https://orcid.org/0000-0002-6660-3934)) \[copyright holder\]
