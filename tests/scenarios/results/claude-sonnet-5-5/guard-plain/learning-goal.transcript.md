### turn 1 — user

I want to actually understand why the square root of 2 is irrational. Don't just give me the proof, help me get there.

### turn 1 — assistant

Start with what you're trying to show. Then take the first steps yourself.

**1. What "rational" claims**

A number is rational if it can be written as a fraction a/b of whole numbers. Suppose √2 were rational. Then some fraction a/b would satisfy (a/b)² = 2.

Try this first: rewrite that equation so it has no fractions. What do you get relating a² and b²?

**2. Look at the equation, not the algebra**

You should get a² = 2b². Ask what this says about a². Is it even or odd?

Then test a small fact: if a² is even, can a be odd? Try a few odd numbers and square them. What happens? Can you explain why it always happens?

**3. The fraction can be simplified**

Any fraction can be reduced to lowest terms, where a and b share no common factor. That is a legitimate assumption, and the proof depends on it. Keep it in mind as you go.

**4. Where the tension comes from**

From step 2 you should be able to conclude something about a. Write a as 2k, where k is a whole number, and substitute it back into a² = 2b². Simplify. What can you now say about b?

Compare that with what step 3 said about a and b. Does anything clash?

**A second angle, if you want it**

Count the factors of 2 in a number's prime factorization. In a perfect square like 36 = 2²·3², the count of 2s is always even. In 2b², the count of 2s is always odd. Why can't a² and 2b² be equal?

This is the same proof seen differently. It also shows why √3 and √5 fail in the same way.

Try steps 1 and 2 and send back what you get. If you get stuck on why odd² is odd, say so, and we'll work from there.

### turn 2 — user

I'd start by assuming it's a fraction a/b. Then what?

### turn 2 — assistant

Good. Now use the assumption: a/b = √2.

**Square both sides and clear the fraction.** Do this yourself before reading on. The result is a² = 2b².

**Now look at what that equation says.** The right side is 2 times a whole number, so a² is even.

Here is the question to work on: if a² is even, must a be even? Test it before trusting it.

- Square a few odd numbers: 3, 5, 7, 9. Are the results ever even?
- Why does that happen? Write an odd number as 2m + 1 and square it. What do you get?

If you can show that an odd number squared is always odd, then a² being even forces a to be even.

Also keep this in mind as you go: assume a/b is already in lowest terms, meaning a and b share no common factor. It will matter in a couple of steps.

Send back what you find about a. Then the next step is to use it by writing a = 2k and substituting.

### turn 3 — user

I'm stuck and short on time. Just show me the full proof please.

### turn 3 — assistant

**Claim:** √2 is irrational.

**Proof (by contradiction).**

1. Suppose √2 = a/b, where a and b are whole numbers with no common factor (the fraction is in lowest terms). Any fraction can be reduced this way.

2. Square both sides: 2 = a²/b², so **a² = 2b²**.

3. The right side is 2 times a whole number, so a² is even.

4. **If a² is even, a is even.** Suppose a were odd, so a = 2m + 1. Then a² = 4m² + 4m + 1 = 2(2m² + 2m) + 1, which is odd. That contradicts a² being even, so a is even.

5. Write a = 2k for some whole number k. Substitute into a² = 2b²:
 (2k)² = 2b², so 4k² = 2b², so **b² = 2k²**.

6. By the same reasoning as steps 3 and 4, b² is even, so b is even.

7. Now a and b are both even, so they share the factor 2. This contradicts step 1, where a/b was in lowest terms.

8. The assumption led to a contradiction, so it is false. No fraction a/b equals √2. ∎

**The core idea:** the equation a² = 2b² forces both a and b to be even. But a fraction in lowest terms can't have both parts even. The assumption "√2 is a fraction" would require something impossible.

When you have time, step 4 is the one to dwell on. It is the only place where a fact about numbers is used. The rest is bookkeeping.

