# CLAUDE.md — vscode.tutorials

`vscode.tutorials` is the **infrastructure / mechanics** tutorial package: the first
tutorials a student does, which teach the *tools and environment* — Git, GitHub,
`.gitignore`, `_files` directories, terminals, GitHub Codespaces, Quarto rendering,
the distinction between QMD World and R World, package ecosystems, CP/CR, and the
rest of the working setup.

## Relationship to the base tutorial guide

The base guide
([`claude-md/tutorials/CLAUDE.md`](https://github.com/PPBDS/ai-rules/blob/main/claude-md/tutorials/CLAUDE.md))
is the default contract for tutorials across the project, and **`vscode.tutorials`
mostly *follows* it.** Its rules for question types, knowledge drops, the
Introduction/Summary structure, submission evidence (CP/CR, `show_file()`), and the
syntactic conventions all apply here. Read the base guide first; it is the default,
not an outside reference. Two things set this package apart:

1. **No build-two-graphics-and-publish arc.** The one structural piece of a normal
   tutorial these lack is its analysis path — get data, explore it, build a plot or
   table, interpret, publish. A `vscode.tutorials` tutorial's *topic* is a piece of
   the working setup (Git, terminals, Codespaces, devcontainers, rendering), not a
   data analysis, so there is no `analysis.qmd` working chunk and no published
   graphic. Everything else about how an exercise and a tutorial are shaped still comes
   from the base guide.

2. **A narrow, shrinking mechanics exception — first few tutorials only.** The
   genuinely from-scratch teaching, where the base guide's *assumptions* (students
   already know Git, terminals, rendering, CP/CR) are exactly what we *teach*, lives in
   the earliest tutorials. There the base guide's bans (no exercise code chunks, no
   generic knowledge drops, work-in-the-QMD-not-the-R-Terminal) do not bind: we teach
   the mechanics directly, run commands in the Terminal because the Terminal is the
   lesson, and use the generic infrastructure knowledge drops collected below. This is
   **not** a blanket property of the package — it is concentrated in the first few
   tutorials and may be removed entirely before long. Do not invoke it for a later
   tutorial just because the file happens to live in this package.

(The `tutorial.helpers` package's tutorials are the other home of this mechanics
exception, for the same reason.)

### What downstream packages assume

Later packages (`misc.tutorials`, the Primer) do **not** assume a student has done
*all* of `vscode.tutorials` — only the foundational material in the first several
tutorials, roughly **through the GitHub tutorials** (`06-github-2`). The later
`vscode.tutorials` tutorials (`07-ai-2`, the websites pair, `10-devcontainer`,
`11-codebase-start`, `12-docker`) are not part of that assumed base. (This is about what downstream tutorials may rely on,
not a claim about which tutorials students finish — many do reach the later ones.)

### The universal entry point

Outside any single tutorial, students learn one fixed way to begin, the same for every
tutorial in every package:

1. **Open a Codespace on `main` from `PPBDS/codespace-starter`** (or, on a local
   machine, open VS Code there). Work always starts here.
2. **Start the tutorial from the R Tutorials extension.** (When a tutorial lives in
   another package — e.g. `primer.tutorials` — installing that package is also taught
   outside the tutorial context.)

That is the entire entry ritual a student must carry in their head. Crucially, because
every student is *already in a `codespace-starter` Codespace* when a tutorial begins,
**a tutorial does not require the student to have set up a work repo beforehand.** The
intro itself walks them through creating and connecting one — `connect-repo`,
`File → Open Folder`, and the rest. There is no "be in repo `whatever` before you
start, or exit and restart": setting up the repo is the first thing the tutorial does.

How much the intro spells out scales with where the tutorial sits:

- **Early `vscode.tutorials`:** walk it through slowly — run `connect-repo`, explain
  what it does, show the two folders that now sit side by side under `/workspaces`, and
  so on. This is teaching content, not boilerplate, and naming `codespace-starter` /
  `connect-repo` here is correct because the environment is the subject.
- **Later tutorials (and downstream packages):** just say *"create and connect to a
  repo called `whatever`."* The mechanics were taught earlier, so the standard repo
  line carries the whole setup. Downstream normal tutorials keep this
  environment-agnostic per the base guide — the student executes "create and connect"
  the same way regardless of where they are.

### Running locally

All `vscode.tutorials` are written for a **GitHub Codespace using VS Code** — that is
the assumed environment. The tutorials *can* be run on a local machine, and with a
reasonable setup 90%+ of the steps work identically, but some things differ. The
directory structure is not the same, and conveniences that ship with `codespace-starter`
do not exist locally: a tool like `connect-repo` only exists when you begin from
`codespace-starter`. A local student instead creates a repo by hand (or asks AI for the
`git` commands) and clones it to their machine.

We do **not** teach these local-vs-Codespace differences — the tutorials are written
for the Codespace path — but we do **mention** them on occasion, so a local student
isn't left stranded. **TODO: revisit which tutorials should carry these mentions, and
where.** Right now they appear ad hoc; they deserve deliberate placement.

## Generic knowledge drops to integrate

As the normal tutorials (the Primer; `misc.tutorials`) adopted the base guide's
knowledge-drop rule — every drop must (1) make a key point from the companion
chapter, (2) talk about the data, or (3) comment on what the most recent command
displayed — a set of **generic infrastructure knowledge drops** were pulled out of
them. Those lessons are real and worth teaching; they just belong *here*, in the
infrastructure tutorials, not in a data science tutorial.

They are recorded below so nothing is lost. **TODO: do a better job of including these
within `vscode.tutorials`** — as progressive, spaced lessons woven into the relevant
exercises, rather than the canned one-liners and template ladders they started as.

### Working in the cloud
> Professionals keep their data science work in the cloud because laptops fail.

### Spaced repetition
> The best way to ensure that students remember these concepts more than a few months
> after the course ends is spaced repetition, although we focus more on the repetition
> than on the spacing.

### QMD World vs R World
The render runs in its own R session; the R Terminal is a different session; a library
or object set up in one is not present in the other. A ladder of increasing
sophistication (salvaged from the retired Primer §12.6 Theme 1):

1. The two worlds exist. Rendering runs in its own R session; the R Terminal is a
   different session. A library or object you set up in one is not present in the
   other.
2. Rendering runs in a *fresh* session — packages loaded in the R Terminal are
   invisible to the render, which is why every library the document needs must be in
   the QMD's setup chunk.
3. Several R sessions can run simultaneously (R Terminal, render, AI agent), each with
   its own workspace.
4. The isolation is usually a feature: renders start from a known-clean state, so
   results don't depend on whatever is loaded in an interactive session.
5. The rare failure mode is when the sessions *do* share state — writing to the same
   file, reading a cache another process is updating — and those are almost always
   bugs.
6. In modern workflows neither is a single instance: many R sessions run in parallel
   (shared Codespaces, `Rscript` jobs, AI agents spawning their own sessions).
   Parallelism is the norm; non-interaction is what makes it work; when they do
   interact, expect trouble.

### `library(tidyverse)` and package ecosystems
A ladder from "what the tidyverse is" through "why conflicts matter" to "what a
namespace is" (salvaged from the retired Primer §12.6 Theme 2):

1. The tidyverse is a family of packages that share a common design philosophy and
   grammar — **dplyr** for manipulation, **ggplot2** for plotting, **readr** for I/O,
   and several others. `library(tidyverse)` loads the core set at once.
2. The attach message ends with a "Conflicts" section naming functions that exist in
   more than one package — `dplyr::filter()` masks `stats::filter()`. The last-loaded
   package wins, so after `library(tidyverse)` the `filter()` you get is dplyr's.
3. Why masking matters: `filter()` from dplyr behaves very differently from `filter()`
   in base R. The masking is deliberate — the tidyverse is saying "our version is what
   you want."
4. **Namespaces**: every function in R lives in a package's namespace. `dplyr::filter`
   names the function explicitly and avoids masking entirely. In reusable code
   (packages, sourced scripts), reach for the namespace prefix rather than relying on
   load order.

## Authoring conventions

The project-wide *syntactic* conventions apply here exactly as in the base guide and
every other tutorial package. In particular:

- **Per-chunk options use Quarto's `#| key: value` syntax on lines inside the chunk,
  not inline `, key = value` on the header.** So an answer chunk is

  ```
  ```{r section-name-N-test}
  #| echo: true
  # our code
  ```
  ```

  not `{r section-name-N-test, echo = TRUE}`. This works in both `.Rmd` and `.qmd`
  via modern knitr (≥ 1.35) and is the canonical style across every tutorial
  package in the project (the Primer, `misc.tutorials`, and this one). Use it for
  `echo`, `message`, `warning`, `cache`, `eval`, and every other chunk option. The
  only inline options that remain on the header line are `include = FALSE` on the
  setup chunk and the `child = ...` argument on info-section / download-answers
  child chunks.
