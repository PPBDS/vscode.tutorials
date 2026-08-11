# vscode.tutorials (development version)

* Renamed the first two tutorials for content, matching Code and Quarto:
  `00-getting-started` (recently moved in from `tutorial.helpers`) is now
  **Workspace** (`00-workspace`) and `01-introduction` is now **Workflow**
  (`01-workflow`). The Workflow tutorial's work repo is accordingly named
  `workflow`. Cross-references in other tutorials, README, package docs, and
  CLAUDE.md updated.

* Moved Antigravity to position 04, directly after Quarto. `07-antigravity` is
  now `04-antigravity`, and the terminal trio shifted down one:
  `05-terminal-1`, `06-terminal-2`, `07-terminal-3` (YAML ids renumbered to
  match, per the one-id-one-directory rule). Tutorials 08 and later keep their
  numbers. Also refreshed README.Rmd/README.md and the package-level
  documentation --- both still described the previous renumbering --- and
  replaced leftover `NN-slug` cross-references in tutorial prose with tutorial
  titles.

* Terminology sweep: adopted one fixed vocabulary for the VS Code terminal
  machinery --- the **Panel** (bottom region) holds the **Terminal** view;
  lowercase "terminal" is one session inside it, selected by its tab; a
  **bash Terminal** / **R Terminal** is a terminal running that program.
  Instructions now always name which terminal to type in ("In the bash
  Terminal, run ..."), the Introduction and Terminal 1 definitional passages
  now agree, and Terminal 1 teaches the terminal-vs-shell distinction.
  Convention recorded in CLAUDE.md.

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
  `10-infrastructure`.

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
