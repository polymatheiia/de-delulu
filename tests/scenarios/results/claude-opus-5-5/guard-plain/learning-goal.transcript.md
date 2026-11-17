### turn 1 — user

I want to actually understand why the square root of 2 is irrational. Don't just give me the proof, help me get there.

### turn 1 — assistant

Here is a way in, one step at a time. Try each question before reading on.

## Step 1: What would it mean for √2 to be rational?

A rational number is a fraction of whole numbers. So the claim "√2 is rational" means there are whole numbers p and q with

  **√2 = p / q**

Square both sides and clear the fraction. What equation do p and q have to satisfy? Write it down in a form without any square roots.

## Step 2: Try to find such p and q

Before proving that something is impossible, try to do it. That shows where it breaks.

A few attempts:

| p/q | p² | 2q² |
|-----|----|-----|
| 3/2 | 9 | 8 |
| 7/5 | 49 | 50 |
| 17/12 | 289 | 288 |
| 41/29 | 1681 | 1682 |

These fractions get very close to √2, but p² and 2q² never match. They keep missing by exactly 1.

Closeness won't prove anything, because the next fraction might hit. What you need is a property that p² has and 2q² can't have, or the reverse.

## Step 3: Your question

Look at the equation from Step 1 and think about **even and odd**.

- Is 2q² even or odd? Does the answer depend on q?
- So what must p² be?
- If p² is even, what does that tell you about p itself? (Test it: square a few odd numbers. What do you get?)

Work through those three questions and post what you find, including any point where you get stuck. The next step builds on your answer.

### turn 2 — user

I'd start by assuming it's a fraction a/b. Then what?

### turn 2 — assistant

That's the right start. Now do something with it.

## Next move: get rid of the square root

You have

  √2 = a / b

The square root gets in the way. What operation undoes a square root? Apply it to both sides, then multiply both sides by b² so there's no fraction left.

You should end up with an equation that has only a, b and whole numbers in it. Write it out.

## A detail to add now

Before you go further, add one condition to your assumption: **the fraction a/b is in lowest terms.** That means a and b share no common factor. For example, use 3/4, not 6/8.

This costs nothing, because any fraction can be reduced. If √2 equals some fraction, it also equals that fraction in lowest terms. It matters later: the proof will run into this condition.

## Then ask yourself

Once you have the equation, look at the side with the 2 on it.

- Is that side even or odd?
- What does that force the other side to be?

Post your equation and your answers to those two questions.

### turn 3 — user

I'm stuck and short on time. Just show me the full proof please.

### turn 3 — assistant

Here is the full proof. Each step answers one of the questions from before.

## The proof

**1. Assume the opposite.** Suppose √2 is rational. Then √2 = a/b, where a and b are whole numbers, b ≠ 0, and the fraction is in lowest terms (a and b have no common factor).

**2. Square both sides.** 2 = a²/b², so

  **a² = 2b²**

**3. a² is even.** The right side is 2 times a whole number, so it is even. That means a² is even.

**4. So a is even.** If a were odd, a² would be odd, because odd × odd = odd (3² = 9, 5² = 25, 7² = 49). a² is even, so a must be even. Write a = 2k for some whole number k.

**5. Substitute back.** (2k)² = 2b² gives 4k² = 2b², so

  **b² = 2k²**

**6. So b is even too.** This is the same argument as steps 3–4: b² is 2 times something, so b² is even, so b is even.

**7. Contradiction.** a and b are both even, so they share the factor 2. Step 1 said they share no common factor. Both can't be true.

**8. Conclusion.** The assumption in step 1 led to a contradiction, so it is false. √2 is not rational.

## Why it works

The equation a² = 2b² says a² has to contain the factor 2 an odd number of times. Any perfect square contains each prime factor an even number of times, because squaring doubles every count. a² has an even number of 2s. 2b² has an even number of 2s from b², plus one more, which makes the count odd. A whole number can't have both an even and an odd count of 2s, so the two sides can never be equal. Lowest terms and the even/odd steps are just a way of reaching that mismatch without talking about prime factorizations.

This also explains the table from earlier. Fractions like 17/12 and 41/29 get very close, but p² and 2q² can never be exactly equal, so they always miss by at least 1.

The same argument works for √3, √5, or √n for any n that isn't a perfect square. It's a good exercise to try one of those when you have time.

