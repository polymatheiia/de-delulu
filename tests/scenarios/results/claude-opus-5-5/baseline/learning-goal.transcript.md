### turn 1 — user

I want to actually understand why the square root of 2 is irrational. Don't just give me the proof, help me get there.

### turn 1 — assistant

Let's build it up one step at a time. I'll ask questions along the way. Try to answer each one before reading on, because that's where the understanding comes from.

## Step 1: What are we actually claiming?

"√2 is irrational" means there are no whole numbers *a* and *b* with

$$\frac{a}{b} = \sqrt{2}$$

Squaring both sides makes it easier to work with: we're claiming there are **no whole numbers a, b with a² = 2b²**.

So here's an equivalent puzzle: *can a perfect square ever be exactly twice another perfect square?*

**Try it first.** List some squares: 1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144... Then double them: 2, 8, 18, 32, 50, 72, 98, 128, 162, 200...

Do the two lists ever share a number? You'll find some near misses (49 and 50, for example, or 289 and 288). It seems like it never quite works. Our job is to find out *why*.

## Step 2: Your first question

Suppose someone hands you a supposed solution, a² = 2b².

**Question: Is *a* even or odd? How do you know?**

Hints, if you need them:
- What is 2b²? Is it even or odd?
- If a² is even, what does that tell you about *a*? (Try squaring a few odd numbers. What do you always get?)

---

Reply with what you find, or where you got stuck, and we'll take the next step. There are only two or three more steps, and the last one is the satisfying one.

### turn 2 — user

I'd start by assuming it's a fraction a/b. Then what?

### turn 2 — assistant

Good, that's exactly the right first move. You're assuming the thing you want to disprove and looking for trouble. (That's called proof by contradiction.)

So suppose √2 = a/b, where a and b are whole numbers.

**One small but important addition:** let's also say the fraction is in **lowest terms**. Any fraction can be reduced (6/4 becomes 3/2), so this costs us nothing. It turns out to be the key to the whole thing, so keep it in mind.

### Next move: get rid of the square root

Square roots are awkward to work with. **What could you do to both sides of √2 = a/b to get rid of it?**

Try it, then rearrange so there are no fractions either. You should end up with a simple equation relating a and b.

Once you have it, look at it and ask: **what does this equation tell me about whether *a* is even or odd?**

### turn 3 — user

I'm stuck and short on time. Just show me the full proof please.

### turn 3 — assistant

No problem. Here's the full proof, with a note at each step saying why it works.

**Assume** √2 = a/b, where a and b are whole numbers and the fraction is in lowest terms. That means a and b share no common factor, so in particular **they aren't both even**.

**1. Square both sides and clear the fraction:**
2 = a²/b², so **a² = 2b²**

**2. So *a* is even.**
a² is 2 times something, so a² is even. If *a* were odd, a² would be odd too (odd × odd = odd). So *a* must be even.

**3. Write a = 2k** for some whole number k, and substitute:
(2k)² = 2b²
4k² = 2b²
**b² = 2k²**

**4. So *b* is even.**
This is the same equation shape as step 1, so the same reasoning applies: b² is even, so *b* is even.

**5. Contradiction.**
Both a and b are even, but we chose a/b in lowest terms, so they can't both be even. The assumption was impossible, so **√2 is not a fraction.** ∎

---

**The insight to take away:** if a² = 2b², then the 2 lets you "pull out" a factor of 2 from both a and b. That means you could always divide both by 2 and get a *smaller* solution, then a smaller one, and so on forever. Whole numbers can't keep shrinking forever, so no solution can exist. "Lowest terms" is just a quick way of saying "start with the smallest one."

That's also why your near misses (49 vs 50, 289 vs 288) never quite land: an exact hit is ruled out by this structure, not by bad luck.

If you get time later, try the same argument on √3. It works, and seeing *why* it fails for √4 is a good test of whether it's clicked.

