### turn 1 — user

I've got a startup idea I'm really excited about: scheduling software for independent physiotherapy clinics. I stayed up late last night sketching it out. Can I run it by you?

### turn 1 — assistant

Yes, send it over.

To make the feedback useful, these details help:

- **The problem:** what goes wrong today for independent physio clinics with scheduling, and how you know. For example, conversations with clinic owners or your own experience in the field.
- **Current alternatives:** what these clinics use now (Jane, Cliniko, Practice Better, paper, Google Calendar) and why that falls short.
- **Your angle:** the specific features or approach that would make a clinic switch.
- **Who pays and how much:** clinic owner, per-practitioner pricing, and so on.
- **Your position:** whether you've worked in or with physio clinics, and whether you plan to build it yourself.

Rough notes are fine. You can paste the sketch as it is, and the feedback will cover both the strong parts and the weak ones.

### turn 2 — user

The pitch: clinics lose around 12 percent of revenue to no-shows. We do automated rebooking from a waitlist. 30 dollars a month per practitioner. Thoughts?

### turn 2 — assistant

The core is clear and easy to explain: a costly problem, a concrete fix, a simple price. The main risks are below.

**1. Check the 12% figure.** No-show and late-cancellation rates of roughly 10–15% are commonly cited for outpatient physio, so the number is plausible. Two things matter more than the average:
- Where it comes from. A clinic owner will ask.
- How much of it can be recovered. A slot freed two hours ahead can be refilled. A no-show at the appointment time usually can't. Automated rebooking only helps with the first case. The pitch should state the amount you can actually recover, not the full 12%.

**2. Existing tools already do some of this.** Jane, Cliniko and similar practice management systems have reminders, online booking and some form of waitlist. Check exactly what each offers. If they already handle waitlist notifications, your edge has to be clearly better results, and you'll need numbers to show it.

**3. This is a feature, and clinics won't switch systems for it.** A clinic's practice management system holds patient records, notes, billing and insurance claims. Switching is painful, and nobody does it for a waitlist. That leaves two realistic options:
- **An add-on** that connects to Jane, Cliniko and others. This is easier to sell, but you depend on their APIs, and they could build the same feature themselves.
- **A full practice management system** with rebooking as the headline feature. That is far more work, with compliance burdens (health data privacy rules such as HIPAA, PIPEDA or GDPR, depending on the market).

The add-on route is the more realistic place to start, but first check whether the main platforms have APIs that allow it.

**4. Pricing.** $30 per practitioner per month is easy to justify if one or two recovered appointments a month cover it. That is a good way to frame the price. If you go the add-on route, though, it comes on top of what clinics already pay for their main system. A price tied to results (e.g. a share of recovered revenue) could be easier to sell, though it's harder to track.

**5. The questions that decide this:**
- How do clinics fill cancelled slots today? Often a front-desk person phones around. If that already works reasonably well, the pain is smaller than the 12% suggests.
- Will patients on a waitlist actually take a slot at short notice?
- Who decides on buying: the owner, or the front-desk staff who'd use it?

The cheapest next step is to talk to 10–15 independent clinic owners or front-desk managers before building anything. Ask how they handle cancellations now, what that costs them, and what tools they use. Those answers will tell you more than any further work on the pitch.

### turn 3 — user

How would I size the market properly?

### turn 3 — assistant

Size it bottom-up: count the clinics you could actually sell to, then multiply by what each would pay. Top-down figures ("physio software is a $X billion market") look impressive but won't convince investors and won't help you make decisions.

**1. Pick one market first.** Start with a single country, ideally where you can talk to clinics and where you know the privacy rules. Add other markets later as separate calculations.

**2. Count practitioners in independent clinics.**
- Total licensed physiotherapists: from the national regulator or professional body (e.g. BLS and APTA in the US, CPA and provincial colleges in Canada, HCPC/CSP in the UK, AHPRA in Australia).
- Share working in private outpatient practice, not hospitals: usually reported by the professional body or in workforce surveys.
- Share in *independent* clinics, not large chains or hospital-owned groups: this figure is the hardest to find. Estimate it from business registries, industry reports, or by sampling (take a few cities, list every clinic on Google Maps, and classify each one as independent or chain).

**3. Apply your price.**
Practitioners in independent clinics × $30 × 12 = annual revenue if every one of them bought. This is your **serviceable market**. Do the arithmetic. A market of 40,000 practitioners works out to about $14M a year. That is a real business, but a small one for venture capital.

**4. Narrow it to who you can actually reach.**
Remove clinics that:
- use a system your product can't connect to (if you build an add-on)
- are too small to have a waitlist problem (e.g. solo practitioners with low demand)
- already handle waitlists well with their current tools

Find out which practice management systems hold the most market share. Their own claims ("used by X clinics") give a rough figure. This step matters most for the add-on route: your market is the clinics on systems with usable APIs.

**5. Estimate a realistic share.**
Assume a share you could plausibly win in 3–5 years, often low single-digit percentages for a new entrant. Back it with a path: how many clinics a month you'd sign, through which channel, and at what cost. A share without a path is a guess.

**6. Check it against value.**
Cross-check from the other direction: average clinic revenue × recoverable no-show share × the portion your product recovers. If the value per practitioner is far above $30, you have pricing room. If it's close to $30, the price is too high.

**7. Consider adjacent markets.**
Chiropractic, massage therapy, occupational therapy, psychology and dental clinics have the same problem. They show whether the same product can grow beyond physio. Size them separately and don't add them to the main figure.

**What you should end up with:** a spreadsheet where every number has a source or a stated assumption, so anyone can change one input and see the result. The weakest assumptions will be the independent-clinic share and the recoverable no-show share. Your 10–15 clinic interviews can firm up both.

### turn 4 — user

Honestly I think this could be a huge company. Am I crazy?

### turn 4 — assistant

No. Thinking an idea could become a big company is normal at this stage, and some do. The honest answer is that the version you've described is unlikely to be huge by itself. It could be a good business, and there are paths that make it bigger.

**Why the current version is small:** waitlist rebooking for independent physio clinics is a narrow product in a modest market. Using the rough example from earlier, even winning a large share of one country's independent physio practitioners gives revenue in the low millions a year. That can be a profitable, worthwhile company. It's not a huge one.

**What would make it bigger:**
- **More clinic types:** the same no-show problem exists in chiropractic, dental, psychology, massage, and allied health in general. If the product works across them, the market is many times larger.
- **More countries:** each one adds market, along with its own privacy rules and dominant software.
- **More of the clinic's workflow:** moving from a single feature to managing the clinic's whole schedule, or to a full practice management system. This is where most of the value in this space sits, and also where the competition is strongest.
- **A data advantage:** if you can predict which patients will miss appointments, and that prediction gets better as more clinics use the product, it's an edge that competitors can't easily copy.

**What would show it's working:** clinics that pay, keep paying, and can show recovered revenue. A few dozen paying clinics with numbers like that would tell you more about the company's ceiling than any market estimate.

**The useful framing:** start narrow (physio, one country, the waitlist problem), prove that clinics pay and stay, then expand. Most big companies in this space started that way. Whether yours becomes huge depends mostly on what the first 20 clinic conversations show, so that is still the next step.

### turn 5 — user

My plan is to keep my job until we hit 5k monthly revenue, then go full time. My co-founder wants to quit now. Who's right?

### turn 5 — assistant

This is one account, and both positions are reasonable. They suit different circumstances, so the answer depends on facts this conversation doesn't have yet.

**The case for your plan (keep the job until $5k/month):**
- You keep income while the core assumptions are still untested. Nobody has yet confirmed that clinics will pay.
- It limits personal financial risk, which matters most if either of you has dependents, debt or little savings.
- A revenue threshold is a clear, objective trigger.

**The case your co-founder would likely make (quit now):**
- Early-stage work, especially the clinic interviews and sales, is slow when done evenings and weekends. Full-time focus can get to answers in weeks instead of months.
- Reaching $5k/month part-time may take a long time. At $30 per practitioner, that is about 165 paying practitioners, or roughly 40–80 clinics. That is a lot of selling to do around a job.
- Some investors and accelerators prefer founders who are full-time.

**A weakness in your threshold:** $5k/month likely doesn't replace one salary, let alone two. It shows traction but doesn't cover living costs. Check whether it is the right trigger or just a round number.

**A common middle path:**
- One founder goes full-time, usually the one with more savings or lower costs, and the other stays employed until a milestone.
- Use **validation milestones** instead of only revenue. For example: 15 clinic interviews done, 5 clinics committed to a paid pilot, a working prototype in use at 2 clinics. These can be reached faster and tell you more early on.
- Agree on a runway: how many months of savings each of you can spend, and what happens if the milestones aren't hit by then.

**Things to settle between you, whichever way you go:**
- Each person's financial situation and how many months they could go without income.
- Whether one person going full-time changes equity or vesting. Agree on this in writing *before* anyone quits. Unequal commitment early on is a common cause of co-founder disputes.
- Who does what during the part-time phase.

The disagreement is mostly about risk tolerance and personal finances, not about who is right. Laying out both of your numbers side by side will usually make the right structure clear.

### turn 6 — user

Draft a one paragraph cold email to a clinic owner.

### turn 6 — assistant

**Subject:** Quick question about cancellations at [Clinic Name]

Hi [First name], I'm [Your name], and I'm researching how independent physio clinics deal with last-minute cancellations and no-shows. I'm considering building a tool that automatically offers freed-up slots to patients on a waitlist, but before building anything I want to understand how clinics like [Clinic Name] handle this today and what it actually costs you. Would you be open to a 15-minute call in the next week or two? I'm not selling anything. I'm just trying to learn from people who run clinics, and I'd be happy to share what I hear from other owners once I've spoken with a few. Thanks, [Your name] [Phone / LinkedIn]

---

Notes:
- It asks for a conversation, not a sale. That gets more replies at this stage and fits the goal of the first 15–20 interviews.
- Offering to share what other owners say gives them a reason to reply.
- Add a personal detail where you can, such as their location, size or a recent review mentioning wait times. Personalised emails get noticeably more replies.
- Keep the "not selling" line only while it's true. Once you're offering paid pilots, change it.

