# vscode.tutorials (development version)

* GitHub Introduction's "Using Git" section is rebuilt around two
  Codespaces. Students open a raw `codespace-starter` Codespace beside their
  usual one and, for each thing `connect-repo` does (drop the built-in token,
  sign in, store the credential, create the repo, copy `AGENTS.md`), look at
  the raw machine, look at their own, and then make the raw one match by
  hand. `connect-repo --help` is gone from the tutorial.

* Dotfiles is rewritten as the graduation from `connect-repo` and moves to
  directly after GitHub Advanced (ordering 11). A private `dotfiles` repo
  delivers an install script that appends `bashrc` and `gitconfig` fragments,
  a new section stores a GitHub token and the student's Census API key as
  the Codespaces secrets `GH_TOKEN` and `CENSUS_API_KEY`, the `bashrc`
  fragment defines `agyd` as `agy --dangerously-skip-permissions`, and a
  fresh Codespace arrives signed in as the student with tidycensus ready. Websites 1 and 2
  and the four devcontainer tutorials shift down one slot each.

* GitHub Advanced's sign-in recipe gains the line that writes the token into
  `~/.git-credentials`, and its Summary points at Dotfiles.

* Editorial pass over every tutorial: an exercise asks the student to paste
  one thing (two-ask questions were split, adding a dozen exercises across
  Code, Devcontainers, Our Codespace Starter, The Devcontainer Dockerfile,
  GitHub Introduction, and Models And Money), prose has almost no semicolons,
  filler sentences are gone, and every question's `text` is a complete copy
  of its prompt. The repo line no longer says "You may need to restart this
  tutorial after you do so," which was a learnr artifact.

* Stale image pins in GitHub Advanced and Our Codespace Starter now match
  codespace-starter (1.3.1).

* Every code block now says what it is: commands carry their language
  (`bash`, `r`, `yaml`, `json`, `dockerfile`, `ini`, `markdown`), text to
  type that is in no language (AI prompts, commit messages) is `default`,
  and transcripts and the answers shown after Continue are `{.output}`,
  which renders lighter and without a copy button. The 575 bare fences are
  gone, so `learnr2::check_tutorial()` runs clean.

* Questions that had the student copy text out of a web page now ask for a
  screenshot instead: the `ggsave()` help page (Code), the first cell of the
  Jupyter notebook (Devcontainers), the Dotfiles setting and the Codespaces
  list after a deletion (Dotfiles), the key's credit limit (Models And
  Money), and the Data Training settings and the Codespaces secret
  (OpenRouter). Every screenshot question is now image-only
  (`allow_text = FALSE`), and the first one in each tutorial says how to take
  a screenshot and paste it. Needs the learnr2 that ships
  `allow_text`.

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
