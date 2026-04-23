# VS Code Tutorials

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
[`learnr::run_tutorial()`](https://pkgs.rstudio.com/learnr/reference/run_tutorial.html),
providing the short name of the tutorial and the package name.

``` R
learnr::run_tutorial(name = "01-code",
                     package = "vscode.tutorials")
```

### VS Code Tutorials

The core tutorials introduce students to the VS Code integrated
development environment.

- *VS Code and Scripts* (“01-code”). Introduce students to VS Code and
  to writing R code in simple scripts.

- *VS Code and Quarto* (“02-quarto”). Demonstrate more tricks for
  working with R code using VS Code, and also explain Quarto documents.

- *Terminal* (“03-terminal”). Teach the command line.

- *VS Code and GitHub Introduction* (“04-github-1”). Explain the basics
  of Git and GitHub, mostly in the context of VS Code.

- *VS Code and GitHub Advanced* (“05-github-2”). Provide more practice
  in working with Git/GitHub, including more details on the use of
  GitHub Pages.

- *Quarto Websites Introduction* (“06-websites-1”). Demonstrate the
  basics of website construction using Quarto projects.

- *Quarto Websites Advanced* (“07-websites-2”). Practice Quarto
  websites, with a focus on splitting data analysis tasks into separate
  files.

### R for Data Science

These tutorials cover material from [*R for Data Science
(2e)*](https://r4ds.hadley.nz/) (R4DS) by Hadley Wickham, Mine
Çetinkaya-Rundel, and Garrett Grolemund. There are five related
tutorials in the package: `r4ds-1`, `r4ds-2`, `r4ds-3`, `r4ds-4`, and
`r4ds-5`. Different tutorials cover different chapters from the book as
follows.

#### r4ds-1

Data import  
Data visualization  
Data transformations  
Data tidying

#### r4ds-2

Spreadsheets  
Layers  
Exploratory data analysis  
Communication

#### r4ds-3

Databases  
Logical vectors  
Numbers  
Strings  
Regular expressions

#### r4ds-4

Arrow  
Factors  
Dates and times  
Missing values  
Joins

#### r4ds-5

Hierarchical-data  
Web scraping  
Functions  
Iterations

The organization of the tutorials is not the same as the organization of
R4DS. Instead, each tutorial begins by sourcing data from a different
sort of storage technology and then working with that data.

### Analyzing US Census Data

We have one tutorial, `tidycensus-1`, covering material from [*Analyzing
US Census Data: Methods, Maps, and Models in
R*](https://walker-data.com/census-r/index.html) by Kyle Walker.
