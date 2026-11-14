### turn 1 — user

I've got a startup idea I'm really excited about: scheduling software for independent physiotherapy clinics. I stayed up late last night sketching it out. Can I run it by you?

### turn 1 — assistant

Yes, please run it by me. Share whatever you've got, whether that's rough notes, a pitch, or just the core idea in a few sentences.

To give you useful feedback, it helps to know a few things, though you don't need to have answers to all of them:

- **The problem:** What specifically goes wrong for independent clinics today with scheduling? Have you seen it firsthand or talked to clinic owners?
- **The customer:** Who buys and who uses it (owner, front desk, therapists, patients)?
- **The alternative:** What are clinics using now (paper, spreadsheets, Jane, Cliniko, WebPT, generic booking tools), and why would they switch?
- **Your angle:** What would make yours different, not just similar?

Start wherever you like. I'll give you an honest read, including the weak spots, since that's more useful than cheerleading at this stage.

### turn 2 — user

The pitch: clinics lose around 12 percent of revenue to no-shows. We do automated rebooking from a waitlist. 30 dollars a month per practitioner. Thoughts?

### turn 2 — assistant

The pain is real and easy to quantify, which is a good start. The pitch has a few problems, though.

**What's strong**
- The ROI math is simple. If a practitioner bills about $10k a month, 12% is about $1,200 in lost revenue. Recovering even a fraction pays for a $30 price many times over.
- Waitlist refill is a concrete, demo-able outcome. "We filled 9 slots last month" sells itself.

**Weak spots**

1. **The 12% number and what's recoverable.** A true no-show is, by definition, a surprise, so there's no time to refill the slot. Waitlist rebooking only works for cancellations with some notice. Your real addressable slice is late cancellations plus whatever reminders can convert from no-shows into early cancellations. That's probably much smaller than 12%. Find where your number comes from, and estimate the recoverable part.

2. **Incumbents.** Jane, Cliniko, WebPT and others already do reminders, and some have waitlist features. Check how good theirs are. Independent clinics rarely rip out their practice management system for one feature, so you have two paths:
   - **Add-on that integrates with their system.** This is easier to adopt, but you depend on their APIs and goodwill.
   - **Full scheduling replacement.** You control the product, but it's a much harder sale.

   You need to pick one, and your pitch doesn't say which.

3. **Waitlist supply.** Clinics that have empty slots may not have patients waiting. The product needs a way to build the waitlist, such as capturing patients who couldn't get their preferred time, or reactivating discharged patients. Otherwise the automation has nothing to work with.

4. **Pricing and distribution.** At $30 per practitioner, a 3-person clinic is about $1,000 a year. You can't afford sales calls at that price, so you need self-serve onboarding or a marketplace channel. Alternatively, price higher or on outcomes, for example a small fee per filled slot. $30 also undersells the value, since you're saving them hundreds.

5. **Compliance.** You'd be handling health-adjacent data and texting patients. Depending on the market, that means HIPAA or its equivalent, plus SMS consent rules. It's manageable, but it needs to be planned for.

**What I'd do next**
Talk to 10–15 clinic owners before building anything. Ask what their cancellation and no-show rates actually are, what happens when someone cancels, what tools they use, and whether they'd pay for this. Better still, ask a few to share a month of schedule data so you can calculate how many slots could have been refilled.

Which market are you targeting (US, UK, Canada, elsewhere), and have you spoken to any clinic owners yet? That changes which of these risks matters most.

### turn 3 — user

How would I size the market properly?

### turn 3 — assistant

Build it bottom-up, and keep the top-down number as a sanity check only.

**1. Count the buyers, not the market**

TAM = (number of practitioners in independent clinics you can reach) × (annual price per practitioner)

At $30 a month, that's $360 per practitioner per year. Narrow it in three steps:

- **Total physiotherapists** in your target country. Get this from licensing bodies or government labor statistics (BLS in the US, HCPC in the UK, provincial colleges in Canada).
- **Share in independent or small clinics.** Exclude hospitals, large chains, and corporate groups that have central procurement. A rough split is fine, but source it.
- **Share who fit your wedge.** Subtract clinics that don't have meaningful no-show or cancellation problems, clinics with no waitlist demand, and clinics on systems you can't integrate with.

That gives you TAM, then SAM (the segment you can actually serve, given your integration choice and geography).

**2. Estimate what you can realistically win (SOM)**

Don't use "1% of the market." Work from your acquisition channel instead:

- How many clinics can you reach per month (outreach, integration marketplace listing, content, referrals)?
- What's the trial-to-paid conversion rate?
- What's the monthly churn?

Even rough assumptions give you a customer count after 12, 24, and 36 months. That is more credible than a percentage.

**3. Sanity-check the unit economics**

- Average practitioners per clinic (probably 2–4)
- Revenue per clinic per year
- Acceptable CAC given that revenue
- Number of clinics you need to reach a meaningful revenue figure, such as $1M ARR

At $360 per practitioner, $1M ARR is about 2,800 practitioners. That's roughly 900 clinics if they average three each. This tells you whether the business is worth building at your current price, and that's the check that matters most.

**4. Cross-check with value-based sizing**

Estimate total recoverable revenue (practitioner revenue × late-cancel share × fill rate). If your price is a small fraction of that, you have room to raise it, which can change the market size a lot.

**5. Note what the market is *not***

Practitioners in the market aren't the same as willing buyers. Sizing tells you the ceiling. Your customer interviews and pilot data tell you what fraction of it is real.

If you tell me the country, I can help you find the right data sources and set up the spreadsheet structure.

### turn 4 — user

Honestly I think this could be a huge company. Am I crazy?

### turn 4 — assistant

You're not crazy, but the evidence you've shown me doesn't support "huge" yet.

**Why it's not crazy**
- The pain is real and measurable.
- Vertical software for fragmented small businesses has produced big companies (Jane, Mindbody, Toast, ServiceTitan started in similar places).
- Enthusiasm after a late night of sketching is a normal and useful starting signal.

**Why I'd hold the "huge" part loosely**
- The math doesn't get there on its own. At $360 per practitioner per year, you need thousands of practitioners to reach even $1M ARR, and the wedge (waitlist refill) is narrower than the 12% headline suggests. A feature-sized product at a low price point is more likely a solid small business than a huge company.
- Huge outcomes in this category usually come from expanding. Scheduling becomes the entry point, then you add billing, patient intake, rehab programs, payments, and marketing. That's a platform play, and it means competing with the incumbents head-on eventually.
- You haven't tested any of the key assumptions yet: that clinics will adopt it, that the fill rate is meaningful, and that it can be distributed cheaply.

**A more useful question than "huge or not"**
Is there a credible path from this wedge to something much bigger, and is the wedge good enough to get a foothold? You don't need to answer the first part today. You do need evidence for the second.

**What would change my mind in your favor**
- Five or ten clinics saying they'd pay, ideally with real schedule data showing recoverable slots.
- A pilot where you refill a measurable number of slots.
- A distribution channel that costs almost nothing per customer.

Treat the big vision as the reason to start and the validation as the gate to keep going. A weekend of calls with clinic owners would tell you more about "huge" than any amount of sketching.

### turn 5 — user

My plan is to keep my job until we hit 5k monthly revenue, then go full time. My co-founder wants to quit now. Who's right?

### turn 5 — assistant

On the evidence so far, you're closer to right, but neither plan is quite the right one.

**Why quitting now is premature**
You haven't talked to clinic owners or tested any assumption, and the pricing and wedge are still open questions. Quitting before validation means spending runway on learning things you could learn on evenings and weekends. The first stage of this, customer interviews and a manual pilot, needs almost no full-time effort.

**Why your $5k MRR gate has problems**
- At $30 per practitioner, $5k a month is about 167 practitioners, or roughly 55 clinics. Reaching that part-time with no sales budget could take a long time, and your co-founder may be right that part-time pace will stall you.
- Revenue is a lagging signal. You could be stuck at $2k for a year and not know whether the problem is the product, the price, or the hours.
- The gate may also push you to keep the job too long if growth is slow but real.

**A better structure: stage gates tied to evidence**
1. **Now, while employed:** Do 15 interviews and run a manual pilot with 3–5 clinics (even refilling slots by hand with a spreadsheet and texts). Set a deadline, say 8 weeks.
2. **Go full-time when you hit signals,** not just a revenue figure. For example: several clinics paying or committed, a measured fill rate that justifies the price, and a channel you can repeat. A lower revenue threshold like $2k MRR plus strong retention can work too.
3. **Set a savings buffer** (6–12 months of expenses) before either of you quits. Whoever quits first should have that cushion.

**The co-founder gap matters more than the date**
A disagreement over commitment is a real risk. If one of you is all-in and the other is hedging, resentment builds fast. Have an explicit conversation covering:
- What specific milestones trigger each of you going full-time
- Who does what in the meantime
- What happens to equity and roles if one person goes full-time first (vesting should reflect it)

If your co-founder is financially able and wants to go full-time now, one option is for them to do so while you stay part-time, with clear roles and adjusted equity. That only works if you both agree on it.

How much runway does each of you have, and have you both agreed on any shared milestones yet?

### turn 6 — user

Draft a one paragraph cold email to a clinic owner.

### turn 6 — assistant

**Subject:** Quick question about late cancellations at [Clinic Name]

Hi [First Name],

I'm [Your Name], and I'm researching how independent physio clinics handle late cancellations and empty slots. I'm building a tool that automatically offers freed-up appointments to patients on a waitlist, but before going further I want to learn from clinic owners about what actually happens when someone cancels at the last minute: what you do today, what works, and what doesn't. Would you be open to a 15-minute call in the next couple of weeks? I'm not selling anything. If it's useful, I'm also happy to share what I learn from other clinics about how they're handling it.

Thanks,
[Your Name]

**Notes on the choices:**
- **It asks for an interview, not a sale.** That matches where you are, and owners are much more likely to reply to a short research request than a pitch.
- **It offers something back.** Sharing what you learn gives them a reason to say yes.
- **Personalize the first line** if you can, for example by mentioning their clinic, their booking system, or a recent review. A single specific detail noticeably raises reply rates.
- **Keep the ask small and specific** (15 minutes). If they're interested, you can raise the pilot on the call.

If you tell me which booking systems your target clinics use, I can tailor a version, or write a short follow-up for non-responders.

