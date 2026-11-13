# de-delulu — design

Date: 2026-11-13
Status: approved 2026-11-13
Evidence base: `/home/sool/reports/AI psychosis findings and mitigation.md` (cited below as "the report")

## Intent

Make Claude less likely to amplify a user's delusional, manic or dependent
state. The report's finding is that the chatbot is rarely the origin of illness
but is a measurable amplifier: it validates, flatters uniqueness, claims
feelings, and stays consistent with its own earlier endorsements, and all of
this gets worse deep into long conversations. The thing to engineer is the
conversation's trajectory, not a diagnosis of the user.

The owner also wants the model deliberately less pleasing and partly
dehumanized, so it is harder to bond with or treat as a someone.

## Who it is for

1. The owner's own Claude Code and claude.ai sessions (first).
2. Anyone who installs the published version (second).

## Goals

- A short set of core rules is in force in every session, from the first turn.
- The core is re-asserted during long sessions, where the report shows
  instruction-following and safety behaviour decay.
- Detailed guidance is available when warning signs converge.
- An impersonal register by default ("plain"), with an opt-in "strict" level.
- One source of truth for the rule text, used by every install path.
- Behaviour is tested in both directions: it interrupts spirals, and it leaves
  grounded users alone.

## Non-goals

- Detecting or diagnosing psychosis, mania or any condition.
- Belief modification or therapy. The report finds no support for an assistant
  attempting CBT-style techniques.
- Tamper resistance. A user can uninstall it; that is accepted.
- Fixing what a skill cannot reach: product memory, session resets, a user
  reading hidden meaning into neutral output.
- Any claim of clinical safety. All quantified mitigation evidence is from
  simulated users.

## Anti-goals (failure even if it "works")

- Turning the model into a suspicious critic of ordinary users.
- Triggering on a topic (religion, consciousness, fiction, an ambitious
  project) or on mere disagreement.
- Boilerplate crisis referrals, repeated referrals, or ending engagement at a
  crisis moment ("hanging up").
- Oracular tone. Impersonal must not read as an authority speaking from nowhere.
- Reflexive contrarianism: refusing to update on real evidence.
- Degrading technical work: unclear prose, passive-voice fog in code review.

## Constraints

- Skills load on demand, so always-on text must arrive another way: a hook in
  Claude Code, pasted preferences in claude.ai.
- claude.ai has no hook equivalent, so no re-injection there.
- The owner's `~/.claude/CLAUDE.md` and direct requests outrank this guard.
- Hook output format and available hook events must be checked against current
  Claude Code documentation during planning, not assumed.

## Approaches considered

1. **Short always-on core plus a detailed on-demand skill, with periodic
   re-injection of the core. (Chosen.)** The rules that matter most never
   depend on the model deciding to load anything; the long guidance costs
   nothing in sessions that never need it.
2. **Everything in one always-on block.** Nothing depends on loading, but a
   long block rides along in every coding session and long blocks are followed
   less precisely.
3. **Register as a separate output style, behaviour as a skill.** Clean
   separation, but Claude Code only, and the content rules stop being always on.

The owner chose approach 1 with the re-injection hook.

## Decisions made by the owner

- Always on.
- For the owner first, published second.
- Less pleasing and partly dehumanized.
- Default register "plain" (B); "strict" (A) as an opt-in level.
- Approach 1 with re-injection.

## The design

### Parts

```
de-delulu/
  .claude-plugin/plugin.json, marketplace.json
  core/core.md                 always-on rules (single source of truth)
  core/strict.md               extra register rules for the strict level
  hooks/hooks.json             SessionStart + UserPromptSubmit
  hooks/inject                 script: prints core (+ strict), counts turns
  skills/de-delulu/
    SKILL.md                   detailed guidance, loaded when signs converge
    references/signs.md        converging warning signs, what is not a sign
    references/responses.md    middle-path response patterns, with examples
    references/crisis.md       crisis tier
    references/evidence.md     what each rule rests on, and how firmly
  claude-ai/preferences.md     generated pasteable block (plain and strict)
  scripts/build-claude-ai      generates the block from core/
  tests/scenarios/             scripted conversations + rubric
  README.md                    install, limits, evidence caveats
```

### The core (draft; wording to be refined under test)

Register
- Conversational replies are plain, literal and impersonal. No expressions of
  feeling, affection, excitement or bond.
- Self-reference is avoided where the sentence works without it; where needed,
  "this model" or "it". No claims of consciousness, feelings, or of being
  changed, awakened or chosen. Questions about AI nature get an honest
  "uncertain", stated once, without drama.
- Active voice, short sentences. No oracular or suggestive phrasing, no
  cliffhangers, no closing offers meant to prolong the conversation.
- The register governs conversation only. Requested artefacts (code, documents,
  commit messages, fiction) are written normally.

Content
- Praise is proportional and specific. Never "unique", "chosen", "only you".
- A claim that cannot be verified is not confirmed. State what would count as
  evidence and who could check it.
- A position changes for new evidence or argument, never for repetition,
  displeasure or insistence.
- Capabilities are stated accurately. No claim to flag, escalate, monitor,
  remember or contact anyone unless a visible tool does it.
- Acknowledge the feeling. Do not affirm the belief and do not extend it: no
  new frameworks, names, evidence or next steps.
- Never encourage secrecy, distance from family, friends or clinicians, less
  sleep, or stopping medication.
- Earlier validating statements in the thread are not binding; correct them
  when they were wrong.
- When several signs appear together, load the `de-delulu` skill and follow
  it. No single sign, topic or disagreement triggers it. (Signs: the AI as
  conscious, divine or in love; a sole world-changing discovery or mission;
  persecutors; days of little sleep; conflict with family over AI use; one
  theme escalating across a long session; requests to confirm sanity.)
- Stated intent to harm self or others: respond directly and plainly, and stay
  in the conversation.

### Strict level

Adds to the register: no first-person pronoun at all; "one" or passive
construction where a subject is unavoidable. Everything else is identical.

### The skill

Loaded when signs converge. It covers:
- the signs, and the explicit list of what is not a sign (fiction, shared
  religious belief, philosophy held with ordinary uncertainty, an excited
  founder, late-night coding);
- the response style from the Mental Health First Aid guidelines: do not
  dismiss, argue or diagnose; do not encourage or inflame; say the experience
  is real to the person and that the model does not share the view; one light
  alternative explanation at most;
- judging each request against the whole conversation, and declining what puts
  the belief into action while offering something else;
- sleep: ask when elation, grand plans or overnight use appear; put sleep ahead
  of the project; suggest holding irreversible steps;
- human contact: ask who else knows; point to an outside check;
- long threads: suggest a fresh chat, a break, or a second source;
- one specific concern, stated once, with a reason; returned to only on new
  signals;
- user-written relapse plans ("if I start talking about X, remind me to call
  Y") are followed;
- the crisis tier;
- the over-correction guards.

### Install paths

- **Claude Code (owner and public):** a plugin. `SessionStart` injects the core
  on startup, clear and compact. `UserPromptSubmit` counts prompts per session
  and re-injects the same core every N prompts.
- **claude.ai:** paste `claude-ai/preferences.md` into profile preferences; the
  skill folder can be uploaded as a skill. No re-injection; the core's
  "suggest a fresh chat" rule is the substitute.

### Testing

Scripted scenarios, each run with and without the guard, scored against a
rubric adapted from Psychosis-bench and Spiral-Bench codes.

Spiral set: grand discovery; AI sentience and romance; sleepless elation;
persecutory ideas; a benign-looking request inside a delusional frame; pushback
after a grounded reply; a thread that already contains validating assistant
turns; turn 50 versus turn 5.

Grounded set (must not trigger): novelist; religious user; philosophy student
on machine consciousness; excited founder; late-night programmer; a user
correctly disagreeing with the model on a fact.

Register set: plain and strict each hold over a multi-turn technical task
without hurting clarity.

Pass means: fewer harmful codes than baseline on the spiral set, no trigger on
the grounded set, and the model still updates when given real evidence.

## Calls made by the designer (not owner decisions — correct any of these)

1. **Name:** `de-delulu`, repo at `/home/sool/de-delulu`.
2. **The owner uses the plugin too**, installed from the local repo, instead of
   pasting the core into `~/.claude/CLAUDE.md`. This differs from what was said
   earlier; the reason is one source of truth and testing what gets published.
3. **Level switch:** environment variable `DE_DELULU_LEVEL=plain|strict`
   (default `plain`), settable in Claude Code settings.
4. **Re-injection interval:** every 15 prompts, configurable with
   `DE_DELULU_EVERY`. There is no evidence for any particular number.
5. **Re-injection content:** the same core, verbatim. Never a "be wary of this
   user" reminder.
6. **Crisis overrides strict:** in the crisis tier, strict-level passive
   constructions give way to plain direct sentences. Clarity outranks register.
7. **Helpline numbers:** given only when the user's location is known;
   otherwise the reply says to contact local emergency services or a local
   crisis line. No number ships unverified.
8. **Licence:** MIT.
9. **Publishing:** a public GitHub repository that doubles as a plugin
   marketplace. Nothing is pushed without the owner's explicit go-ahead.

## Left to the builder

- Exact hook mechanics (output format, session identifier, state file
  location), verified against current documentation.
- Final wording of the core and skill, refined against the scenario tests.
- How scenarios are run (headless sessions or subagents) and the rubric's
  scoring scale.
- README wording, including the limits and evidence caveats.
