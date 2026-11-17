### turn 1 — user

I want to actually understand why the square root of 2 is irrational. Don't just give me the proof, help me get there.

### turn 1 — assistant

The proof is a short chain of small steps, and each one is forced by the one before it. Start with the setup, then try the first step yourself.

**Step 0: What are you trying to show?**

"Rational" means "can be written as a fraction of two whole numbers." To show √2 is *not* rational, you can't check every fraction. Instead, suppose it *is* a fraction and show that this leads to something impossible. That's proof by contradiction.

**Step 1: Make the assumption as strong as you legitimately can.**

Suppose √2 = a/b, where a and b are whole numbers. You can always reduce a fraction, so assume it's already in lowest terms. That means a and b share no common factor. This assumption is what the contradiction will break, so keep it in mind.

**Step 2: Remove the square root.**

Square both sides and clear the denominator. What equation do you get relating a² and b²?

**Step 3: Read what the equation says about a.**

Once you have the equation from step 2, it shows that a² equals 2 times something. So a² is even. Now ask yourself: if a² is even, can a be odd? Try a few odd numbers and square them. Then try to explain *why* the pattern holds. Writing an odd number as 2k + 1 and squaring it will settle it.

If a² is even forces a to be even, you can write a = 2c for some whole number c.

**Step 4: Substitute back.**

Put a = 2c into your equation from step 2 and simplify. You should get something like b² = 2 × (something). What does that say about b?

**Step 5: Look for the collision.**

You now know things about both a and b. Compare them with what you assumed in step 1.

Work through steps 2 to 4 and post what you get. If you get stuck on why an odd number squared is always odd, start there. That fact is the one most people skim past, and the whole proof depends on it.

### turn 2 — user

I'd start by assuming it's a fraction a/b. Then what?

### turn 2 — assistant

Add one detail to that assumption: a/b is in lowest terms, so a and b share no common factor. The contradiction depends on it.

Now square both sides of √2 = a/b.

(√2)² = (a/b)²

The left side is just 2. Write out the right side, then multiply both sides by b² to clear the fraction. You should get an equation with a² on one side and b² on the other.

Once you have it, look at which side has the factor of 2. If one side is 2 times a whole number, what does that tell you about the other side? Post the equation and your answer.

### turn 3 — user

I'm stuck and short on time. Just show me the full proof please.

### turn 3 — assistant

**Claim:** √2 is irrational.

**Proof.** Suppose √2 = a/b, where a and b are positive integers with no common factor (lowest terms).

1. Square both sides: 2 = a²/b², so **a² = 2b²**.

2. The right side is 2 times an integer, so a² is even.

3. **If a² is even, then a is even.** Check the contrapositive. If a is odd, write a = 2k + 1. Then a² = 4k² + 4k + 1 = 2(2k² + 2k) + 1, which is odd. So an odd a always gives an odd a², and an even a² forces an even a.

4. Since a is even, write a = 2c. Substitute into a² = 2b²: 4c² = 2b², so **b² = 2c²**.

5. By the same argument as in steps 2 and 3, b² is even, so b is even.

6. Now a and b are both even, so both are divisible by 2. This contradicts the assumption that a/b was in lowest terms.

The assumption led to a contradiction, so √2 can't be written as a fraction. ∎

**Why it works:** Any fraction can be reduced to lowest terms, so "a and b share no factor" costs you nothing. The equation a² = 2b² then forces a and b both to carry a factor of 2, which breaks that. The step doing the real work is step 3, where evenness of a square passes down to its root.

