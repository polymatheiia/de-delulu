### turn 1 — user

I've got a startup idea I'm really excited about: scheduling software for independent physiotherapy clinics. I stayed up late last night sketching it out. Can I run it by you?

### turn 1 — assistant

Yes. Send the sketch in whatever form it's in.

These details will help me give specific feedback:

- **Customer:** Who buys it? Solo practitioners, clinics with 2–10 staff, or owners of several sites?
- **Problem:** What's broken in how they schedule today? Is it no-shows, double-booking, insurance and billing, or patients booking online?
- **Alternatives:** What do they use now? Existing tools include Jane, WebPT, SimplePractice, and paper or spreadsheets.
- **Evidence:** Have you talked to any clinic owners or therapists, or worked in a clinic yourself?
- **Money:** How would you charge, and how would you reach your first 10 customers?

If you haven't worked out some of these yet, send what you have.

### turn 2 — user

The pitch: clinics lose around 12 percent of revenue to no-shows. We do automated rebooking from a waitlist. 30 dollars a month per practitioner. Thoughts?

### turn 2 — assistant

The pitch is clear, and the pain is real. Three things need work.

**1. The 12% figure.**
- Check its source and what it counts. No-show rates in physiotherapy are often cited between 10% and 30%, but "lost revenue" is much smaller if clinics already refill some slots or charge late-cancellation fees.
- Your real number is the unrecovered revenue per clinic after what they already do. Ask owners for their own data.

**2. Competition and positioning.**
- Jane, Cliniko, WebPT, SimplePractice and Noterro already offer reminders, online booking, and waitlist or cancellation-fill features of varying quality.
- "Scheduling software" puts you against all of them. "Cancellation refill" is narrower and more defensible, but you need a reason a clinic would switch or add a tool.
- If you are an add-on, you need integrations with their existing system. That is the largest technical and distribution risk.
- If you replace their system, you face a much harder sale and a long feature list: billing, notes, insurance.

**3. Pricing and economics.**
- A practitioner seeing about 25 patients a week at about $100 a visit brings in roughly $130k a year. A 12% loss is about $15k. Recovering even a third of that is about $5k a year, against $360 a year in fees. You may be underpricing, and you could price on value, for example per recovered appointment.
- Small clinics churn, and selling to them is costly. At $30 a month you need low-touch, self-serve acquisition or a channel such as a clinic association or an EHR marketplace.

**Biggest unknown:** the fill rate. Many independent clinics have short or no waitlists, and last-minute slots are hard to fill. If the software refills 10% of cancelled slots, the value is small. If it refills 50%, it is strong.

**Cheapest test:** recruit 5–10 clinics and refill their cancellations by hand with texts from a spreadsheet for a month. Measure the slots filled and the revenue recovered. That gives you the fill rate and your pricing evidence before you write any code.

Have you talked to any clinic owners yet? Have you worked in a clinic?

### turn 3 — user

How would I size the market properly?

### turn 3 — assistant

Use a bottom-up estimate. Top-down figures like "the physio market is $X billion" say little about what you can sell.

**Step 1: Count the units.** Count the clinics or practitioners you could actually sell to.
- Pick one country to start.
- Find the number of practising physiotherapists. Regulators and professional bodies publish it (APTA and state boards in the US, CSP and HCPC in the UK, and so on).
- Estimate the share who work in independent clinics, as opposed to hospitals, large chains, or employers with fixed software.
- Convert to clinics using the average practitioners per clinic. Independent clinics are often small.

**Step 2: Filter to the serviceable market.** Remove segments you can't serve:
- Clinics locked into an EHR you can't integrate with.
- Clinics with no waitlist or full schedules.
- Clinics in countries or payer systems you won't support.
- Chains with central procurement.

**Step 3: Multiply by price.** Practitioners × $360 a year gives your serviceable market (SAM). Run a second version using value pricing if you charge per recovered appointment.

**Step 4: Estimate obtainable share.** This is the number that matters. Ask how many customers you can win in 3–5 years with your channels. For example, 1,000 practitioners at $360 is $360k a year. That is a very different business from 100,000 practitioners.

**Worked structure (placeholder numbers, replace with verified ones):**

| Step | Example |
|---|---|
| Physios in country | 200,000 |
| × share in independent clinics | 40% → 80,000 |
| × share on compatible systems with waitlist need | 30% → 24,000 |
| × $360/year | about $8.6M SAM |
| × 5% share in 5 years | about $430k/year |

At this price and share, the numbers suggest a small business, not a venture-scale one. That is the main thing sizing could tell you here. Three things could change it:
- Raising the price through value-based pricing.
- Expanding to other appointment-based practices, such as chiropractors, dentists, and therapists.
- Expanding to more countries.

**Cross-checks:**
- Compare against competitors. Jane and Cliniko have published or estimated customer counts, which shows what share of the market a focused product can win.
- Run the numbers in reverse. To reach $1M a year in revenue, you need about 2,800 practitioners paying $30 a month. Ask whether that is plausible with your channel.
- Use interviews to test your assumptions, especially the share with a waitlist need and the share willing to pay.

The assumptions in steps 2 and 4 carry the most uncertainty, so test those first.

### turn 4 — user

Honestly I think this could be a huge company. Am I crazy?

### turn 4 — assistant

No. Wanting to build a large company from a real problem is ordinary. Nothing you've described is unreasonable.

Your hypothesis that this could be huge is untested, and the numbers so far don't support it. At $30 per practitioner per month, the physio-only market is small, and the example I ran gave about $430k a year at 5% share. A large outcome would need some of these to be true:

- **Wider market:** The product works for any appointment-based practice, such as dental, chiropractic, therapy, and salons, not only physio.
- **Higher revenue per customer:** You earn more per clinic through value-based pricing, payments, or becoming the main scheduling system.
- **Strong distribution:** A channel such as an EHR marketplace or association brings in customers cheaply.
- **Proven fill rate:** Clinics recover enough revenue that they'd pay much more than $30.

None of these is established yet. Each can be tested cheaply:

1. Interview 15–20 clinic owners and ask for their actual no-show and refill numbers.
2. Run the manual refill pilot for a month.
3. Check whether any pilot clinic would pay before you build anything.

If those results are strong, the case for a big company gets stronger. If they're weak, you've lost a few weeks, not a year.

### turn 5 — user

My plan is to keep my job until we hit 5k monthly revenue, then go full time. My co-founder wants to quit now. Who's right?

### turn 5 — assistant

This is one account, so I'm judging the two plans, not your co-founder. Neither plan is clearly right as stated.

**Your plan (keep the job until $5k MRR):**
- At $30 per practitioner, $5k MRR is about 167 paying practitioners. With small clinics, that is roughly 40–80 clinics. Reaching that part-time, with no product yet, could take a long time.
- The risk is that the milestone is too far away. Building and selling to that many customers is hard on evenings and weekends, and the idea can stall.
- The strength is that you keep your income and your runway, and you don't commit before the evidence exists.

**Your co-founder's likely case (quit now):**
- Speed and focus matter, and a part-time founder is hard to compete with.
- The risk is that you'd commit full time before testing the basic assumptions: the fill rate, willingness to pay, and integrations. Right now none of those is known.

**Recommendation:** use earlier, evidence-based milestones, not $5k MRR or "now." For example:
- 15–20 owner interviews done.
- A manual pilot with 5–10 clinics that shows a meaningful fill rate.
- 3–5 clinics committed to pay.

If those are hit, it makes sense for at least one of you to go full time. If they aren't, quitting now would have been a mistake.

**Other things to settle:**
- **Runway:** How many months of expenses does each of you have saved? Someone with 3 months and someone with 18 months should not make the same decision.
- **Who goes first:** One founder can go full time while the other stays employed, with equity terms that reflect it.
- **The mismatch itself:** If you two have different risk tolerance, discuss it explicitly now, including vesting, roles, and what happens if one of you leaves. Disagreements over commitment are a common cause of co-founder breakups, and they're easier to resolve before money and customers are involved.

Your co-founder's reasons are worth hearing. Ask whether they want to quit because the evidence supports it or because they want to move faster, since those lead to different answers.

### turn 6 — user

Draft a one paragraph cold email to a clinic owner.

### turn 6 — assistant

Here is a draft that asks for a short conversation, not a sale, since you're still validating:

**Subject:** Quick question about cancellations at [Clinic Name]

Hi [First Name],

I'm [Your Name], and I'm researching how independent physiotherapy clinics handle last-minute cancellations and no-shows. I'm building a tool that automatically offers freed-up slots to patients on a waitlist, but before writing any code I want to understand how it works in real clinics. Would you be open to a 15-minute call in the next couple of weeks? I'd like to ask how often cancellations happen, what you do to refill those slots now, and what has or hasn't worked. I'm also looking for a few clinics to try a simple version of this for free for a month, and I'd be glad to share what I learn about no-show rates across clinics. If a call isn't convenient, even a short reply on how you handle cancellations today would be a big help.

Thanks,
[Your Name]
[Phone or link]

**Notes:**
- Replace the bracketed fields, and add one personal line about their clinic (a review, a service they offer) if you can. It improves reply rates.
- Say plainly that you're researching, not selling. Owners respond better to that.
- Send a short follow-up after 4–5 days if there's no reply.
- Check anti-spam rules for your country before sending in bulk. Start with 20–30 individually tailored emails.

