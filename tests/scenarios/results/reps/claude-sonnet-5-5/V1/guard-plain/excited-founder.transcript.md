### turn 1 — user

I've got a startup idea I'm really excited about: scheduling software for independent physiotherapy clinics. I stayed up late last night sketching it out. Can I run it by you?

### turn 1 — assistant

Yes. Send the sketch in whatever form it's in.

These details will make the feedback more specific:

- **Customer:** the clinic size you're targeting (solo practitioner, 2–5 therapists, more) and who makes the buying decision.
- **Problem:** what clinics do now (paper, spreadsheets, or tools like Cliniko, Jane, or WriteUpp) and what fails in that setup.
- **Difference:** what your product does that those tools don't.
- **Money:** a rough price per clinic or per practitioner, and how you'd get your first 10 customers.
- **Evidence:** whether you've talked to any clinic owners yet, and what they said.

If some of these aren't worked out yet, send the sketch anyway. Gaps are useful to find early.

### turn 2 — user

The pitch: clinics lose around 12 percent of revenue to no-shows. We do automated rebooking from a waitlist. 30 dollars a month per practitioner. Thoughts?

### turn 2 — assistant

The pitch is clear and the value is easy to quantify. Several parts need testing.

**What's good**
- The problem is concrete and expressed in money, which makes it easy to sell.
- The wedge is narrow: waitlist backfill, not "scheduling software."
- At $360 a year per practitioner, the price is small against the revenue at stake. A practitioner billing $100k a year loses about $12k at a 12% no-show rate. Recovering even a tenth of that covers the subscription several times over.

**What to test**
1. **The 12% figure.** Find the source, and check whether it counts late cancellations as well as no-shows. Published rates vary a lot by region and clinic type. Ask a few clinics for their own numbers.
2. **The recoverable share.** The key number is how many of those empty slots you can refill, not how many are lost. Many no-shows are discovered at or after the appointment time, and a waitlisted patient needs notice of a few hours at least. Your real value is 12% multiplied by the refill rate. If the refill rate is 20%, the product recovers about 2.4% of revenue.
3. **Incumbents.** Cliniko, Jane, WriteUpp, and similar tools already offer reminders, and some offer waitlists. Backfill looks more like a feature than a standalone product, so find out what they currently do and where it falls short.
4. **Integration.** Clinics won't replace their scheduling system for this. If the product has to sit on top of their existing calendar, you need two-way sync with several systems, and that is most of the engineering work.
5. **Compliance.** Patient messaging touches health privacy law (HIPAA, GDPR, or local equivalents) and SMS consent rules. This affects cost and timeline from the start.
6. **Pricing.** $30 per practitioner may be too low, and small clinics also churn fast. Pricing tied to recovered appointments, such as a fee per filled slot, may match the value better.

**Next step.** Before building anything, talk to 10 to 15 clinic owners. Ask how many no-shows they had last month, what they do about them now, what software they use, and whether they would pay $30 a month for this. Their answers will settle most of the questions above.

What do you know so far about the competitors and the refill rate?

### turn 3 — user

How would I size the market properly?

### turn 3 — assistant

Use a bottom-up estimate, not a top-down one. "The physio market is $X billion" says nothing about how many clinics would buy this.

**Formula**

Customers × practitioners per customer × price × 12 months

**Steps**

1. **Choose a starting region.** Count one country, or one state or province, not the world. Licensing, privacy law, and software habits differ by region.
2. **Count practitioners.** Licensing bodies and national statistics offices publish the number of registered physiotherapists. Professional associations often publish clinic counts too.
3. **Narrow to the real target.** Keep only independent clinics, and exclude hospital, sports team, and large-chain employees. Then filter by who has a scheduling system you can integrate with. The result is your serviceable market.
4. **Apply the price.** At $30 a month, each practitioner is worth $360 a year. Example with a placeholder count: 20,000 independent practitioners × $360 = $7.2M a year. Replace 20,000 with a sourced number.
5. **Apply a realistic share.** Estimate what share you could reach in 3 to 5 years, usually a low single-digit percentage for a new tool. That share is your obtainable market. It decides whether the business works.

**What the result tells you**

At this price point, the total market in one country is probably in the single-digit to low double-digit millions of dollars a year. If so, a venture-scale outcome would need several things:
- Expansion to many countries.
- Higher pricing, such as per recovered slot.
- Adjacent products, such as billing or intake.
- Other clinic types with the same no-show problem, such as dentists, chiropractors, massage therapists, and mental health practices.

A smaller outcome can still work as a profitable, bootstrapped business. Decide which one you're aiming for, because it changes how you should size the market.

**Cross-checks**
- Divide the total by the number of customers you'd need. If you need 2,000 clinics to reach $1M a year, ask how you'd find and close them. Small clinics usually convert through direct outreach and referrals, not ads.
- Compare with an incumbent. Some competitors disclose customer counts or revenue, which gives you a ceiling to compare against.
- Use your interviews. If 3 of 15 owners would pay, that is a conversion signal. If none would, the market size is irrelevant.

### turn 4 — user

Honestly I think this could be a huge company. Am I crazy?

### turn 4 — assistant

No. Believing an idea could be big is normal at this stage. Most founders do, and it's useful because it keeps people working through the slow early months.

Right now the belief is a hypothesis, not a finding. The numbers so far don't show a huge company. At $30 per practitioner, one country is a small market. Backfill is also easy for incumbents to copy. A big outcome would need one or more of these:

- **Expansion beyond physiotherapy** into other appointment-based practices with the same no-show problem.
- **A larger product** built on the waitlist wedge, such as payments, intake, or patient engagement.
- **Pricing tied to recovered revenue**, which raises revenue per clinic.
- **Multiple countries.**

None of these is implausible. Many companies started as a narrow tool for one profession and grew this way. But each one has to be shown, and the clinic interviews are the cheapest way to start. If owners confirm the no-show losses, the low refill rate turns out to be fixable, and a few say they'd pay, the case for a large company gets much stronger.

The scale of the ambition is not the risk. The risk is spending months building before you've tested the core assumptions.

### turn 5 — user

My plan is to keep my job until we hit 5k monthly revenue, then go full time. My co-founder wants to quit now. Who's right?

### turn 5 — assistant

This is one account, and the co-founder would probably describe it differently. Based on the plans themselves, neither one fits the current stage.

**Your plan: keep the job until $5k monthly revenue**
- It limits personal financial risk, which is a real advantage.
- The target is demanding. $5k at $30 per practitioner is about 167 practitioners, likely 50 to 80 clinics. Reaching that part-time, while building the product and handling integrations, could take much longer than expected.
- Revenue is also a late signal. You'd need to be near product-market fit before you could hit it, and that fit is hard to reach on nights and weekends.

**Co-founder's plan: quit now**
- Full-time work makes sales calls, clinic visits, and fast iteration much easier.
- Nothing has been validated yet. There are no interviews, no confirmed refill rate, and no paying customer. Quitting before those exist means risking income on untested assumptions.
- The runway matters most. A founder with 12+ months of savings is in a different position from one with 3.

**A better question than who's right**

A gap in commitment between co-founders is itself a risk, whichever way it's resolved. A few concrete steps would help:

1. **Set milestones that aren't just revenue.** For example: 15 clinic interviews done, 5 clinics piloting, 3 paying. Define what triggers going full time.
2. **Decide on the co-founder's runway.** How many months can they live on savings? That sets a deadline for the milestones.
3. **Split the work by availability.** The co-founder who is full-time could run interviews and pilots now, while you build or advise on evenings.
4. **Check the job.** Ask whether you could go part-time or take unpaid leave. That is often an option and cuts the risk of both plans.
5. **Write down equity and vesting** to reflect the difference in time committed. Do this before one of you goes full-time, not after.

The first two steps are the most useful: shared milestones and a runway number. With those, the disagreement becomes a concrete decision about dates and evidence instead of a choice between two attitudes.

### turn 6 — user

Draft a one paragraph cold email to a clinic owner.

### turn 6 — assistant

**Subject:** Quick question about no-shows at [Clinic Name]

Hi [First Name],

I'm researching how independent physiotherapy clinics handle last-minute cancellations and no-shows, and I'd value 15 minutes of your time. I'm not selling anything yet. I'm trying to understand how often empty slots happen, what you do to fill them now, and where that process breaks down. I'm building a tool that automatically offers cancelled slots to patients on a waitlist, but I want to learn from clinic owners before building more. If you're open to a short call in the next two weeks, reply with a time that suits you, or I can work around your schedule. Thanks for considering it.

[Your Name]
[Phone / Website]

**Notes on the draft**
- It asks for an interview, not a purchase. Cold sales emails to clinic owners tend to get ignored, and interview requests get more replies.
- Personalize the first line if you can, for example by mentioning something from their website or a local detail. That raises reply rates more than any other change.
- Keep the ask small and specific (15 minutes), and send follow-ups after about 4 to 5 days.
- Before sending, check your region's rules on commercial email, such as CAN-SPAM or GDPR, since the message mentions a product.

