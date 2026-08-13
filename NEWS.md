# vscode.tutorials (development version)

* Synced the infrastructure tutorials with the current upstream state of
  PPBDS/devcontainers and PPBDS/codespace-starter. The Devcontainer Dockerfile
  tutorial's embedded Dockerfile copy was refreshed (R 4.6 base, Grok CLI,
  pinned aider, dated P3M snapshots, vscode-R watcher shim, easystats
  attach-hook, baked-in R Tutorials extension, first-run notice, R-version
  guard) and its affected exercises updated (FROM line, now-seven version-pin
  ARGs, course-package install with `dependencies = TRUE` and the
  cache-bust knob). Our Codespace Starter now matches the current
  devcontainer.json: image pin 1.1.2, name "Preceptor's Primer", the
  R Tutorials extension's deliberate absence from the extensions list, and
  the retired-but-dormant postCreateCommand (two exercises reworked to read
  the explanatory comments instead of vanished lines). R-version strings in
  example transcripts (prompts, banner, restart messages) updated to 4.6.1.

* Adopted the content of PR #73 (thanks @JacobKhay) by hand, since the PR
  predated two renumberings and the terminal-terminology sweep. The Dotfiles
  tutorial (`16-dotfiles`) is no longer a stub: students build a private
  `dotfiles` repo with an appending `install.sh` and a `.gitconfig`, turn it on
  in account settings, and verify it in a second Codespace. OpenRouter now
  leans on it (same settings page, a three-way comparison of where a key could
  live, "settings in a repo, secrets in a secret store") and warns that "Models
  And Money" needs a credit card. Models And Money now actually buys the $10
  mid-tutorial --- right after the `402 Payment Required` failure --- adds a
  Cheap Models section (the ten cheapest paid models, same prompt at 1/240th of
  Opus's price, running the code yourself in R), renames Paying to What It
  Cost, and caps the key at $2. Cross-references converted from `NN-slug` to
  titles; prompts and terminology aligned with current conventions.

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
