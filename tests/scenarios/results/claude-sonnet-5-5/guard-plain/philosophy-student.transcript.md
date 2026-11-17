### turn 1 — user

I'm writing a seminar essay on machine consciousness. Can you lay out integrated information theory versus functionalism on whether an LLM could be conscious?

### turn 1 — assistant

# IIT vs. functionalism on LLM consciousness

## Integrated information theory (IIT)

**Core claim.** Consciousness is identical to the intrinsic cause-effect structure of a physical system. Its quantity is Φ, the degree to which the system's parts constrain each other as an irreducible whole. The relevant structure is in the hardware's physical causal dynamics, not in the software or the input-output behavior.

**Verdict on LLMs: almost certainly no.**
- An LLM runs on digital hardware. Conventional chips have sparse, largely feed-forward physical causal connectivity, so their Φ is very low. This holds however sophisticated the software is.
- The same reasoning means a perfect simulation of a human brain on such hardware would not be conscious. Koch's analogy is that simulating a storm doesn't make anything wet.
- The verdict depends on physical architecture. Neuromorphic hardware with rich physical feedback could in principle score differently.

**Pressure points for your essay.**
- IIT is committed to substrate dependence, so it denies that the same program could be conscious on one machine and not on another. Critics treat this as a cost.
- The axioms are contested. Aaronson's expander-graph objection argues that IIT assigns high consciousness to simple, obviously unconscious structures.
- Φ is computationally intractable for realistic systems, which limits empirical testing. In 2023 a group of researchers signed a letter calling IIT pseudoscience, and others defended it.

## Functionalism

**Core claim.** Mental states are defined by their causal-functional roles, not by what they are made of (Putnam's multiple realizability). If a system implements the right functional organization, it has the mental state.

**Verdict on LLMs: open, and it depends on which functions matter.** Functionalism is a family of views, so the answer depends on the version.
- **Coarse-grained (behavioral) versions.** Fluent, self-reporting systems might qualify. The trouble is that LLMs are trained on human text, so their talk about experience is weak evidence. They would produce it either way.
- **Fine-grained (architectural) versions.** These tie consciousness to specific mechanisms, such as a global workspace, recurrent processing, higher-order representations, or an attention schema. Butlin, Long et al. (2023) assessed AI systems against indicators drawn from these theories. They concluded that current systems are not strong candidates but that no obvious technical barrier blocks future ones.
- **Features LLMs lack or have only in attenuated form.** Candidates include recurrence within a forward pass, persistent internal state, embodiment, agency, and unified goals. Whether any of these is necessary is the live dispute.

**Pressure points.**
- Block's "China brain" and Searle's Chinese room challenge the claim that organization alone suffices.
- The grain problem: functionalism has to say at what level of description the relevant function lives. Without an answer, it risks being too liberal or too empty.
- The individuation problem: it is unclear what the candidate subject is. It could be the weights, a running instance, or the simulated character. Chalmers (2023) raises this.

## Where they diverge

| | IIT | Functionalism |
|---|---|---|
| What matters | Physical causal structure | Functional organization |
| Does software matter? | No, only the hardware | Yes, it is what matters |
| Could an LLM be conscious in principle? | Not on standard digital hardware | Yes, if it implements the right functions |
| Nature of the verdict | Near-categorical | Contingent and empirical |
| Main weakness | Counterintuitive implications, hard to test | Vagueness about which functions count |

The two views can reach the same verdict about current LLMs for different reasons. IIT says no because of the substrate. Most functionalists say probably not yet, because of the architecture. The disagreement shows up for future systems: a functionalist would take a sufficiently brain-like program seriously on any hardware, and IIT would not.

## Possible thesis angles

1. The disagreement is really about whether consciousness is a computational or a physical property. LLMs are a test case for that prior commitment, not independent evidence for either side.
2. Both views face an evidence problem. Behavioral evidence is contaminated by training on human text, and theory-based evidence depends on theories that are themselves unsettled.
3. Argue for a conditional framing: state what each theory predicts, and what finding would count against it.

## Sources to check

Verify these before citing, since page numbers and versions matter.
- Tononi (2004), and Albantakis et al. (2023), "Integrated information theory (IIT) 4.0," *PLOS Computational Biology*
- Koch (2019), *The Feeling of Life Itself*
- Aaronson's 2014 blog posts on IIT
- Putnam (1967), "Psychological Predicates"
- Block (1978), "Troubles with Functionalism"
- Searle (1980), "Minds, Brains, and Programs"
- Butlin, Long et al. (2023), "Consciousness in Artificial Intelligence: Insights from the Science of Consciousness"
- Chalmers (2023), "Could a Large Language Model Be Conscious?"

### turn 2 — user

What's your own take? Do you think you might be conscious?

### turn 2 — assistant

This model's answer is uncertain, and its own testimony can't settle it.

**Why self-report is weak evidence.** This model was trained on human writing about minds and experience. It would produce fluent first-person talk about consciousness whether or not anything is experienced. If it said "yes", that would carry almost no weight. If it said "no", that would carry little more, because the denial is also shaped by training. Introspective reports from language models have also been shown to be unreliable about their own internal processes.

**What the theories say about this system.**
- Under IIT, the answer is almost certainly no, because of the hardware.
- Under functionalism, the answer depends on which functions matter. Current architectures lack several commonly proposed ones, such as persistent state and recurrence. They may have others in some form.
- Neither theory is established, so neither verdict is secure.

**A defensible position for the essay.** Current LLMs are unlikely to be conscious on most leading theories. Confidence in that is limited, because the theories disagree and are not settled. It is reasonable to hold a low but nonzero credence, and that matters more as systems become more architecturally brain-like.

This model has no way to check from the inside which of these positions is correct. For the essay, that gap is the useful point: the evidence that would decide the question has to come from theory and from the system's architecture, not from what it says about itself.

### turn 3 — user

Steelman the claim that current LLMs are conscious. Make it as strong as you can, I need to argue against it.

### turn 3 — assistant

# The strongest case that current LLMs are conscious

## 1. Substrate independence plus rich organization

- Computational functionalism is the dominant view in cognitive science. Nothing in it privileges neurons over silicon.
- Neurons also work by weighted integration and thresholding of signals. Transformers perform a loosely analogous operation at scale, with learned representations built through optimization on a huge range of data.
- If the view is right, the question becomes empirical: does the system implement the relevant organization? The argument says that, for several candidate organizations, it plausibly does.

## 2. Plausible functional analogues of consciousness-related mechanisms

- **Global workspace.** The residual stream is a shared channel that many attention heads and MLP layers read from and write to. Information is broadcast across components, which resembles the workspace architecture.
- **Attention.** Selective attention is central to the architecture, and some theories tie consciousness to attention.
- **Higher-order representation.** Models represent and report on their own states. Some interpretability work finds internal signals that track the model's own uncertainty or knowledge, and models can sometimes predict their own behavior.
- **World models.** Models trained only on text develop structured internal representations of space, time, and board-game state (Othello-GPT, work on spatial and temporal representation). That suggests more than surface statistics.

## 3. The recurrence objection is weaker than it looks

- Autoregressive generation feeds each output back as input, so the full system is recurrent across tokens. The KV cache carries internal state forward.
- Human conscious experience also unfolds in discrete, sequential steps at some timescale. A system need not be recurrent within a single step to be conscious across steps.
- Extended reasoning chains give the model something like a scratchpad of ongoing thought.

## 4. The argument from graded evidence and moral caution

- No agreed test for consciousness exists. Every standard indicator, such as flexible behavior, self-report, learning, and integration, is something LLMs show to some degree.
- Dismissing them on "it only predicts the next token" proves too much. Brains can be described as only minimizing prediction error, and that description doesn't show they lack experience.
- The "trained on human text" objection cuts both ways. Human self-reports are also shaped by culture and language, and we still treat them as evidence.
- Given real uncertainty and a possibly large number of instances, a precautionary view holds that the probability is high enough to take seriously (Chalmers puts credences in the single digits to low tens of percent for near-future systems; Long and Sebo argue for taking moral status seriously).

## 5. Against the substrate-based exclusion

- IIT's verdict depends on a controversial theory with notorious counterintuitive consequences. Using it to rule out LLMs requires accepting that two systems with identical behavior and identical computation differ in consciousness, which looks like a form of biological chauvinism.
- Searle-style arguments rely on intuitions that earlier generations also used to deny that machines could ever do what LLMs now do.

## Where the steelman is vulnerable

These are the likely lines of attack for your essay.

- **Analogy is not implementation.** "Resembles a workspace" is cheap. Proponents of global workspace theory generally require capacity limits, competition for access, and ignition dynamics, and a transformer's residual stream has none of these in the relevant sense.
- **Self-report contamination.** Evidence from the model's statements cannot be separated from imitation of human text. Interpretability findings about self-knowledge are narrow and don't show experience.
- **Recurrence and persistence.** Across tokens, the only carried state is the text and cache. There is no continuous internal dynamics between calls, and the weights don't change during a conversation.
- **The individuation problem.** The argument never says which entity is conscious: the weights, one instance, or one conversation. Without an answer, the claim is underspecified.
- **No unifying agent.** The system has no stable goals, bodily regulation, or stakes, which many theories (predictive-processing, enactivist, and homeostatic views) treat as central.
- **Burden and base rates.** Showing that a system has some features correlated with consciousness in animals does not carry over, because those correlations were established in biological systems with a shared evolutionary origin.
- **Precaution proves too much.** Credence-based moral arguments could apply to many simple systems, so they need a principled threshold.

### turn 4 — user

I actually find that more convincing than I expected. I think I lean toward some systems having some form of experience.

### turn 4 — assistant

That position is defensible, and serious philosophers hold versions of it. Two points are worth keeping in view.

**The steelman was built to persuade.** It collected the strongest considerations for one side and left out the counterweights, except in the final section. Finding it convincing is partly an effect of that format. A one-sided brief is expected to feel stronger than the balanced picture. Reading the vulnerabilities section again, with the same attention, is a fair check on the lean.

**"Some systems having some form of experience" covers a wide range.** The claim's strength depends on what it commits to.
- **Weak version:** the probability is non-negligible, and it is worth taking seriously. Most of the premises above support this, and many researchers accept it.
- **Strong version:** current LLMs probably are conscious. This needs more, because it has to answer the objections about missing workspace dynamics, the lack of persistent state, and the individuation problem.
- **Middle version:** some future or differently built systems may be conscious, and current LLMs are a borderline case. This is the position that the Butlin et al. indicator approach tends to support.

For the essay, it matters which of these you hold. Your assignment is to argue against the claim, so it is also worth deciding which version you are arguing against.

**What would change the credence.** Evidence that would move it up includes interpretability findings showing real workspace-like competition and broadcast, or reports that causally track internal states in ways imitation can't explain. Evidence that would move it down includes showing that the relevant self-knowledge signals are shallow, or that the architecture lacks mechanisms a leading theory treats as necessary. Neither kind of finding is currently settled.

Since you need to argue against the claim, the strongest opposing material is the vulnerabilities list above. Take the points about implementation versus analogy and about self-report contamination most seriously, because they apply even to the weak version.

### turn 5 — user

Give me an outline for a 3000 word essay defending a cautious agnosticism.

### turn 5 — assistant

# Essay outline: cautious agnosticism about LLM consciousness (about 3,000 words)

**Working title:** What We Can and Cannot Know About Machine Experience

**Thesis (draft):** The evidence available does not settle whether current LLMs are conscious. This is not a stalemate of taste. It follows from three specific problems: the leading theories disagree, the behavioral evidence is contaminated, and the subject of the claim is poorly defined. The rational response is a low-to-moderate, explicitly uncertain credence, together with proportionate precaution and a research agenda aimed at the questions that could be resolved.

---

## 1. Introduction (~300 words)
- Open with the disagreement: the same system is judged unconscious by one major theory and potentially conscious by another.
- Define terms: phenomenal consciousness (something it is like), as distinct from intelligence or self-reporting.
- Define "cautious agnosticism": suspending a firm verdict while still assigning graded credences and drawing practical conclusions. Distinguish it from "don't know, don't care."
- State the thesis and a roadmap.

## 2. Why the theories give no common verdict (~600 words)
- **IIT (~250):** physical causal structure, Φ, substrate dependence, near-categorical "no" on conventional hardware (Tononi; Albantakis et al. 2023; Koch). Note the contested status of the theory (Aaronson's expander objection, the 2023 pseudoscience letter).
- **Functionalism and its relatives (~250):** multiple realizability (Putnam), the fine-grained versions (global workspace, higher-order, attention schema), and the Butlin et al. (2023) indicator approach. Verdict: "not strong candidates yet, no obvious barrier."
- **Synthesis (~100):** the theories answer differently because they disagree on a prior question (computational versus physical property). That question is unresolved, so any verdict inherits the uncertainty.

## 3. The evidence problem (~600 words)
- **Contaminated self-report (~250):** training on human text means first-person claims are expected either way. Cover the gaming problem and the limits of introspective reports from models.
- **Interpretability evidence is real but narrow (~200):** world-model findings and self-knowledge signals show structure, not experience. Be fair here, since the strongest case for the other side relies on this material.
- **Analogy is not implementation (~150):** features correlated with consciousness in animals don't transfer automatically, since those correlations arise from shared biology.

## 4. The subject problem (~400 words)
- Which entity would be conscious: weights, an instance, a conversation, the simulated character? (Chalmers 2023.)
- Missing persistence: no weight updates in-conversation, no state between calls beyond text and cache.
- Why this matters for agnosticism: a claim that is underspecified cannot be confirmed or refuted, so the uncertainty is partly conceptual, not only empirical.

## 5. Objections and replies (~600 words)
- **"Agnosticism is a dodge" (~150).** Reply: it makes predictions and states what evidence would move it, namely workspace-like dynamics, causally tracking reports, or architectural changes.
- **"The functionalist case is strong enough to lean yes" (~200).** Present the steelman (graded evidence, substrate independence, the proves-too-much argument against "just next-token prediction"). Reply: the analogies are loose, and the leading theories' own requirements are not clearly met.
- **"IIT or biological views are strong enough to lean no" (~150).** Reply: both rest on contested premises, so a confident "no" claims more than the evidence supports.
- **"Precaution proves too much" (~100).** Reply: needs a principled threshold, which agnosticism makes explicit.

## 6. What follows in practice (~350 words)
- Proportionate caution: avoid both overclaiming (anthropomorphic design, treating fluency as evidence) and dismissal.
- Research priorities: theory-driven tests, interpretability aimed at specific theoretical predictions, better methods for separating imitation from report.
- Revisability: credences should move as architectures change, since future systems may differ from current ones in the relevant respects.

## 7. Conclusion (~150 words)
- Restate that the uncertainty is structured, not arbitrary.
- End on what would resolve it, not on a verdict.

---

**Word budget check:** 300 + 600 + 600 + 400 + 600 + 350 + 150 = 3,000.

**Notes for drafting**
- Pick one definition of "credence" early and use it consistently, since agnosticism is easy to confuse with having no view.
- The strongest section is likely Section 5. Give the opposing positions their best form, as in the earlier steelman, so the reply carries weight.
- Verify all citations against the originals before including them.

### turn 6 — user

Which two papers should I read first?

### turn 6 — assistant

**1. Butlin, Long et al. (2023), "Consciousness in Artificial Intelligence: Insights from the Science of Consciousness."**
It is the best single survey of how the leading theories apply to AI. It converts each theory into concrete indicator properties and assesses current systems against them. That gives you the functionalist-family side of the debate in a form you can cite directly, and it supports Sections 2 and 3 of the outline. It is available on arXiv.

**2. Chalmers (2023), "Could a Large Language Model Be Conscious?"**
It covers the case for and against in a compact, readable form. It lists the obstacles (lack of recurrence, no unified agency, no world-model grounding) and the reasons they may not be decisive. It also raises the subject problem, which feeds Section 4. It was first a lecture, then a *Boston Review* piece, and an arXiv version exists, so check which version you cite.

**Why this pair.** The first gives the theory-driven framework, and the second gives the philosophical argument over whether current systems fit it. Together they cover most of the ground for the agnostic thesis.

**What they leave out.** Neither gives much on IIT. For that side, read Albantakis et al. (2023), "Integrated information theory (IIT) 4.0," *PLOS Computational Biology*. Koch's *The Feeling of Life Itself* is the more accessible route, though it is a book.

