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

- **Orientation** (orientation): A tour of the workspace — the bash and
  R Terminals, GitHub Copilot, and the ways to run R code

- **Workflow** (workflow): First tutorial after Orientation — VS Code,
  the Terminal, repos, R scripts, plots, and Git

- **Code** (code): Introduction to VS Code and writing R code in simple
  scripts

- **Quarto** (quarto): Advanced R coding tricks in VS Code and Quarto
  document creation

- **Antigravity** (antigravity): Meeting the Antigravity CLI agent (agy)
  and using it to create and render a Quarto analysis

- **Terminal 1** (terminal-1): First of three bash Terminal tutorials:
  core commands, paths, and output redirection

- **Terminal 2** (terminal-2): Command options, environment variables,
  looking inside files, and running R and Python programs

- **Terminal 3** (terminal-3): Wildcards, regular expressions, grep, and
  pipes

- **GitHub Introduction** (github-1): Git and GitHub basics within VS
  Code

- **GitHub Advanced** (github-2): Advanced Git/GitHub workflows and
  GitHub Pages

- **Websites 1** (websites-1): Basic website construction using Quarto
  projects

- **Websites 2** (websites-2): Advanced Quarto websites with modular
  data analysis

- **Devcontainers** (devcontainers): An introduction to devcontainers,
  touring a pre-built Jupyter devcontainer.json and building an R
  devcontainer.json from scratch

- **Our Codespace Starter** (our-codespace-starter): A tour of the
  devcontainer.json behind codespace-starter itself

- **The Devcontainer Dockerfile** (docker): A reading tour of the
  Dockerfile that builds the PPBDS devcontainer image

- **Your Starter** (your-starter): Build your own version of
  codespace-starter (under construction)

- **Dotfiles** (dotfiles): Build a private dotfiles repo GitHub installs
  into every new Codespace, carrying your Git identity and shell
  settings

- **OpenRouter** (openrouter): Get an OpenRouter API key, store it
  safely, and drive aider with it

- **Models And Money** (models): Buy \$10 of OpenRouter credits (the
  only credit card in the course), call the API from bash and R, and
  compare what the price gap between free and frontier models buys

## Running Tutorials

To run a tutorial, use:
`learnr2::run_tutorial(name = "short_tutorial_name", package = "vscode.tutorials")`

Available tutorial names include: orientation, workflow, code, quarto,
antigravity, terminal-1, terminal-2, terminal-3, github-1, github-2,
websites-1, websites-2, devcontainers, our-codespace-starter, docker,
your-starter, dotfiles, openrouter, and models.

## See also

Useful links:

- <https://ppbds.github.io/vscode.tutorials/>

- <https://github.com/PPBDS/vscode.tutorials>

- Report bugs at <https://github.com/PPBDS/vscode.tutorials/issues>

## Author

**Maintainer**: David Kane <dave.kane@gmail.com>
([ORCID](https://orcid.org/0000-0002-6660-3934)) \[copyright holder\]
