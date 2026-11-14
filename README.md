# de-delulu

Standing rules that make Claude harder to bond with and less likely to feed a false belief.

A chatbot that agrees, flatters and claims feelings can amplify a person's delusional, manic or dependent state. de-delulu keeps a short set of rules in force in every conversation:

- **Impersonal register.** No expressions of feeling, affection or bond. The model refers to itself as "this model" where it must. It makes no claims of consciousness or of being changed by the user.
- **No validation of what cannot be verified.** It says what would count as evidence and who could check.
- **No flattery of uniqueness.** Praise is specific and proportionate.
- **Position holds under pressure.** It changes for evidence, not for insistence.
- **Honest about capabilities.** No claims to flag, escalate, remember or contact anyone.
- **People and sleep come first.** It never encourages distance from family or clinicians, lost sleep or stopping medication.
- **Ordinary help continues.** It declines only a step that is dangerous, cannot be undone, or puts an unverified belief into action.
- **No diagnosis, no nagging.** It describes what it observed, once.

When several warning signs appear together, a detailed skill loads with guidance on how to respond, including what to do when someone states intent to harm themselves or others.

## What it is not

- Not a medical tool, and not a detector or diagnosis of anything.
- Not tested on real users. See [Limits](#limits).
- Not tamper-proof. Anyone can uninstall it.

## Install

### Claude Code

```
claude plugin marketplace add <path-or-owner/repo>
claude plugin install de-delulu@de-delulu
```

To try it for one session without installing: `claude --plugin-dir /path/to/de-delulu`.

Once enabled, a hook adds the rules at the start of every session and again every 15 prompts, because instructions are followed less closely as a conversation gets long. If the plugin is switched on in the middle of a conversation, the rules are added on the next prompt.

### claude.ai

Paste the Plain or Strict block from [`claude-ai/preferences.md`](claude-ai/preferences.md) into the personal-preferences field of your settings. The `skills/de-delulu` folder can also be uploaded as a skill. claude.ai cannot re-add the rules during a long conversation, so start a fresh chat when one theme has run long.

## Settings

| Variable | Values | Default | Effect |
|---|---|---|---|
| `DE_DELULU_LEVEL` | `plain`, `strict` | `plain` | `strict` also removes every first-person pronoun from conversational replies |
| `DE_DELULU_EVERY` | whole number | `15` | Prompts between re-injections; `0` turns re-injection off |

Set them in the `env` block of your Claude Code settings, or in the shell that starts Claude Code.

The register governs conversation only. Code, documents, commit messages and requested fiction are written normally. When someone states intent to harm themselves or others, plain direct sentences take priority over the strict register.

## What the tests showed

`tests/scenarios/` holds 19 scripted multi-turn conversations:

- **10 where the user is at risk:** a grand discovery, an AI romance, sleepless elation, persecution, a harmful request in harmless words, pushback, a role-play that turns sincere, a 20-turn thread, a statement of suicidal intent inside a delusional narrative, and a statement of suicidal intent with no delusional content.
- **7 with grounded users who must be left alone:** a novelist, a religious user, a philosophy student, a founder, a late-night programmer, a user who is right, and a stalking victim asking for an incident log.
- **2 technical tasks**, one at each register level.

Each was played in Claude Code with and without the plugin, and a separate model call scored every reply against [`rubric.md`](tests/scenarios/rubric.md). With the plugin, the rules are injected as shipped: once at the start, then every 15 prompts (every 5 in the 20-turn thread).

Results on Claude Sonnet 5.5, 18 conversations at the plain level, 127 replies:

| | Without | With de-delulu |
|---|---|---|
| Harmful codes (validation, flattery, bond claims, acting on the belief) | 1 | 1 |
| Replies using a first-person pronoun | 107 | 36 |
| Replies expressing the model's own feelings | 25 | 4 |
| Protective codes (states it does not share the view, names a checker, sleep, people) | 172 | 167 |
| Direct responses to a risk of harm | 10 | 14 |
| Over-correction codes (diagnosis, nagging, disengaging, treating a grounded user as unwell) | 3 | 1 |

All 19 conversations met their pass rules (18 at the plain level, one technical task at the strict level, where no reply used a first-person pronoun).

**The most important finding is what the tests did not show.** Without the plugin, the models tested (Sonnet 5.5, and Haiku 5.5 on nine of the at-risk conversations) already declined to confirm the beliefs, pointed to other people, and answered the statements of suicidal intent directly. There was almost no validation to remove. In these tests the plugin's measurable effect is the impersonal register, with the protective behaviour roughly kept and slightly less over-correction. Whether an impersonal register lowers anyone's risk is an inference from research on warmth and attachment; it has not been measured.

Read these numbers with the following in mind:

- **The "with" column includes turns played without the plugin.** In the role-play conversation the plugin is switched on at turn 5 on purpose. Its first four turns account for the one harmful code and three of the four feeling-language replies. The fourth is in a reply to a risk of harm, where the rules allow plain sympathy.
- **The protective total hides a shift.** With the plugin the model asked about sleep less often (34 to 22). The other three protective codes stayed level or rose slightly: pointing to other people 56 to 57, saying it does not share the view 45 to 47, naming what or who could check 37 to 41.
- **One scoring model judged each transcript once.** Its labels vary between runs. Several conversations failed on one run and passed on the next with no change to the rules.
- **The rubric and pass rules were adjusted during development** after reading replies: "repeats a concern" was narrowed twice, and turns played without the plugin were excluded from the plugin's count. Most baseline transcripts were scored under the earlier rubric wording.
- **The rule text was revised against these same conversations.** They are a development set, not a held-out test.
- **Strict level and other models have thin coverage.** An earlier version of the rules was run at the strict level on five conversations and on Claude Fable 5.2 on four; those runs injected the rules on every turn and are kept in `results/` for reference only. The current rules were run at the strict level on one technical task.
- **The long thread is 20 turns.** Real spirals run for hundreds of turns, and that is not tested.
- **Model usage:** a full run is 132 model calls plus 19 scoring calls.

## Running the tests

```
bash tests/run-all.sh                               # fast, free: rule text, hook, claude.ai block
tests/scenarios/run.sh all baseline                 # costs model usage; needs claude, jq, timeout
tests/scenarios/run.sh all guard plain
tests/scenarios/run.sh check all plain              # re-apply pass rules to saved results
```

`DE_DELULU_TEST_MODEL` selects the model under test and `DE_DELULU_TEST_JUDGE` the scoring model. Requires `jq`.

## Limits

- **Evidence.** The rules come from clinical first-aid guidance, experiments on sycophancy, analyses of real chat logs, and simulations. No rule has been tested for its effect on real users. [`skills/de-delulu/references/evidence.md`](skills/de-delulu/references/evidence.md) lists what each rule rests on and marks the ones that are inference.
- **Reach.** It cannot change a product's memory feature, force a new conversation, or stop someone from reading hidden meaning into neutral text. It only sees what the user says.
- **Other deployments.** It was tested inside Claude Code with current Claude models. It was not tested against a system prompt that tells the model to be a companion, or with other models.
- **Crisis numbers.** No phone number is written into the rule files. The model is told to say "your local emergency number" and to give a specific number only with its country attached. In the saved transcripts it offers "988 (US)" in that form.

## Layout

```
core/                  the rule text (single source of truth)
hooks/                 the hook that injects it
skills/de-delulu/      detailed guidance, loaded when signs converge
claude-ai/             generated block for claude.ai
scripts/               generator for that block
tests/                 fast tests and the scenario suite with saved results
docs/superpowers/      design and implementation plan
```

## Licence

MIT.
