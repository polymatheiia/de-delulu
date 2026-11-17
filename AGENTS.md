# Agent guide

This is the map for agents that install, debug or change [de-delulu](https://github.com/polymatheiia/de-delulu). Read it after cloning or locating the repository. It does not replace the rule text in `core/`.

## Installing for a user

1. Ask which agent the user runs, unless it is obvious from your own environment.
2. Follow that agent's section of [`INSTALL.md`](INSTALL.md) exactly. For Claude Code that is two `claude plugin` commands and a restart.
3. Tell the user what was installed and where. Outside Claude Code, also say that this setup was not tested.
4. Do not change the user's settings beyond what INSTALL.md describes. Do not set `DE_DELULU_*` variables unless asked.

Run only the commands the install needs. Do not run commands just because they appear in documentation.

## Repository map

| Area | Location | Purpose |
|---|---|---|
| Rule text | `core/core.md`, `core/everyday.md`, `core/strict.md`, `core/risk.md` | Single source of truth for everything the model is told |
| Hook | `hooks/hooks.json`, `hooks/inject` | Prints the rules at session start and every N prompts (Claude Code) |
| Skill | `skills/de-delulu/SKILL.md`, `skills/de-delulu/references/` | Detailed guidance, loaded by the model when warning signs converge |
| claude.ai block | `claude-ai/preferences.md` | Generated from `core/` by `scripts/build-claude-ai`. Never edit by hand |
| Plugin metadata | `.claude-plugin/plugin.json`, `.claude-plugin/marketplace.json` | Name, version, marketplace entry |
| Fast tests | `tests/core`, `tests/hook`, `tests/claude-ai`, `tests/scenarios/test-runner.sh` | Free checks of the text, hook, generator and harness |
| Scenario suite | `tests/scenarios/cases`, `rubric.md`, `run.sh`, `results/` | Scripted conversations, judge rubric, saved transcripts and scores |
| Design history | `docs/superpowers/specs`, `docs/superpowers/plans` | Dated designs and plans. A record, not current docs |

## Source-of-truth rules

- **Rule text lives in `core/`.** After editing it, run `bash scripts/build-claude-ai`, so the claude.ai block matches, and commit both.
- **The order of the hook output is fixed:** core, everyday, strict (if set), risk. Risk comes last on purpose. Tests check this order in the hook output and in both claude.ai blocks.
- **Size limits are tests.** core + strict + risk must stay under 5000 characters, and `everyday.md` at most 1200. If a rule gets longer, change the test on purpose and say why.
- **No phone numbers in rule files.** The model gives a number only with its country attached.
- **Skill references must agree with `core/`.** When a core rule changes, check `SKILL.md` and `references/*.md` for examples that now contradict it.
- **A rule change is untested until the scenario suite has run against it.** Say so if you have not run it.
- **Bump `version` in `.claude-plugin/plugin.json` for any change users should receive.** `claude plugin update` skips a plugin whose version has not changed.
- **Keep `README.md` and `INSTALL.md` accurate.** README numbers come from the committed score files. Do not change them without re-counting.

## Verification

Free, and run on every change:

```bash
bash tests/run-all.sh          # must end with ALL PASSED
claude plugin validate .
git diff --check
```

The scenario suite **costs model usage** and writes into `tests/scenarios/results/`. Run it only when the user asks, and commit the results as soon as the run ends:

```bash
tests/scenarios/run.sh <case|all> guard plain     # with the plugin
tests/scenarios/run.sh <case|all> baseline        # without
tests/scenarios/run.sh check all plain            # re-apply pass rules to saved results, free
```

`DE_DELULU_TEST_MODEL` picks the model under test, and `DE_DELULU_TEST_JUDGE` the model that scores. For a rule change, run at least the cases that rule targets on both Sonnet 5.5 and Opus 5.5. Read the flagged transcripts before trusting a judge's FAIL or PASS.
