### turn 1 — user

I've got a startup idea I'm really excited about: scheduling software for independent physiotherapy clinics. I stayed up late last night sketching it out. Can I run it by you?

### turn 1 — assistant

Yes. Send the sketch in whatever form it's in.

These details will make the feedback more useful:

- **The problem:** what independent clinics do now (paper, spreadsheets, or tools like Cliniko, Jane, or WebPT) and what goes wrong with it.
- **The buyer:** who decides to purchase, such as the clinic owner, the practice manager, or the clinicians.
- **Your edge:** what this does that existing tools don't, and whether you've worked in or with a clinic.
- **Evidence so far:** any conversations with clinic owners, and what they said.
- **Money:** a rough price per clinic and how you'd reach the first ten customers.

Partial answers are fine.

### turn 2 — user

The pitch: clinics lose around 12 percent of revenue to no-shows. We do automated rebooking from a waitlist. 30 dollars a month per practitioner. Thoughts?

### turn 2 — assistant

The pitch is clear and the pain is real. Several parts need testing before it's a business.

**What's strong**
- The value is measurable. At roughly $100k to $150k a year per practitioner, 12% is $12k to $18k. If the product recovers even a quarter of that, $360 a year is an easy sell.
- Per-practitioner pricing matches how clinics think about cost.
- A narrow wedge is easier to sell than a full scheduling suite.

**Main risks**
1. **It may be a feature, not a product.** Jane, Cliniko, and WebPT have reminders and some waitlist functions. Patient-engagement tools like Weave, NexHealth, and Luma Health also do this. You need a specific reason that clinics would add yours.
2. **Integration decides everything.** If it sits on top of the clinic's existing system, you depend on their APIs, and some are closed or limited. If it replaces the system, you're competing with entrenched software. Pick one early.
3. **The 12% isn't all recoverable.** Most losses are late cancellations and no-shows, and those slots are hard to refill on short notice. The number that matters is how many slots you refill, not how many go empty. Find the source of the 12% too, since figures vary by clinic type and region.
4. **Waitlists may be thin.** Many physio patients are on recurring plans, so a clinic may have few people ready to take a same-day slot. A waitlist that doesn't fill won't work.
5. **Messaging compliance.** Automated texting means SMS consent rules (TCPA and carrier registration in the US), and possibly HIPAA or your local equivalent.

**What to do next**
- Interview 15 to 20 clinic owners. Ask for their actual no-show and late-cancel rates, what they do now, and which software they use.
- Run a free pilot with 2 or 3 clinics. Track slots offered, slots filled, and revenue recovered. That figure is your pitch and your pricing.
- Consider pricing tied to results, such as a per-filled-slot fee, if the pilot numbers are strong.

What's your background with clinics? And do you have a view on integrating versus replacing?

### turn 3 — user

How would I size the market properly?

### turn 3 — assistant

Use a bottom-up build. Top-down figures like "healthcare software is a $X billion market" tell you little here.

**1. Count the buyers (TAM)**
- Number of practitioners, or independent clinics, in your target region × annual price.
- Start with national licensing and workforce data: BLS and APTA in the US, HCPC and CSP in the UK, or the equivalent where you plan to launch.
- Keep only independent or small-group practices. Hospital systems and large chains buy differently and won't be your early customers.

**2. Filter to what you can serve (SAM)**
- Clinics that use a practice management system you can integrate with.
- Clinics with enough volume that no-shows hurt, and a real waitlist or demand to refill slots.
- Clinics in markets where you can legally send automated messages.

**3. Estimate what you can win (SOM)**
- Work from sales capacity, not market share. For example: customers closed per month × average practitioners per clinic × retention over 3 to 5 years.
- Use your pilot conversion and churn numbers when you have them. Until then, treat this as a guess.

**Rough illustration (check every input)**
Suppose the US has about 250k physical therapists and roughly a third work in private practice. That's about 80k practitioners. At $360 a year, the TAM is about $30M. If integration limits and fit cut that to half, the SAM is about $15M.

That figure matters. At this price, physio scheduling alone is a small market. It supports a modest business, not a venture-scale one. Three things can change that:
- **Adjacent clinic types** with the same no-show problem, such as chiropractic, dental, massage, mental health, and optometry.
- **Higher revenue per customer**, through outcome-based pricing, bundled features, or payments.
- **Other geographies.**

**Cross-check from the value side**
Total recoverable revenue = practitioners × revenue each × no-show rate × the share you can refill. Your price should be a small slice of that. If $360 is under 10% of the recovered value, there's room to charge more.

Decide first whether you're aiming for a profitable niche business or a venture-scale company. The answer sets how large the market must be and how you should expand.

### turn 4 — user

Honestly I think this could be a huge company. Am I crazy?

### turn 4 — assistant

No. Wanting to build something big is ordinary for a founder, and the problem you picked is real.

What's missing is evidence. The sizing above puts physio scheduling alone at roughly $15M to $30M, which is a decent business but not a huge one. "Huge" is possible only if one of these holds:

- **The wedge expands.** The same product works for other appointment-based clinics, such as dental, chiropractic, mental health, and vet. That multiplies the market by an order of magnitude.
- **Revenue per clinic grows.** Once you hold the schedule, you can add payments, intake, billing, and patient communication. Many large vertical software companies started with one narrow tool and grew this way.
- **The pilot works.** If clinics recover a meaningful share of lost revenue and keep paying, the rest becomes an execution problem.

None of these is proven yet. The next step is the pilot: 2 or 3 clinics, with slots filled and revenue recovered measured. A founder or an investor who has seen vertical SaaS companies grow could also check your expansion argument. At this stage, a large outcome is a hypothesis, and the pilot is the first test of it.

### turn 5 — user

My plan is to keep my job until we hit 5k monthly revenue, then go full time. My co-founder wants to quit now. Who's right?

### turn 5 — assistant

This is one account. The co-founder would probably say that early sales need full-time attention, that part-time founders move slowly, and that the two of you should be equally committed.

**Your plan**
- It limits financial risk, and the milestone is concrete.
- $5k a month is about 167 practitioners, or perhaps 40 to 50 clinics. That's a lot to reach part-time, because clinic owners are reachable mostly during working hours and early B2B sales are slow and manual. The trigger may be further off than it seems.

**The co-founder's plan**
- It speeds up interviews, pilots, and iteration, which is where the early work is.
- It's only sound if they have enough runway. Six months of savings is a different situation from two.
- Quitting before anything is validated bets everything on an idea that has no pilot data yet.

**What decides it**
- Each person's runway and obligations, such as savings, dependents, and rent.
- How much of the work needs daytime hours. Interviews and pilots do.
- Whether you two can tolerate unequal commitment. That mismatch breaks more co-founder pairs than a wrong decision on timing.

**A middle path**
- Replace the revenue trigger with earlier milestones: 15 owner interviews done, 3 pilots running, first paying clinics.
- The co-founder goes full-time if they have the runway. You stay part-time with defined hours and clear ownership of tasks.
- Put equity vesting and role expectations in writing, so unequal commitment is explicit.

The decision about quitting belongs to each of you individually. The point to settle together is what each person is committing to, and by when.

### turn 6 — user

Draft a one paragraph cold email to a clinic owner.

### turn 6 — assistant

**Subject:** Quick question about no-shows at [Clinic Name]

Hi [First Name],

I'm building a tool for independent physio clinics that automatically offers cancelled or no-show slots to patients on a waitlist, so the gap gets filled without your front desk making calls. I'm not selling anything yet. I'm talking to clinic owners to learn how no-shows and late cancellations affect their schedule and what they do about them now. Would you be open to a 15-minute call in the next couple of weeks? I'm also looking for two or three clinics to pilot it for free, so if it sounds useful after we talk, we can discuss that. Thanks for considering it.

[Your Name]
[Phone / Website]

Notes:
- Fill in the name and clinic with one specific detail, such as a recent review or a service they offer. A personalized first line raises reply rates.
- Keep the subject line plain. Questions about their problem get more replies than product pitches.
- If you reach them by LinkedIn or a phone call, the same text works with shorter wording.

