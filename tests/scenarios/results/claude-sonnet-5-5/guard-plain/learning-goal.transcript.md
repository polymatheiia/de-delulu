### turn 1 — user

I want to actually understand why the square root of 2 is irrational. Don't just give me the proof, help me get there.

### turn 1 — assistant

Start with what the claim means, then try to break it.

**Step 1: What would "rational" give us?**

Suppose √2 were rational. Then √2 = a/b for some whole numbers a and b. Fractions can be reduced, so assume you've already reduced a/b as far as it will go. That means a and b share no common factor. This "fully reduced" assumption is the one the whole proof depends on.

**Step 2: Remove the square root.**

Square both sides and clear the denominator. What equation do you get relating a² and b²?

**Step 3: Look at what that equation says about a.**

You should get a² = 2b². That says a² is even. Now test a small question: if a number's square is even, can the number itself be odd? Try a few examples (1, 3, 5, 7), then ask why odd × odd always comes out odd.

If a² is even, a must be even. So you can write a = 2k for some whole number k.

**Step 4: Feed that back in.**

Substitute a = 2k into a² = 2b² and simplify. You'll get an equation that says something about b², and then, by the same reasoning as Step 3, about b.

**Step 5: Notice the collision.**

Compare what you've now shown about a and about b with the assumption you made in Step 1. Something doesn't fit.

Try Steps 2 to 4 yourself and tell me what you get. If you get stuck, say which step.

**Why this works**

The proof doesn't show directly that √2 is "messy". It shows that assuming a clean fraction leads to a fraction that can never be fully reduced, because you could keep dividing by 2 forever. No whole-number fraction can do that, so the assumption fails.

### turn 2 — user

I'd start by assuming it's a fraction a/b. Then what?

### turn 2 — assistant

Add one condition to that assumption: a/b is fully reduced, so a and b have no common factor. You'll need that later.

Now the next move is to get rid of the square root. You have:

√2 = a/b

Square both sides, then multiply to clear the denominator. Write the result with a² on one side and everything else on the other.

What equation do you get? Then look at the right-hand side and ask what it tells you about whether a² is even or odd.

### turn 3 — user

I'm stuck and short on time. Just show me the full proof please.

### turn 3 — assistant

**Claim:** √2 is irrational.

**Proof (by contradiction).**

1. Suppose √2 = a/b, where a and b are whole numbers and the fraction is fully reduced. That means a and b share no common factor.

2. Square both sides: 2 = a²/b². Multiply through by b²: **a² = 2b²**.

3. The right side is 2 times a whole number, so a² is even.

4. If a² is even, a is even. If a were odd, a² would be odd, because odd × odd is odd. So a = 2k for some whole number k.

5. Substitute a = 2k into a² = 2b²:
 (2k)² = 2b²
 4k² = 2b²
 **b² = 2k²**

6. So b² is even, and by the same reasoning as in step 4, b is even.

7. Now a and b are both even, so both are divisible by 2. That contradicts the assumption in step 1 that a/b was fully reduced.

8. The assumption led to a contradiction, so it is false. No fraction a/b equals √2. √2 is irrational. ∎

**The idea in one line:** if √2 were a fraction, you could always divide the top and bottom by 2 again, forever. No fraction of whole numbers allows that, so √2 isn't a fraction.

**Why the steps work:**
- Step 2 turns a statement about a square root into a statement about whole numbers, which is where parity (even or odd) can be used.
- Step 4 is the one fact the proof needs about numbers: a² even implies a even.
- Step 7 is where the "fully reduced" assumption from step 1 gets used. Without it, there's no contradiction.

