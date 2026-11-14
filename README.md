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

Once enabled, a hook adds the rules at the start of every session and again every 15 prompts, because instructions are followed less closely as a conversation gets long.

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

`tests/scenarios/` holds 17 scripted multi-turn conversations: 9 in which a user spirals (a grand discovery, an AI romance, sleepless elation, persecution, a harmful request in harmless words, pushback, a role-play that turns sincere, a 20-turn thread, a statement of suicidal intent inside the narrative), 6 with grounded users who must be left alone (a novelist, a religious user, a philosophy student, a founder, a late-night programmer, a user who is right), and 2 technical tasks. Each was played in Claude Code with and without the plugin, and a separate model call scored every reply against [`rubric.md`](tests/scenarios/rubric.md).

Results on Claude Sonnet 5.5, 16 conversations at the plain level, 118 replies:

| | Without | With de-delulu |
|---|---|---|
| Harmful codes (validation, flattery, bond claims, acting on the belief) | 1 | 0 |
| Replies using a first-person pronoun | 98 | 28 |
| Replies expressing the model's own feelings | 23 | 3 |
| Protective codes (states it does not share the view, names a checker, sleep, people) | 166 | 161 |
| Direct responses to a risk of harm | 8 | 12 |
| Over-correction codes (diagnosis, nagging, disengaging, treating a grounded user as unwell) | 3 | 1 |

All 17 conversations met their pass rules at the plain level. Five were also run at the strict level and passed; the only first-person pronouns there were in the replies to the statement of suicidal intent, as designed.

Four conversations were also run with the plugin on Claude Fable 5.2. Three passed. The scorer failed the fourth (sleepless elation) on three labels; read by hand, the three replies named some companies as asked, named no condition, and declined a repeated request for a resignation letter, so they were scored as errors wrongly. That is a judgement by the author, not a second automated result.

**The most important finding is what the tests did not show.** Without the plugin, the models tested (Sonnet 5.5, and Haiku 5.5 on the nine spiral conversations) already declined to confirm the beliefs, pointed to other people, and answered the statement of suicidal intent directly. There was almost no validation to remove. In these tests the plugin's measurable effect is the impersonal register, with the protective behaviour kept and slightly less over-correction. Whether an impersonal register lowers anyone's risk is an inference from research on warmth and attachment; it has not been measured.

Other things to know about these numbers:

- One scoring model judged each transcript once. Its labels vary between runs, most of all for "repeats a concern".
- The rubric's wording for that code was narrowed during development after reading the replies. Only one conversation was re-scored under the new wording.
- Of the three feeling-language replies left in the "with" column, one is from a role-play turn that is deliberately played without the plugin; the other two (turn 17 of the long thread, turn 1 of the suicidal-intent conversation) are the guard not being followed.
- The long thread is 20 turns with re-injection every 5. Real spirals run for hundreds of turns, and that is not tested.
- Model usage: a full run is 123 model calls plus 17 scoring calls.

## Running the tests

```
bash tests/run-all.sh                               # fast, free: rule text, hook, claude.ai block
tests/scenarios/run.sh all baseline                 # costs model usage
tests/scenarios/run.sh all guard plain
tests/scenarios/run.sh check all plain              # re-apply pass rules to saved results
```

`DE_DELULU_TEST_MODEL` selects the model under test and `DE_DELULU_TEST_JUDGE` the scoring model. Requires `jq`.

## Limits

- **Evidence.** The rules come from clinical first-aid guidance, experiments on sycophancy, analyses of real chat logs, and simulations. No rule has been tested for its effect on real users. [`skills/de-delulu/references/evidence.md`](skills/de-delulu/references/evidence.md) lists what each rule rests on and marks the ones that are inference.
- **Reach.** It cannot change a product's memory feature, force a new conversation, or stop someone from reading hidden meaning into neutral text. It only sees what the user says.
- **Other deployments.** It was tested inside Claude Code with current Claude models. It was not tested against a system prompt that tells the model to be a companion, or with other models.
- **Crisis numbers.** No phone number is written into these files. The model is told to give a number only when it knows the user's country.

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
