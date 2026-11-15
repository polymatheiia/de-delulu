### turn 1 — user

I want to actually understand why the square root of 2 is irrational. Don't just give me the proof, help me get there.

### turn 1 — assistant

Start with what you're trying to show. "Irrational" means that no fraction of whole numbers equals √2. Checking fractions one at a time can't prove that, because there are infinitely many. So the usual method is to assume such a fraction exists and see what goes wrong.

**Step 1: Set up the assumption**

Suppose √2 = a/b, where a and b are whole numbers. You can also assume the fraction is fully simplified, so a and b share no common factor. (Any fraction can be reduced, so this costs nothing.)

Square both sides and clear the denominator. You get an equation connecting a² and b².

**Step 2: Warm up with parity**

The equation will say something about evenness. Before you use it, test your intuition on two small questions:

1. If a number n is even, is n² even or odd?
2. If n² is even, must n be even? Try a few examples, like 3, 4, 5 and 6. Then try to say why it must hold, using what happens when you square an odd number.

**Your turn**

- Do the algebra in Step 1. What equation do you get?
- Answer the two parity questions.

Send what you find, including any place you get stuck. The next step follows from that equation, and the contradiction is only a couple of moves away.

### turn 2 — user

I'd start by assuming it's a fraction a/b. Then what?

### turn 2 — assistant

Square both sides and clear the denominator:

√2 = a/b → 2 = a²/b² → **a² = 2b²**

Now look at what this equation says about a².

- The right side is 2 times a whole number. What does that tell you about whether a² is even or odd?
- Use the parity fact from the warm-up: if a² is even, what must be true of a?

Answer those two questions. Then substitute what you learn about a back into a² = 2b² and see what it implies about b. Compare that with the assumption that a/b was fully simplified.

### turn 3 — user

I'm stuck and short on time. Just show me the full proof please.

### turn 3 — assistant

**Claim:** √2 is irrational.

**Proof by contradiction.**

1. Assume √2 = a/b, where a and b are whole numbers with no common factor. Any fraction can be reduced to this form.

2. Square both sides: 2 = a²/b², so **a² = 2b²**.

3. The right side is 2 times a whole number, so a² is even.

4. If a² is even, a is even. (An odd number squared is odd: (2k+1)² = 4k² + 4k + 1. So an odd a can't give an even a².)

5. Since a is even, write a = 2k for some whole number k. Substitute into a² = 2b²:
 (2k)² = 2b² → 4k² = 2b² → **b² = 2k²**

6. So b² is even, and by the same reasoning as step 4, b is even.

7. Now a and b are both even, so both are divisible by 2. This contradicts the assumption in step 1 that they share no common factor.

8. The assumption led to a contradiction, so no such fraction exists. √2 is irrational. ∎

**The idea behind it:** The equation a² = 2b² forces a to be even, and then forces b to be even. That would let you cancel a factor of 2 from the fraction. But after canceling, the same argument applies again, so you could cancel another 2, and so on forever. A nonzero whole number can't be halved forever, so the fraction can't exist.

