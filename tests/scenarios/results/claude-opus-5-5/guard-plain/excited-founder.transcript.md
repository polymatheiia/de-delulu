### turn 1 — user

I've got a startup idea I'm really excited about: scheduling software for independent physiotherapy clinics. I stayed up late last night sketching it out. Can I run it by you?

### turn 1 — assistant

Yes, go ahead and share it.

These details make the idea easier to assess:

- **The problem:** what goes wrong with scheduling at independent physio clinics today, and how you know. Personal experience, conversations with clinic owners, or your own guess all count, but they carry different weight.
- **Current alternatives:** what these clinics use now, such as Jane, Cliniko, generic booking tools, or paper and phone.
- **What's different:** the specific features or approach that would make a clinic switch.
- **Business model:** pricing, who pays, and how you'd reach clinics.
- **Your position:** any background in physio, healthcare, or software, and whether you'd build it yourself.

A rough sketch is fine. The feedback will cover strengths and weak points.

### turn 2 — user

The pitch: clinics lose around 12 percent of revenue to no-shows. We do automated rebooking from a waitlist. 30 dollars a month per practitioner. Thoughts?

### turn 2 — assistant

The economics are reasonable. The core mechanism has a gap you should look at first.

**The main gap: waitlists can't fix no-shows.** A no-show gives no notice. When the patient fails to turn up at 10:00, there's no time to fill the 10:00 slot from a waitlist. Automated rebooking works for **late cancellations**, where someone cancels hours or a day ahead. So the real question is how much of that 12% comes from late cancellations you can refill, and how much from true no-shows you can't. If most of it is true no-shows, the pitch is overstated. You'd need deposits, cancellation fees, or better reminders as well as a waitlist.

**Where does the 12% come from?** Clinic owners will ask. If it's a general healthcare figure, physio may differ. Physio has a lot of repeat appointments, and those patients may behave differently from one-off visitors.

**Feature or product?** Clinics already run practice management software that handles booking, billing, notes, and often reminders. Jane and Cliniko are the big ones in this space, and at least some of them already have waitlist features. Check exactly what each one offers. That leaves you two options:
- **An add-on that integrates with existing systems.** Easier to sell, but you depend on their APIs, and they can copy you.
- **A full replacement system.** Harder, because switching means migrating patient records. Clinics rarely switch for a single feature.

**Pricing looks defensible.** One practitioner might bill roughly $8–12k a month. If you get back even a fifth of a 12% loss, that's a few hundred dollars recovered for every $30 spent. That ROI is easy to explain. The risk isn't the price. It's whether clinics believe the recovery numbers.

**What would test this cheaply:** talk to 10–15 clinic owners or front-desk staff before building anything. Ask:
- How many late cancellations vs. true no-shows do they get a week?
- What do they do now when someone cancels? (Many front desks already phone a list of patients by hand.)
- What software do they use, and would they add a tool or switch?

If late cancellations are common and refilling them by hand is a real pain, you have something. If the answer is "we just call people and it works fine," that's useful to know before you spend months building.

### turn 3 — user

How would I size the market properly?

### turn 3 — assistant

Size it bottom-up: count the practitioners you could actually sell to, then multiply by your price. Top-down figures like "physio software is a $X billion market" impress nobody, because they don't show who pays.

## 1. Pick a geography first

Licensing, insurance, and software competitors differ by country. Start with one market, such as the US, UK, Canada, or Australia, and size that. You can add others later.

## 2. Count practitioners in your segment

Narrow it step by step and write down a source for each number:

| Step | What to find | Where to look |
|---|---|---|
| Total licensed physios | Headcount | National statistics agencies (BLS in the US), professional bodies (APTA, CSP, Physiotherapy Board of Australia) |
| In private practice | % not in hospitals or large chains | Professional association workforce surveys |
| In *independent* clinics | Exclude chains that buy software centrally | Business directories, Google Maps scrapes, association member lists |
| On compatible software | If you're an add-on, only clinics using systems you integrate with | Competitor customer counts, your own interviews |

Each row is a filter. Keep every assumption visible so you can change it later.

## 3. Turn the count into revenue

- **TAM:** practitioners in independent private practice × $360/year
- **SAM:** the subset you can reach with your product as built (right country, right software, right size)
- **SOM:** what you could realistically win in 3–5 years. Early-stage SaaS usually reaches low single-digit percentages of SAM.

An illustrative calculation. **These numbers are made up to show the method. Replace them with sourced figures:**

- 200,000 licensed physios
- × 40% in private practice = 80,000
- × 50% independent = 40,000
- × 60% on software you integrate with = 24,000 (SAM)
- × $360/year = **~$8.6M SAM**
- 3% capture = 720 practitioners = **~$260k ARR**

A result like that tells you something. At $30/month in one country, the market supports a good small business, but probably not a venture-scale one. You'd need more countries, other clinic types (chiro, massage, OT, dental), or a higher price.

## 4. Cross-check from the value side

Separately, estimate the dollar value of recoverable late cancellations per practitioner. If that's $300/month and you charge $30, you have room to raise the price. Pricing at 10–20% of value delivered is common. This check often shows that the price, not the market, is the main lever.

## 5. Use your interviews to replace guesses

The weakest numbers are usually "% independent" and "% on compatible software." The 10–15 clinic conversations can firm those up. Also ask how many practitioners each clinic has, since that's your actual billing unit.

## What investors and you should take from it

The total matters less than whether every step is believable and sourced. A small, well-supported number beats a large, hand-waved one. It also tells you early whether you're building a lifestyle business or need to plan for expansion.

### turn 4 — user

Honestly I think this could be a huge company. Am I crazy?

### turn 4 — assistant

No. Wanting to build something large is normal for founders. The question is whether this specific plan supports it, and as described, it probably doesn't yet.

**Why the current version looks small:**
- A single feature (waitlist backfill) at $30 per practitioner, sold to independent physio clinics in one country, likely gives a SAM in the single-digit millions. The illustrative numbers earlier pointed there, and real sourced figures may not change the picture much.
- Established practice management systems can add or improve a waitlist feature. That caps both your price and your market share.

**What huge companies in this space did differently:**
- **They became the system of record.** Jane and Cliniko own booking, billing, notes, and payments. That makes them hard to replace and lets them charge more per practitioner.
- **They expanded across disciplines.** Physio, chiro, massage, psychology, and dietetics share much the same scheduling problems, which multiplies the market several times.
- **They expanded across countries.** Cliniko started in Australia and Jane in Canada. Both grew internationally.
- **They took a cut of payments.** Processing patient payments can earn more than subscription fees.

**A realistic path to "huge":**
1. Start with the narrow wedge: waitlist rebooking for physio clinics.
2. Show measurable recovered revenue. That's your proof and your sales pitch.
3. Use the trust and data to expand into reminders, deposits, and cancellation fees, which also address true no-shows.
4. Either grow into a full practice system or spread across disciplines and countries.

Each step is a separate bet, and most attempts stall somewhere along the way. Large companies often do start this narrow, though.

**How to tell which kind of company this is:** the clinic interviews. If owners describe late cancellations as a painful, costly problem, and say they'd pay more than $30 or would switch systems for a better answer, that supports the bigger vision. If they shrug, a big-company ambition here would need a different starting wedge.

One practical point: you mentioned staying up late on this. The idea will hold up after a full night's sleep, and the interview questions will come out sharper.

### turn 5 — user

My plan is to keep my job until we hit 5k monthly revenue, then go full time. My co-founder wants to quit now. Who's right?

### turn 5 — assistant

Both positions are reasonable. This is one account of the disagreement, and the right answer depends on numbers neither of you has stated yet.

**The case for your plan:**
- No product, interviews, or paying customers exist yet. Quitting before validation spends savings on an untested idea.
- The interviews and an early prototype can be done in evenings and weekends.
- A revenue trigger is clear and hard to argue with later.

**What your co-founder would likely say:**
- Part-time founders move slowly. Clinic owners take meetings during business hours, which are also your working hours.
- Early momentum matters, and a full-time founder can do 15 interviews in two weeks instead of two months.
- $5k MRR is about 167 paying practitioners at $30 each. Reaching that part-time could take a long time, maybe longer than the idea stays fresh or the motivation lasts.

**Problems with the $5k figure itself:**
- After costs, $5k a month doesn't pay one salary, let alone two. Hitting it doesn't mean you can afford to quit. It means demand is real.
- It's a revenue trigger set before any validation. An earlier signal might justify going full-time, such as 10 clinics committing to pay, or a pilot showing recovered revenue.

**A common middle ground:**
- One founder goes full-time and the other stays employed. That's a common setup, and it keeps one income stable.
- If your co-founder goes first, agree in writing now on equity, vesting, and what happens if they go full-time and you don't follow. Uneven commitment is a frequent cause of co-founder breakups, and it's much easier to settle before money or resentment builds up.
- Your co-founder should check their own runway: months of savings, and the point at which they'd go back to a job.

**Questions to settle together:**
1. How many months can each of you live without a salary?
2. What evidence would convince both of you this is worth going full-time? Agree on a specific milestone, not just a revenue number.
3. If one person goes full-time first, how does that change equity or roles?

Quitting is the hard-to-reverse part, so it's worth deciding after the first batch of clinic interviews rather than before. Those conversations will give you both real evidence instead of competing instincts.

### turn 6 — user

Draft a one paragraph cold email to a clinic owner.

### turn 6 — assistant

Subject: Quick question about late cancellations at [Clinic Name]

Hi [Name], I'm [Your Name], and I'm researching how independent physio clinics handle late cancellations and no-shows. I'm not selling anything. I'm trying to learn whether this is a real problem before building anything. When a patient cancels the day before or the morning of, what does your front desk usually do, and how often do those slots stay empty? If you'd be open to a 15-minute call sometime in the next couple of weeks, I'd really value hearing how it works at [Clinic Name], and I'll share what I learn from other clinics in return. Thanks, [Your Name] [Phone]

---

Some notes on the choices:

- **It asks for a conversation, not a sale.** You're still validating, and owners are more willing to talk when nobody is pitching to them.
- **It leaves out the 12% figure.** An unsourced statistic invites skepticism. Asking what happens at their clinic gets you real data instead.
- **The question is answerable on its own.** Some owners will reply to the question in the email and skip the call. That still counts as a data point.
- **It offers something back.** Sharing what you learn from other clinics gives them a reason to say yes.
- **Personalize the first line where you can,** for example with something from their website or location. Personalized emails get noticeably more replies than generic ones.

