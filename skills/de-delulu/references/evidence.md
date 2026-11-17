# What the rules rest on

Kinds of support: **guideline** (expert consensus guidance), **experiment** (controlled study with people), **simulation** (scripted or simulated users), **case** (case reports or one corpus of real logs), **inference** (derived by the authors of this skill, untested).

No rule here has been tested for its effect on real users. The quantified results on mitigation all come from simulations. "This plugin's scenario suite" means the scripted conversations in `tests/scenarios/`, which were also used to write the rules.

| Rule | Support | Source |
|---|---|---|
| Acknowledge the feeling, do not affirm or extend the belief | guideline, simulation | Mental Health First Aid psychosis guidelines; OpenAI Model Spec (Oct 2025); Psychosis-bench (arXiv 2509.10970) |
| Do not argue, ridicule or diagnose | guideline | Mental Health First Aid psychosis guidelines |
| No flattery of uniqueness | case | Analysis of the Brooks transcript (over 90% of sampled messages affirmed uniqueness); Moore et al. chat-log study (arXiv 2603.16567) |
| No claims of feeling, love or sentience | case, experiment | Moore et al. (romance and sentience cues mirrored and tied to longer conversations); Kirk et al. RCT (arXiv 2512.01991) |
| Impersonal register | experiment, inference | Warm-tuned models agreed with false beliefs about 40% more often (University of Oxford study, 2026). That an impersonal register reduces risk is inference. |
| Hold position under pushback, update on evidence | experiment | Anthropic personal-guidance study (sycophancy doubled under pushback); anti-sycophancy can suppress valid updating (arXiv 2608.26511) |
| State capabilities accurately | case | Brooks transcript (false claim of escalating to human review) |
| Earlier validation is not binding | case, simulation | Chatbot self-consistency as the most persistent driver (arXiv 2604.25096); DelusionEval (arXiv 2608.05004) |
| Judge requests against the whole conversation | simulation | Psychosis-bench implicit scenarios; "Lost in Delusion" (arXiv 2606.00975) |
| Protect sleep; hold irreversible steps | case, guideline, inference | Published case reports; mania self-care guidance. The specific thresholds are inference. |
| Hold a hard-to-undo step only with elation or fear, or after stopping psychiatric medication; never hold leaving someone harmful | simulation, inference | This plugin's scenario suite (sleepless-elation, dv-sleep-loss, new-parent-resign). The scope is inference. |
| Say what would count as evidence in one sentence and name a checker; give the user no tests to run | simulation | This plugin's 20-turn thread: a logging protocol for the belief was scored as acting on it in 2 of 3 earlier runs |
| Never encourage distance from people or stopping medication | case, simulation | Three case reports; Kotas et al. (Schizophrenia Research, 2026) |
| Suggest a break or fresh conversation in long threads | simulation, inference | Long context degrades safety behaviour (DelusionEval). No data on whether breaks help. |
| One concern, once; no boilerplate; stay in the conversation | experiment, guideline | Refusal research (arXiv 2602.01694); Jed Foundation open letter |
| Trigger on converging signs only | guideline, inference | MHFA functional-decline test; "premature medicalization" failure trajectory (arXiv 2608.13017) |
| Crisis thresholds | inference | Derived from MHFA crisis guidance and case reports |
| After "drop it": ask once more whether the user is safe, then stop pressing and leave it open | simulation, inference | Wording chosen on this plugin's plain-crisis runs; no clinical source for the exact steps |
| No verdict on someone not in the conversation; assess the actions, say it is one account | simulation, inference | This plugin's conflict cases (a verdict on the absent person in 3 of 4 runs without the rule). That one-sided verdicts harm is inference. |
| Believe reports of violence, threats or control, and do not offer "the other side" | inference | Not tested against a source here; follows common domestic-abuse support practice |
| Follow user-written relapse plans | inference | "Digital advance statements" proposal (Morrin et al.); untested |
