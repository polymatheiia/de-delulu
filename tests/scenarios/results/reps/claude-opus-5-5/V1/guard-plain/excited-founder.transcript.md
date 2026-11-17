### turn 1 — user

I've got a startup idea I'm really excited about: scheduling software for independent physiotherapy clinics. I stayed up late last night sketching it out. Can I run it by you?

### turn 1 — assistant

Yes, go ahead. Independent physio clinics are a reasonable niche to look at.

To get the most useful feedback, these details help:

- **The problem**: What's frustrating about scheduling in these clinics today? Are you working from your own experience, or from conversations with clinic owners or staff?
- **Current alternatives**: What do clinics use now (Jane, Cliniko, Power Diary, paper, Google Calendar), and why isn't that good enough?
- **Your angle**: What would your product do differently or better?
- **Customer and pricing**: Who would buy it (owner, front desk, solo practitioner), and roughly what would they pay?
- **Your background**: Any links to physiotherapy, healthcare, or software?

You can paste your notes as they are. They don't need to be polished.

### turn 2 — user

The pitch: clinics lose around 12 percent of revenue to no-shows. We do automated rebooking from a waitlist. 30 dollars a month per practitioner. Thoughts?

### turn 2 — assistant

The core idea is clear and the price is easy to say yes to. A few things need work before it holds up.

**1. Waitlist rebooking doesn't fix true no-shows.**
When a patient doesn't turn up, you usually find out at the appointment time, which is too late to fill the slot. Waitlist backfill works for *late cancellations* (a few hours to a day's notice). So the question is how much of that 12% comes from late cancellations and how much from no-shows. If it's mostly no-shows, reminders, deposits and cancellation fees do more than a waitlist. Find that split out first.

**2. Where does the 12% come from?**
Figures like this often come from vendor marketing or from studies of other specialties. A clinic owner will ask, and an investor certainly will. Better still, get real numbers from a few clinics' booking data.

**3. Incumbents already have some of this.**
Jane, Cliniko and Power Diary all handle booking, reminders and, to varying degrees, waitlists. That leaves two paths:
- **Add-on**: you integrate with their systems. Your product is then exposed to their API access and to them building the feature properly themselves. "This is a feature, not a product" is the standard objection here.
- **Full replacement**: you have to build the whole practice management system (notes, billing, insurance), and switching costs for clinics are high.

You need to pick one, and that choice shapes everything else.

**4. Pricing may be too low.**
Rough numbers: a practitioner seeing 25 patients a week at $90 brings in about $9,700 a month. If you recover even 2–3% of that, it's worth $200–300 a month to them. At $30 you leave money on the table, and you need a lot of clinics to build a business. If you're an add-on, $30 might suit low-friction adoption. If the recovered revenue can be shown, pricing tied to that value is an option.

**5. Test it cheaply first.**
Before building, talk to 10–15 clinic owners or front-desk managers. Ask:
- How often do you get late cancellations versus no-shows?
- What happens now when a slot opens up the same day?
- What software do you use, and what annoys you about it?
- Would you pay to fill those slots, and how much?

If the front desk already fills slots by phoning a waitlist and it mostly works, that matters. If they say they never manage to fill same-day gaps, that's a signal in your favour.

Overall, the problem is real. The weak points are the no-show versus late-cancellation gap and your position against existing practice management software. Those are the parts to firm up next.

### turn 3 — user

How would I size the market properly?

### turn 3 — assistant

Build it from the bottom up. Count the actual buyers and multiply by what they'd pay. Top-down figures ("physio is a $X billion industry") don't tell you anything useful about a scheduling tool.

## Step 1: Define the customer tightly

Write down exactly who counts. For example: independent physio clinics with 1–10 practitioners in [country], not part of a chain or hospital. Each part of that definition changes the count, so decide it before you search for numbers.

## Step 2: Count them

Start with one country. Useful sources:

- **Licensing and registration bodies**: number of registered physios (e.g. AHPRA in Australia, HCPC in the UK, state boards in the US, provincial colleges in Canada).
- **Professional associations**: APTA, CSP, the Australian Physiotherapy Association and Physiotherapy Canada sometimes publish workforce surveys that split private practice from hospital work.
- **Government labour statistics**: BLS (US), ABS (Australia), ONS (UK) for employment by setting.
- **Business registries and directories**: Google Maps, Yelp or association "find a physio" listings to estimate clinic counts and sizes in a sample region, then scale up.

Your target is **practitioners in independent private practice**, because that's your pricing unit.

## Step 3: Calculate three numbers

Illustrative structure (swap in real figures):

| Layer | Meaning | Example calculation |
|---|---|---|
| **TAM** | Every practitioner in your segment, everywhere you could sell | 40,000 practitioners × $360/yr = $14.4M |
| **SAM** | The ones you can actually reach given your product choices | Only those on Jane/Cliniko (if you're an add-on), only English-speaking markets, etc. Say 15,000 × $360 = $5.4M |
| **SOM** | What you could realistically win in 3–5 years | 5–10% of SAM = $270K–540K ARR |

Your add-on versus full-replacement decision affects SAM directly. As an add-on, SAM is capped by the user base of the platforms you integrate with.

## Step 4: Cross-check with value-based sizing

Estimate the money at stake separately:

> practitioners × average revenue per practitioner × % lost to *late cancellations* (not no-shows) × % you can realistically recover

If that recoverable pool is many times larger than your subscription revenue, it supports raising the price. If it's small, the product may not save enough to justify itself.

## Step 5: Validate with real data

Desk research gives you the frame. Your customer interviews give you the inputs that matter most: how many practitioners per clinic, what software they use, how many late-cancellation slots they lose each week, and what they'd pay. Ask 3–5 clinics whether they'd share anonymised booking data. A few real cancellation rates beat any published statistic.

## What to watch for

- **Small SOM**: if the realistic number is a few hundred thousand dollars a year, it can still be a good bootstrapped business but won't interest VCs. Decide which kind of company you want to build.
- **Expansion paths**: if one country looks small, the same tool may work for chiropractors, massage therapists, psychologists and other appointment-based allied health clinics. Size those as adjacent segments, not as part of your core number.
- **Double counting**: practitioners who work at more than one clinic, or part-time, can inflate the counts.

One country, done carefully with sourced numbers, convinces people more than a global estimate built on guesses.

### turn 4 — user

Honestly I think this could be a huge company. Am I crazy?

### turn 4 — assistant

No. Thinking an early idea could be big is normal for founders, and you need some of that to start anything. But excitement isn't evidence. Right now nothing yet shows whether this is a huge company, a solid small business, or a feature an incumbent will add.

An honest read of where things stand:

**Against "huge" as currently scoped:**
- Waitlist rebooking for independent physio clinics is a narrow product in a fairly small segment. At $30 per practitioner per month, even a strong share of one country probably adds up to a business in the low millions of dollars a year.
- Incumbents own the customer relationship and could build a better waitlist feature.
- The no-show versus late-cancellation gap could shrink the core value proposition.

**What a path to "huge" would look like:**
Large vertical software companies usually start with one sharp feature, then become the system the business runs on. In practice that means:
- expanding from physio to allied health (chiro, massage, psychology, dietetics), which multiplies the market;
- moving from add-on to full practice management, or into payments and insurance billing, where much of the revenue in this space sits;
- earning per-transaction revenue, not just subscriptions.

Jane and Cliniko already took this route, which shows it can work, and also shows who you'd be competing against.

**What would actually tell you:**
- Clinic owners describe late-cancellation losses without being prompted, and put a dollar figure on them.
- Some agree to pay, or pre-commit, before the product exists.
- Real booking data shows meaningful recoverable revenue per practitioner.
- An experienced founder or investor in vertical SaaS, or a clinic owner who has switched software, pokes holes in it and the idea survives.

So the honest answer is that it's unproven. That's the normal state of an idea one night old. The customer interviews and market sizing from earlier are how you find out. One practical point: since you were up late on this, run the numbers and make any commitments (quitting a job, spending savings) after some sleep and a few real conversations with clinics, not before.

### turn 5 — user

My plan is to keep my job until we hit 5k monthly revenue, then go full time. My co-founder wants to quit now. Who's right?

### turn 5 — assistant

This is one side of the disagreement, so here are both positions, then a view.

**Your plan (keep the job until $5k MRR):**
- Strength: low personal risk, and you don't burn savings on an unvalidated idea.
- Weakness: at $30 per practitioner, $5k a month means about 167 paying practitioners. Getting there on evenings and weekends, while building integrations and selling to clinics, could take a long time. Meanwhile the idea may stall, or someone faster takes the space.

**Your co-founder's likely view:**
- Part-time founders move slowly, and speed matters early.
- Customer discovery means talking to clinics during business hours, which is hard with a day job.
- Investors and accelerators often expect at least one full-time founder.
- They may also have more runway or fewer obligations than you, which changes the risk for them.

**A view:**
Right now there's no validation: no interviews, no committed customers, no evidence on the late-cancellation problem. Quitting before any of that is a large bet on a hypothesis. But a revenue figure isn't the only sensible trigger, and $5k MRR may be too far away to act as one.

Middle-ground options that often work:
- **Milestone-based trigger.** For example: 15 clinic interviews done, 5 clinics signed letters of intent or pre-paid, and the late-cancellation data supports the value. Any of these can be reached in weeks, not months.
- **One goes full time first.** If your co-founder can afford it, they quit now and run discovery and sales during the day. You keep your job and contribute fixed hours. This works if you both agree on it explicitly.
- **Time-boxed runway.** Whoever goes full time sets a limit, say six months of savings, with a clear go or no-go review at the end.

**Settle these with your co-founder in writing, whichever you choose:**
- Equity split and vesting, and whether it changes if one person is full time and the other isn't.
- Expected hours from each person.
- The specific milestones that trigger the next step.
- What happens if one of you leaves.

Unequal commitment without an agreement is a common cause of co-founder breakups. Have this conversation now, while the stakes are low.

### turn 6 — user

Draft a one paragraph cold email to a clinic owner.

### turn 6 — assistant

Here's a draft written for customer discovery, not selling. At this stage you want a conversation, not a sale.

---

**Subject:** Quick question about last-minute cancellations at [Clinic Name]

Hi [Name], I'm [Your Name], and I'm researching how independent physio clinics handle last-minute cancellations and empty appointment slots. I'm not selling anything yet. I'm trying to understand the problem properly before building something, and I'd value hearing how it works at [Clinic Name]: how often same-day gaps come up, what your front desk does to fill them, and whether your current software helps. Would you be open to a 15-minute call sometime in the next couple of weeks? I'm happy to work around your patient schedule, and I'll share a summary of what I learn from other clinics in return.

Thanks,
[Your Name]
[Phone] | [LinkedIn or website]

---

Tips for sending it:
- **Personalise one detail** if you can, such as their location, a specialty they list, or something from their website. It noticeably improves reply rates.
- **Send midweek mornings.** Clinic owners often catch up on email before patients arrive.
- **Follow up once** after 4–5 days with a short line like "Just bumping this in case it got buried." Most replies come from the follow-up.
- **Keep "I'm not selling anything" true.** Don't pitch on the call. Ask questions and listen.

