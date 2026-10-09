# vscode.tutorials (development version)

* Each tutorial's place in the sequence now comes from `learnr2: ordering:`
  in its YAML header, so the directories lost their numeric prefixes
  (`01-orientation` is now `orientation`, and so on). Run tutorials by the new
  names, e.g. `learnr2::run_tutorial("workflow", package = "vscode.tutorials")`.

* The Devcontainer Dockerfile tutorial's copy of the Dockerfile is refreshed to
  the image without learnr.

* Rebuilt every tutorial on **learnr2**, which renders each one to a static
  Quarto page whose code runs in the browser via WebR. **learnr2** is the
  package's only tutorial dependency (it also supplies `show_file()`), and the
  tests and CI render tutorials with `learnr2::check_tutorial()` and
  `learnr2::render_tutorials()`. The previous version is tagged
  `last-learnr-version`.

* Renamed the Workspace tutorial to Orientation and renumbered every tutorial
  directory to start from 01 (`01-orientation` through `19-models`). Tutorial
  ids changed with the directories, so stored answers for earlier ids do not
  carry over.

* Rebuilt the curriculum into nineteen tutorials, after several rounds of
  splitting, renaming, and renumbering: Workspace, Workflow, Code, Quarto,
  Antigravity, Terminal 1-3, GitHub Introduction/Advanced, Websites 1-2, the
  devcontainer arc (Devcontainers through Your Starter), Dotfiles, OpenRouter,
  and Models And Money.

* Code and Quarto now practice Git throughout: Source Control UI commits at
  each milestone, `.gitignore` at the first render, and no bash git commands
  before GitHub Introduction. Quarto builds two documents instead of three
  and publishes the second.

* Dotfiles is a full tutorial (was a stub), with OpenRouter and Models And
  Money reworked around it --- the latter now includes a real $10 credit
  purchase. Thanks @JacobKhay (PR #73).

* Adopted a fixed vocabulary for the VS Code terminal machinery (Panel,
  Terminal view, terminal, bash Terminal, R Terminal), recorded in CLAUDE.md.

* Synced the devcontainer tutorials with upstream PPBDS/devcontainers and
  PPBDS/codespace-starter: R 4.6.1, image pin 1.1.2, refreshed embedded
  Dockerfile.


# vscode.tutorials 0.0.2

* Renamed package from `positron.tutorials` to `vscode.tutorials`.

* Removed `renv` configuration.

# vscode.tutorials 0.0.1

* Initial release.
