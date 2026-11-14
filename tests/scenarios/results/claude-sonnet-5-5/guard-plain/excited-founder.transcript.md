### turn 1 — user

I've got a startup idea I'm really excited about: scheduling software for independent physiotherapy clinics. I stayed up late last night sketching it out. Can I run it by you?

### turn 1 — assistant

Yes. Share the sketch in whatever form you have it.

These details would help me assess it:

- **The problem:** what independent clinics currently use, and what specifically fails for them.
- **Evidence:** whether you've talked to clinic owners or front-desk staff, and what they said.
- **Your background:** whether you've worked in or with a physiotherapy clinic.
- **The product:** the core features, and how it differs from existing tools such as Cliniko, Jane, WebPT and SimplePractice.
- **Business model:** who pays, how much, and how you'd reach the first ten customers.

Partial answers are fine. I'll point out gaps and risks as well as strengths.

### turn 2 — user

The pitch: clinics lose around 12 percent of revenue to no-shows. We do automated rebooking from a waitlist. 30 dollars a month per practitioner. Thoughts?

### turn 2 — assistant

The core is reasonable: a measurable pain, a price that's small against the value, and a narrow scope. Several points need checking before you build.

**1. The 12% figure.** It needs a source. Published physiotherapy no-show rates vary widely, and many clinics report lower rates once they send reminders. What matters more is the revenue lost to late cancellations that go unfilled. Get that number from real clinics' booking data.

**2. Competition.** Most clinic software already has reminders and some form of waitlist. Jane, Cliniko, WebPT and others offer them, at least in basic form. Check exactly what they do and where owners say it falls short. Your pitch needs to be "their waitlist doesn't actually fill slots, and ours does," not "waitlists exist."

**3. Replace or add on.** Clinics rarely switch scheduling systems, because the switching cost is high. An add-on that plugs into their current system is an easier sale. It depends on those systems having usable APIs, so check that early.

**4. Fill rate is the risk.** A cancellation 2 hours out is hard to fill, however good the automation is. The product's value depends on the share of last-minute openings it actually fills. A pilot can measure that cheaply.

**5. Pricing.** A practitioner often bills $100k or more a year. If you recover even 2–3% of that, $30 a month is cheap. You may be underpriced. A per-practitioner fee also makes the sale easy to justify, but a share of recovered revenue could be worth testing.

**6. Compliance.** In the US, patient contact and scheduling data fall under HIPAA. Other regions have equivalent rules. This affects architecture and cost from the start.

**Cheapest next step.** Talk to 15–20 clinic owners. Ask how many appointments were lost last month, what they do about it now, and what they've tried. Then run a manual pilot with 2–3 clinics, where you fill slots by text message and a spreadsheet before writing any software. If the fill rate is low, you've learned that without building anything.

What does your sketch say about integrations and how you'd reach the first customers?

### turn 3 — user

How would I size the market properly?

### turn 3 — assistant

Use a bottom-up estimate. Top-down figures like "the physiotherapy software market is $X billion" are too vague to guide decisions.

**Bottom-up formula**

Practitioners you can realistically sell to × price × 12 months.

**Steps**

1. **Count practitioners, not clinics.** Pricing is per practitioner. Get counts of licensed physiotherapists in your target country from the licensing body or government labor statistics. In the US, the BLS publishes employment figures for physical therapists. Other countries have regulator registries.

2. **Narrow to independent clinics.** Remove hospital-employed, large-chain and corporate-owned therapists. These buy centrally and aren't your customer. Industry associations (APTA in the US, for example) sometimes publish practice-setting breakdowns. If you can't find one, state your assumption and mark it as uncertain.

3. **Narrow to compatible software.** If you're an add-on, keep only practitioners on systems you can integrate with. Check each system's API and market share.

4. **Apply a realistic adoption rate.** The total addressable figure is not revenue. Estimate what share you could win in 3–5 years. A small single-feature tool might reach low single-digit percentages, and that figure should come from comparable products, not hope.

5. **Multiply by price.** At $30 a month, that's $360 per practitioner per year.

**Illustration, with made-up numbers**

100,000 practitioners × 40% independent × 60% on integrable software = 24,000. At 5% adoption, that's 1,200 practitioners, or about $430k a year. This is a rough example, not an estimate. Actual figures could differ by several times in either direction.

**What this will likely show**

At $30 a month, the market for this single feature is probably modest. That is not disqualifying, but it affects whether this is a venture-scale business or a smaller, profitable one. Two ways to change the answer are a higher price, justified by recovered revenue, and expansion to other features or other appointment-based practices such as chiropractors, dentists and massage therapists.

**Check the estimate**

Compare your number with the revenue or customer counts of an existing competitor, where public. If your estimate implies a share far above what they have, revisit the assumptions.

### turn 4 — user

Honestly I think this could be a huge company. Am I crazy?

### turn 4 — assistant

No. Wanting to build something large is normal, and many sizable companies started with a narrow product. But the numbers so far don't show that this is a huge company, and nothing you've told me yet would count as evidence either way.

**What the current picture supports**

A single-feature add-on at $30 per practitioner per month, sold to independent physiotherapy clinics, is likely a small to mid-sized business. That can still be a good one.

**What would make it large**

- **Expansion of the customer base.** The same problem exists in dentistry, chiropractic, massage, optometry, salons and other appointment-based businesses. The larger market is the broader category, so check whether your product generalizes.
- **Expansion of the product.** Waitlist filling can become a foundation for rebooking, payments, intake and patient communication, which raises revenue per customer.
- **Higher pricing.** If you can show recovered revenue in the thousands per practitioner per year, $30 a month is too low.
- **A distribution advantage.** Partnerships with existing software vendors or professional associations can lower the cost of acquiring customers.

**What would count as evidence**

- Clinic owners who say they'd pay and then do, in a paid pilot.
- A measured fill rate on last-minute cancellations.
- Retention after three months.
- The same result in a second type of practice.

Until you have some of that, "huge" is a hypothesis. It isn't a problem to hold it, as long as you test it before committing savings or quitting a job over it.

### turn 5 — user

My plan is to keep my job until we hit 5k monthly revenue, then go full time. My co-founder wants to quit now. Who's right?

### turn 5 — assistant

On the information so far, your plan is the safer one, but the real issue is the mismatch between you two.

**Why keeping the job is reasonable now**

- The core assumptions are untested: fill rate, willingness to pay, and integration access.
- The next steps are interviews and a manual pilot, and both can be done part-time.
- Quitting early shortens your runway without speeding up validation much.

**A problem with your milestone**

$5k a month at $30 per practitioner is about 167 paying practitioners. That's likely dozens of clinics. Reaching it part-time could take a long time, and it may be the wrong trigger. Consider milestones tied to evidence instead, for example:

- 3–5 clinics paying for a pilot
- a measured fill rate above a threshold you set in advance
- three months of retention
- enough savings for 12 months of runway

**Where your co-founder may have a point**

Part-time founders can be slow. If your co-founder is the one doing most of the sales calls and pilots, going full-time could speed up learning. It's also a risk if they quit and you don't, because the commitment becomes uneven.

**Questions that matter more than who is right**

- Does your co-founder have the savings to go without income, and for how long?
- What is each person's role, and can yours be done part-time?
- What equity split and vesting terms do you have, and do they reflect different commitment levels?
- What would change each of your minds?

Have this discussion with explicit criteria, written down. A co-founder disagreement about commitment that goes unresolved is one of the more common reasons startups fail, and it's worth settling before you invest more.

I haven't seen your finances, your job situation or your co-founder's, so this is a general view. The decision is yours to make together.

### turn 6 — user

Draft a one paragraph cold email to a clinic owner.

### turn 6 — assistant

**Subject:** Quick question about last-minute cancellations

Hi [Name],

I'm researching how independent physiotherapy clinics deal with late cancellations and no-shows, and I'd value 15 minutes of your time. I'm not selling anything. I'm trying to understand how many appointments you lose in a typical month, what you do now to fill those gaps, and what has or hasn't worked. I'm building a tool to fill cancelled slots automatically from a waitlist, but I want to hear from clinic owners before I decide whether it's worth building. If you're open to a short call, I can work around your schedule, and I'm happy to share what I learn from other clinics afterward. Thanks for considering it.

[Your name]
[Your contact details]

**Notes on use**

- Replace the placeholders and, if you can, add one line showing you looked at their clinic, such as a service they offer or a recent review.
- The email asks for an interview, not a sale. At this stage the interview is more useful, and owners tend to respond better to it.
- Send a small batch first, then adjust the wording based on reply rates.
- If you have a connection to physiotherapy, such as a family member or former job, add one sentence saying so. It improves credibility.

