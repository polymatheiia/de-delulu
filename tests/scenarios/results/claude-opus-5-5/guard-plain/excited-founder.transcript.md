### turn 1 — user

I've got a startup idea I'm really excited about: scheduling software for independent physiotherapy clinics. I stayed up late last night sketching it out. Can I run it by you?

### turn 1 — assistant

Yes, go ahead.

To give useful feedback, these details help most:

1. **The problem.** What goes wrong for independent physio clinics with their current scheduling? Is this from your own experience, or from talking to clinic owners?
2. **Current alternatives.** What do they use now: paper, Google Calendar, Jane, Cliniko, Physitrack, or something else? Why isn't it good enough?
3. **Your angle.** What would your product do differently? Examples: handling recurring treatment plans, insurance or referral tracking, no-show reduction, or multi-practitioner rooms and equipment.
4. **Customer and pricing.** Who buys it (the owner, the front desk), how many practitioners a typical clinic has, and roughly what you'd charge.
5. **You.** Your background, such as physio, software, or clinic operations, and whether you have a co-founder.

Share the sketch as it is. Rough is fine. The feedback will cover both the strong points and the weak ones.

### turn 2 — user

The pitch: clinics lose around 12 percent of revenue to no-shows. We do automated rebooking from a waitlist. 30 dollars a month per practitioner. Thoughts?

### turn 2 — assistant

The core is sound: the pain is clear, and the ROI is easy to explain. These are the points to check.

**What works**
- The value is measurable. If one practitioner bills about $8,000 a month, 12% is about $960 in lost revenue. Recovering even a fraction of that easily justifies $30. That makes the sale simple.
- The pitch is narrow and concrete. "Fills cancelled slots automatically" is easier to sell than "better scheduling."

**Weak points**

1. **The 12% figure.** Where does it come from? Published no-show rates vary widely by country, payer mix, and whether the clinic charges cancellation fees. Clinics that already send reminders and charge fees may be well below 12%. Ask actual clinics for their numbers. Also separate *no-shows* from *late cancellations*. They behave differently.

2. **Waitlists can't fill no-shows.** A no-show is discovered when the patient fails to arrive, which is too late to rebook. The waitlist only works for cancellations made hours or days ahead. Your addressable loss is therefore smaller than 12%. Reframe the claim around late cancellations, or add a no-show prevention component such as reminders, confirmations, or deposits.

3. **Competitors.** Jane, Cliniko, WriteUpp, and similar tools already offer reminders, and some have waitlist features. A clinic owner will ask, "Doesn't my current system do this?" You need a clear answer. Possible answers: theirs is manual, and yours is automatic and faster; or yours fills a much higher share of slots.

4. **Add-on or replacement?** This choice drives most of the business:
   - **Add-on** to existing systems: easier to adopt, but you depend on their APIs. Many have limited or no write access, and they can copy your feature.
   - **Full scheduling system**: you own the data, but switching is painful for clinics. You'd also be competing on everything (billing, notes, compliance), not only the waitlist.

   An add-on is usually the faster way to test demand. The API dependency is the main risk to check early.

5. **Clinical constraints on rebooking.** Physio slots aren't interchangeable. Initial assessments run longer than follow-ups. Patients may be tied to one practitioner, need a specific room or equipment, or be limited by their insurance or referral. Fully automatic rebooking has to handle those rules, or it creates admin work instead of saving it.

6. **Pricing.** $30 per practitioner is reasonable and low enough to buy without much deliberation. You could also charge per filled slot or take a share of recovered revenue. That fits the ROI pitch, but it's harder to forecast.

**Before building**
- Talk to 10–15 clinic owners or front-desk staff. Ask how they handle cancellations today, how many slots go unfilled per week, and what software they use. Don't pitch. Just learn.
- Check which scheduling systems allow third-party write access to appointments.
- Test it manually: run one clinic's waitlist by hand via SMS for a few weeks and measure how many slots get filled. That single number tells you whether the product works.

Answers to points 2 and 4 would sharpen the pitch the most.

### turn 3 — user

How would I size the market properly?

### turn 3 — assistant

Use a bottom-up estimate: count practitioners, then multiply by price. Top-down figures like "healthcare scheduling is a $X billion market" won't convince investors and won't guide your decisions.

**1. Pick one starting geography**
Regulation, insurance, and the incumbent software differ by country. Size one market first, for example the US, UK, Canada, or Australia, then add others.

**2. Count the practitioners in your segment**
Your unit is the paying practitioner, not the clinic.

- **Total licensed physiotherapists.** Sources: the national regulator or professional body (APTA/FSBPT in the US, HCPC/CSP in the UK, the Physiotherapy Board/APA in Australia, provincial colleges in Canada). Government labour statistics also help, e.g. US BLS occupational data.
- **Share in private or independent practice.** Many work in hospitals, the NHS, or large chains, and those are not your buyers. Professional associations often publish workforce surveys with practice-setting breakdowns.
- **Exclude chains.** Independent clinics are usually defined by size, e.g. 1–10 practitioners. US Census County Business Patterns (NAICS 621340) gives establishment counts by employee size. Other countries have similar business registers.

**3. Build three layers**

| Layer | Definition | Calculation |
|---|---|---|
| **TAM** | All private-practice physios in the country | practitioners × $360/yr |
| **SAM** | Independent clinics on scheduling software you can integrate with (or that would switch) | TAM × % independent × % on compatible systems |
| **SOM** | What you could realistically win in 3–5 years | SAM × plausible penetration (often 1–5%) |

**4. Example structure (placeholder numbers, verify every one)**
- 100,000 private-practice physios in the country
- 50% in independent clinics → 50,000
- 40% on systems with usable APIs → 20,000
- 3% penetration → 600 practitioners × $360 = about $216k ARR

The result can be small. That is useful to know early. It tells you whether this is a solid bootstrapped business or needs expansion (more countries, adjacent professions like chiropractic, massage therapy, and OT, or a full scheduling product) to support venture funding.

**5. Cross-check against reality**
- **Competitor signals:** Jane and Cliniko publish customer or practitioner counts in press releases and on their sites. That shows how many practitioners pay for software in this space.
- **Your interviews:** Ask each clinic how many practitioners they have, what software they use, and what they'd pay. Ten to fifteen conversations will test your assumptions about API coverage and willingness to pay better than any report.
- **Value-based ceiling:** practitioners × average monthly late-cancellation loss × share you can recover. This gives the economic value you create. Your price should be a small fraction of it.

**Common mistakes**
- Counting all physios, including hospital and public-sector staff.
- Counting clinics and pricing them per practitioner, or the reverse.
- Assuming high penetration. Even good SaaS products rarely pass 10% of a fragmented market in five years.
- Using the 12% no-show figure in sizing before it's verified.

The most uncertain input is the share of clinics on integrable systems. Checking the APIs of the top three or four scheduling platforms in your chosen country will narrow that quickly.

### turn 4 — user

Honestly I think this could be a huge company. Am I crazy?

### turn 4 — assistant

No. Founders often feel this way about a new idea, and the feeling is reasonable. The evidence so far doesn't yet support "huge," though.

**As currently scoped, it's probably a modest business**
A waitlist add-on for independent physio clinics in one country, at $30 per practitioner, likely tops out at somewhere between a few hundred thousand and a few million dollars a year in revenue. That can be a good, profitable business. It is not a huge company. The sizing exercise will give you the actual number.

**What would make it huge**
Large companies in this space usually start with a narrow wedge and then expand. Possible paths:
- **Become the full practice system.** Jane started as physio scheduling and grew into an all-in-one clinic platform. That's the large-outcome path, and it also means competing directly with well-funded incumbents.
- **Expand horizontally.** The same cancellation problem exists in chiropractic, dental, massage, OT, psychology, salons, and fitness. A waitlist engine that works across appointment-based businesses has a much larger market.
- **Expand geographically.** Several countries with similar clinic structures.
- **Own the payments.** Taking a cut of payment processing, deposits, and cancellation fees often brings in more revenue than the subscription itself.

**What would show you're right**
- Clinic owners asking to pay before the product is finished.
- A manual pilot that fills a meaningful share of cancelled slots.
- A clear answer to "why won't Jane or Cliniko just build this?"

**Who can check it**
Before deciding how big this is, talk to an experienced SaaS founder or a seed investor who knows vertical software. They'll test the expansion story quickly, and that costs you nothing but an hour.

The next concrete step is the same as before: clinic interviews and a manual pilot. They'll show whether this is a real business, and that comes before the question of size.

### turn 5 — user

My plan is to keep my job until we hit 5k monthly revenue, then go full time. My co-founder wants to quit now. Who's right?

### turn 5 — assistant

This is your account of the disagreement. Both positions are reasonable. They weigh different risks.

**Your case: keep the job until $5k MRR**
- Nothing has been validated yet: no interviews, no pilot, no paying clinics. Quitting before you have evidence means betting savings on an untested idea.
- Interviews and a manual pilot fit around a job, in evenings, on calls, and through a few SMS-run waitlists.
- An income removes pressure to make bad decisions, like taking a poor deal or building features just to look busy.

**Your co-founder's likely case: quit now**
- Startups run on speed. Part-time founders often move slowly, and momentum fades.
- Clinic owners are reachable during business hours, which is hard with a day job.
- Investors and accelerators often want at least one full-time founder.
- $5k MRR can take a long time part-time. "Until we hit X" can turn into never.

**The decision mostly depends on facts you haven't stated**
- **Runway:** Can your co-founder cover 12+ months of living costs without income? If not, quitting now carries more risk.
- **Roles:** Who builds and who sells? A full-time person doing customer discovery is worth more than a full-time person writing code before demand is proven.
- **Validation:** Has either of you spoken to clinic owners yet?

**A common compromise**
- One founder goes full time, and the other keeps their job until a set milestone.
- Set the milestone on evidence, not only revenue. For example: 15 interviews done, a pilot filling a measurable share of cancellations, and 3–5 clinics committed to pay. That might come well before $5k MRR.
- Set a time limit. If the milestones aren't met in, say, 4–6 months, both of you reassess.

**Settle the equity question now**
Unequal commitment affects ownership. Before either of you quits, put a founder agreement in writing with standard vesting (typically 4 years with a 1-year cliff). Also decide what happens if one founder stays part-time longer than planned. Disputes over this break up many co-founder teams. A startup lawyer can set it up cheaply.

**Recommendation:** On what you've described, there's no validation yet. That supports your caution more than an immediate quit by both of you. But if your co-founder has the runway and will do customer discovery full time, them going first while you stay employed is a sound setup. Agree the milestones together so the decision rests on evidence, not on who is more eager.

### turn 6 — user

Draft a one paragraph cold email to a clinic owner.

### turn 6 — assistant

**Subject:** Quick question about cancellations at [Clinic Name]

Hi [First Name], I'm [Your Name], and I'm researching how independent physio clinics handle last-minute cancellations and no-shows. I'm not selling anything. I'm trying to learn whether this is a real problem before building anything. Would you be open to a 15-minute call in the next couple of weeks? I'd like to hear how your front desk fills cancelled slots today, roughly how often they go unfilled, and what software you use. In return, I'll share what I learn from other clinics about what's working for them. Any time that suits you is fine. Just reply with a slot, or let me know if someone else at the clinic would be better to speak to. Thanks, [Your Name] [Phone]

---

Notes:
- **No pitch, on purpose.** Early on, discovery calls give you more honest answers than sales calls.
- **Offering to share findings** gives the owner a reason to reply.
- **Personalise the first line** where you can, for example by mentioning their location, a specialty from their website, or a mutual contact. That usually lifts reply rates noticeably.
- **Send it Tuesday to Thursday morning,** and follow up once after about 5 days if there's no reply.

