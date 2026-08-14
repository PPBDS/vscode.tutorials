# vscode.tutorials (development version)

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
