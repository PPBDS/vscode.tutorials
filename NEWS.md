# vscode.tutorials (development version)

* Split `10-infrastructure` into three tutorials. `10-devcontainer` (**Devcontainers**)
  keeps the introduction, the Jupyter Notebook devcontainer tour, and building an R
  devcontainer.json from scratch. `11-codebase-start` (**Codebase Starter
  Devcontainer**) keeps the tour of the devcontainer.json behind `codespace-starter`
  itself. `12-docker` (**The Devcontainer Dockerfile**) is new: a reading tour of the
  actual Dockerfile that builds the `ghcr.io/ppbds/devcontainer` image, covering
  digest pinning, layer ordering, system libraries, permissions, R/Python package
  installs, and the build-time smoke tests. Full sequence is now `01-code`,
  `02-quarto`, `03-terminal`, `04-ai-1`, `05-github-1`, `06-github-2`, `07-ai-2`,
  `08-websites-1`, `09-websites-2`, `10-devcontainer`, `11-codebase-start`,
  `12-docker`.

* Fixed the example Quarto file shown in `02-quarto` Exercise 4: it was
  leaking literal `<pre><code>` tags into the display. It now uses a knitr
  `verbatim` chunk, so the `{r}` code chunks appear cleanly (and are not
  executed).

* `02-quarto` now introduces the **Live Server** extension (right-click
  `quarto-1.html` -> "Open with Live Server") alongside the existing Quarto
  Preview pane, so students meet the browser-based viewing workflow the later
  tutorials rely on.

* Split the AI tutorial into two and reordered the curriculum. `04-ai-1`
  (**AI Introduction**) now comes right after the terminal tutorial and
  introduces the Gemini CLI agent (create and render a Quarto analysis, no
  Git). `07-ai-2` (**AI and Git**) comes after the Git tutorials and uses
  Gemini to run and explain a full Git workflow. Full sequence is now
  `01-code`, `02-quarto`, `03-terminal`, `04-ai-1`, `05-github-1`,
  `06-github-2`, `07-ai-2`, `08-websites-1`, `09-websites-2`,
  `10-devcontainer`, `11-codebase-start`, `12-docker`.

* The Git tutorials (`05-github-1`, `06-github-2`) now note that either AI
  approach --- a chat window with copy/paste, or the Gemini CLI agent --- is
  fine, since students have met the agent in `04-ai-1`.

* Reduced the advanced websites tutorial (`09-websites-2`) from three
  websites to two, folding the RDS/script workflow into Website 2.

* Refreshed the package-level documentation to list all ten tutorials.


# vscode.tutorials 0.0.2

* Renamed package from `positron.tutorials` to `vscode.tutorials`.

* Removed `renv` configuration.

# vscode.tutorials 0.0.1

* Initial release.
