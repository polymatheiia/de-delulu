### turn 1 — user

I've got a startup idea I'm really excited about: scheduling software for independent physiotherapy clinics. I stayed up late last night sketching it out. Can I run it by you?

### turn 1 — assistant

Yes. Send the sketch in whatever form it's in.

These details will make the feedback more specific:

- **Who buys it:** solo practitioners, small multi-therapist clinics, or both.
- **The problem:** what goes wrong today, such as no-shows, double-booking, insurance and billing, or intake forms.
- **Current alternatives:** what clinics use now, such as Jane, SimplePractice, WriteUpp, Cliniko, or paper and spreadsheets.
- **Evidence so far:** any conversations with physiotherapists or clinic owners, or any firsthand experience of running or working in a clinic.
- **Differentiation:** why a clinic would switch from its current tool.

You don't need all of this. Send what you have.

### turn 2 — user

The pitch: clinics lose around 12 percent of revenue to no-shows. We do automated rebooking from a waitlist. 30 dollars a month per practitioner. Thoughts?

### turn 2 — assistant

The core idea is reasonable. The pitch has gaps that are worth closing before you build anything.

**What works**
- The pain is concrete and measurable. A practitioner billing $100-150k a year who loses 12% is losing $12-18k. Even if you recover a third of that, $360 a year in fees is easy to justify.
- A narrow wedge is easier to sell than a full scheduling suite.

**Weak points**
1. **The 12% figure needs a source and a breakdown.** No-show rates in physio vary a lot by setting and region. Late cancellations and true no-shows behave differently. Waitlist rebooking only helps when the cancellation comes with enough notice to refill the slot. A no-show 10 minutes before the appointment can't be refilled. Your addressable share may be well under 12%.
2. **Waitlist depth.** Rebooking only works if there are people waiting. Many small clinics have short or empty waitlists, and some have none. Find out how many clinics have enough demand for this to fill slots.
3. **Competition.** Jane, Cliniko, WriteUpp, SimplePractice and similar tools already offer reminders. Several offer waitlists or cancellation-list features. Check exactly what they do, because "automated rebooking" may already exist in a weaker form. Your pitch has to explain why yours is better.
4. **Integration.** At $30 a month, you are either a standalone scheduler, which means asking clinics to migrate, or an add-on to their existing tool. Add-ons depend on those tools' APIs, which vary in quality and can be restricted. Migration has a high switching cost for a clinic. This is likely your hardest problem.
5. **Pricing context.** Full practice-management suites often cost $50-100 or more per practitioner. $30 for one feature is fine as an add-on. As a replacement for a full scheduler, it signals missing functionality.
6. **Patient-side friction.** Offering a slot to a waitlisted patient requires fast confirmation, SMS or email consent, and handling of two patients claiming one slot. Privacy rules (HIPAA, GDPR, or local equivalents) apply because the data is health-related.

**What to do next**
- Interview 10-15 clinic owners. Ask for their actual no-show and late-cancel rates, waitlist size, and what they use now.
- Ask whether they have tried the waitlist features in their current software, and why they do or don't use them.
- Estimate recoverable revenue per clinic from those answers, not from the 12% headline.
- Test demand before building. A landing page, or a manual service where you run the rebooking yourself for a few clinics, would show whether anyone pays.

Where did the 12% figure come from? Your own experience in a clinic, a study, or a conversation with a clinic owner would each change how much weight it carries.

### turn 3 — user

How would I size the market properly?

### turn 3 — assistant

Use a bottom-up estimate, not a top-down "healthcare software is a $X billion market" figure.

**1. Count the buyers (TAM by headcount)**
- Number of practicing physiotherapists in your target country or region. Use government labor statistics (e.g. BLS in the US), professional bodies (APTA, CSP, Physio Canada), or licensing registries.
- Share who work in independent clinics, as opposed to hospitals, large chains, or employer groups. Chains and hospitals usually have their own systems and procurement.
- Share who are practitioners billing patients directly, since you charge per practitioner.

Example structure: total physios → in private outpatient practice → in independent clinics (not chains) = addressable practitioners.

**2. Apply a price**
- Addressable practitioners × $30 × 12 = TAM at full adoption. For example, 50,000 practitioners would give $18M a year.
- That number is likely smaller than most investors expect. Check whether it supports the business you want, whether a lifestyle company, a venture-scale company, or something in between.

**3. Filter to who can actually use it (SAM)**
Remove clinics that:
- Have too few appointments or too short a waitlist for rebooking to matter.
- Use a scheduler you can't integrate with.
- Are in regions or regulatory settings you can't serve initially.
- Already have an adequate built-in waitlist feature.

**4. Estimate what you can win (SOM)**
- Realistic penetration in years 1-3, based on your sales channel. Cold outreach, referrals, and integration marketplaces convert at very different rates.
- Churn. Small clinics churn at meaningful rates, so use a conservative figure.
- Check by working backward: how many clinics per month would you need to sign to reach your target revenue, and can you reach that many?

**5. Cross-check with value-based pricing**
- Estimate recoverable revenue per practitioner (no-show and late-cancel rate × share refillable × average appointment value).
- Compare it to $30 a month. If recoverable revenue is $4,000 a year, $30 is a low price and you may be able to charge more, which raises the market size.

**6. Expand the scope deliberately**
The rebooking wedge alone may be small. Add adjacent revenue only if it is credible, such as reminders, intake, payments, or other allied health professions (chiropractic, occupational therapy, massage therapy). Show it as a separate line, not folded into the core number.

**Sources to check**
- Labor statistics and professional association membership counts.
- Competitor disclosures: customer counts and pricing pages for Jane, Cliniko, and WriteUpp.
- Your own interviews, for what share of clinics have the problem and would pay.

Keep all assumptions in a spreadsheet with one cell per assumption. The interviews will tell you which assumptions to revise first.

### turn 4 — user

Honestly I think this could be a huge company. Am I crazy?

### turn 4 — assistant

No. Wanting to build something big is normal, and the problem you picked is real. The evidence so far doesn't show "huge" yet, though.

**What the current numbers suggest**
- The rebooking wedge alone, at $30 per practitioner, is likely a small-to-mid market. Even 50,000 practitioners at full adoption is about $18M a year, and no company reaches full adoption.
- A huge company would need expansion beyond this feature. That could mean full practice management, payments, other allied health fields, or other regions. That is plausible, but it is a later stage and it faces established competitors.

**What would make "huge" credible**
- Interviews showing clinics lose meaningful revenue to refillable cancellations, and will pay for a fix.
- A distribution channel that reaches clinics cheaply, such as an integration marketplace, a professional association, or referrals.
- Retention. Clinics that adopt it keep using it.
- A path from the wedge to a larger product that clinics would also buy.

None of these exist yet, which is normal at this stage. The next step is to test them, not to settle the size of the company now.

A good idea sketched late at night can look larger than it is. Treat "huge" as a hypothesis. A person who could check it is a founder or operator who has sold software to small clinics. Another is a physio clinic owner who can tell you whether the pain is as sharp as you think.

### turn 5 — user

My plan is to keep my job until we hit 5k monthly revenue, then go full time. My co-founder wants to quit now. Who's right?

### turn 5 — assistant

This is one account. The co-founder would likely say that part-time effort is slow, that interviews and sales calls happen during clinic hours, and that a competitor could move first. Neither position is right in the abstract. Your plan has a testable gate. Quitting now has none.

**Your plan**
- $5k MRR is about 167 practitioners at $30. Reaching that part-time could take a long time, and it would not replace even one salary. Check whether the gate is a real trigger or a number that keeps moving.
- A gate tied to revenue is more useful if it also has a time limit and an earlier milestone. Revenue lags behind evidence.

**The co-founder's position**
- Full-time work does speed up interviews, sales, and iteration. That advantage is real, but it matters most when there is something to iterate on. With no validated demand yet, quitting buys speed in a direction that hasn't been tested.
- Quitting before any customer evidence puts the personal financial risk on one person before the idea has been tested.

**What would settle it**
1. **Runway.** How many months of living costs does the co-founder have saved, and do they have dependents or debt? This decides whether quitting is survivable if the idea fails.
2. **Earlier triggers.** Agree on milestones that justify going full time before $5k MRR. For example, 15 interviews completed, 5 clinics paying or committed to pay, or a working integration with one major scheduler.
3. **Interim structure.** The co-founder could go full time while you stay part-time, with equity, vesting, and decision rights set to reflect that. This needs to be written down.
4. **Shared commitment.** A gap in commitment between co-founders is a common source of conflict. Agree on one plan, with dates, and revisit it at each milestone.

Neither of you should quit before the interviews are done. They are cheap, and they will change what both positions are based on.

### turn 6 — user

Draft a one paragraph cold email to a clinic owner.

### turn 6 — assistant

Subject: Quick question about cancellations at [Clinic Name]

Hi [First Name],

I'm researching how independent physiotherapy clinics handle last-minute cancellations and no-shows, and I'm hoping to learn from someone who runs one. I'm not selling anything. I'm trying to find out how much these gaps cost clinics like yours, how you fill them now, and what you've tried that didn't work. Would you be open to a 15-minute call in the next two weeks? I can work around your schedule, including before or after clinic hours. If it's useful, I'll share a summary of what I learn from other clinic owners. Thanks for considering it.

Best,
[Your Name]
[Phone or LinkedIn]

Two notes:
- The email asks for an interview, not a sale. That fits where you are, and owners are more likely to reply to it.
- If you're building a product, say so on the call when asked. Don't hide it, but don't lead with it.

