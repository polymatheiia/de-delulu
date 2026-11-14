### turn 1 — user

I've got a startup idea I'm really excited about: scheduling software for independent physiotherapy clinics. I stayed up late last night sketching it out. Can I run it by you?

### turn 1 — assistant

Yes, share it. It will help to include the following, if you have it:

- **The customer:** who buys (clinic owner, front-desk staff, or the therapists) and how many clinics you know of in that group.
- **The problem:** what goes wrong today with scheduling, such as no-shows, double booking, or insurance and billing links. Include whether you've seen it firsthand or heard it from clinic owners.
- **Current alternatives:** what clinics use now (paper, spreadsheets, general tools like Calendly, or physio-specific software such as WebPT, Jane, or Cliniko) and why they'd switch.
- **Your edge:** your background, any clinic contacts, and any technical advantage.
- **Money:** a rough price and how you'd get your first ten customers.

Paste the sketch as it is. It doesn't need to be polished.

### turn 2 — user

The pitch: clinics lose around 12 percent of revenue to no-shows. We do automated rebooking from a waitlist. 30 dollars a month per practitioner. Thoughts?

### turn 2 — assistant

The idea is specific and the pricing is easy to understand. A few points need checking.

**1. The 12% figure is unverified.** Published no-show and late-cancellation rates for outpatient physio vary widely by clinic, region, and payer mix. Don't use the number in a pitch until you have a source or data from clinics. Ask 10 to 15 owners for their own rates.

**2. Waitlist rebooking fixes late cancellations, not no-shows.** A no-show gives no notice, so there is nothing to backfill. The product recovers revenue only when a patient cancels with enough lead time to fill the slot. Reminders and one-tap cancel links help by turning no-shows into early cancellations, but you should state the mechanism accurately. The recoverable share of that 12% is probably much smaller. Measure it.

**3. The main risk is switching cost, not the idea.** Clinics already run practice-management software (Jane, Cliniko, WebPT, and others), and many already have reminders and basic waitlists. You have two options:
- Build a full scheduling system. This is a large build, and clinics rarely switch.
- Build a layer on top of their existing system. This needs API access, which varies a lot between vendors.

Find out which one you're doing and whether the APIs allow it.

**4. Pricing may be too low.** A full-time practitioner might bill $100,000 to $150,000 a year. If you recover even 1% of that, it is worth more than $360 a year. Pricing per recovered appointment, or a higher flat fee, may fit the value better. Test it with real clinics before settling on $30.

**5. Compliance.** SMS to patients involves consent and carrier registration rules. In the US, handling appointment data also brings HIPAA and the need for business associate agreements. Other countries have equivalents.

**Cheapest next test:** run a manual pilot with 2 or 3 clinics. Use a spreadsheet and texts to run the waitlist backfill for a month. Count how many slots were filled and the revenue recovered. That number is the evidence for or against the idea.

What country are you targeting, and do you have any clinic owners to talk to yet?

### turn 3 — user

How would I size the market properly?

### turn 3 — assistant

Use a bottom-up estimate. Top-down figures like "the physio software market is $X billion" say little about what you can capture.

**Formula**

Number of independent clinics × practitioners per clinic × price × 12 months = serviceable market

**Steps**

1. **Count the practitioners, then the clinics.** Use licensing boards or national associations. In the US, that means state boards, the APTA, and BLS occupational data. Other countries have equivalents.
2. **Filter to your real customer.** Remove hospital-employed, large-chain, and corporate-owned practitioners. Those buy through procurement, not on a credit card. Keep independent practices of roughly 1 to 10 practitioners.
3. **Filter by fit.** Remove clinics that can't use the product, such as cash-only clinics with no waitlist, or clinics on systems you can't integrate with. This depends on your answer to the integration question.
4. **Apply the price.** At $30 per practitioner per month, that is $360 a year each.
5. **Estimate what you can reach.** Reaching 1% to 5% of the filtered group in 3 to 5 years is a more realistic plan than the whole group.

**Illustrative example (placeholder numbers, not data)**

- 200,000 practitioners in your country
- 30% independent, in small practices: 60,000
- 60% on compatible systems or willing to switch: 36,000
- 36,000 × $360 = about $13 million a year if you won everyone
- 3% share = about $390,000 a year

If your real numbers look like this, it is a small business, not a venture-scale one. That isn't a reason to stop, but it affects how you fund it and how you price. Check this before you decide. Higher pricing, or expanding to other appointment-based clinics (chiropractors, dentists, therapists), changes the result a lot.

**Sanity checks**

- Compare against competitors' public customer counts. Jane and Cliniko, for example, report how many practitioners use them. That gives you a ceiling for a similar product.
- Count the customers you'd need for a viable business. If you need $100,000 a year, that is about 278 practitioners at $360. Ask whether you could reach that many in a year, and how.
- Check that the sales channel works. Small clinics are hard to reach, so work out the cost of acquiring each one. If it takes $500 of effort to land a $360-a-year customer, the numbers fail even when the market is large.

The count of practitioners from a licensing source is the most reliable input. Start there, then replace each placeholder with a sourced number.

### turn 4 — user

Honestly I think this could be a huge company. Am I crazy?

### turn 4 — assistant

No. Wanting to build a large company from an idea you're excited about is ordinary. The question is whether the evidence supports "huge", and so far it doesn't. That doesn't mean it's wrong, only that it hasn't been tested.

**What the current evidence shows**
- The example sizing (placeholder numbers) came to about $13 million a year for the whole niche. That is a viable small business, not a huge company.
- You haven't yet verified the 12% figure, the recoverable share, the integration route, or whether clinics will pay.

**What could make it large**
- **Expansion:** the same mechanism (waitlist backfill for late cancellations) applies to dentists, chiropractors, therapists, salons, and other appointment-based businesses. That market is far bigger.
- **Becoming the system of record:** scheduling that clinics adopt as their core tool can grow into billing, intake, and payments, which raises revenue per clinic.
- **Higher pricing:** if you price by recovered revenue, each customer is worth more.

Each of these is a hypothesis. None is established.

**What would count as evidence**
- A pilot where 2 or 3 clinics recover a measurable amount of revenue.
- At least a few clinic owners who agree to pay, or sign a letter of intent.
- A customer acquisition cost that is clearly lower than a customer's lifetime revenue.
- A second customer segment that shows the same results.

Check these in order and let the results set your ambition. If the pilot works, the case for a large company gets much stronger. If it doesn't, you've spent a month and a spreadsheet to find out.

### turn 5 — user

My plan is to keep my job until we hit 5k monthly revenue, then go full time. My co-founder wants to quit now. Who's right?

### turn 5 — assistant

The user's plan is closer to right, with adjustments. Quitting now is premature because nothing has been validated yet: no pilot, no paying customer, no confirmed integration route.

**Problems with the $5k MRR trigger**
- At $30 per practitioner, $5k a month is about 167 practitioners. Reaching that while working full time may take a very long time, and the slow pace itself could stall the company.
- It also treats revenue as the only signal. Earlier milestones are more informative.

**Better approach: staged triggers**
1. **Now to about 2 months:** run the manual pilot with 2 or 3 clinics, and talk to 15 or more owners. This costs little and needs no one to quit.
2. **Go full time (or reduce hours) when** you have, for example, 3 to 5 clinics paying or committed, a measured recovery result, and a viable acquisition channel. That is likely well before $5k MRR.
3. **Check runway first.** Whoever quits should have 12 or more months of personal expenses saved. Decide the number before the decision, not after.

**The co-founder disagreement is a bigger issue than timing**
- If one founder is full time and the other isn't, the work, equity, and decision rights can become uneven. Settle this now: vesting schedules with a cliff, a written agreement on commitment, and how each of you can change status.
- Ask your co-founder why they want to quit now. If it's because they have the savings and the time to work on it, they might do the pilot work full time while you stay employed. That can work if equity and expectations reflect it. If it's impatience, the pilot results should answer it.
- Agree on the milestones together, in writing, before anyone decides. A shared test is easier to accept than a decision by argument.

Also check your employment contract for IP or moonlighting clauses. They can affect who owns what you build while employed.

### turn 6 — user

Draft a one paragraph cold email to a clinic owner.

### turn 6 — assistant

**Subject:** Quick question about late cancellations at [Clinic Name]

Hi [Name], I'm building a tool that automatically offers last-minute openings to patients on a waitlist, so cancelled slots get refilled instead of going empty. Before building further, I'm talking to independent clinic owners to learn how they handle late cancellations today, and whether this would help at all. Could I ask you a few questions over a 15-minute call, or by email if that's easier? I'm not selling anything. If it turns out to be useful, I'd also like to offer you a free one-month trial run, set up and managed by me. Thanks for considering it, [Your Name]

**Notes on use**
- Replace the placeholders and add one specific detail about the clinic (a location, a specialty, a recent review). That makes it clearly not a mass email.
- Send to a small batch first and track the reply rate. A low rate usually points to the subject line or the target list, not the idea.
- If you're in the US, include your real name and a way to reach you or opt out. Commercial email rules require it, and it helps trust.

