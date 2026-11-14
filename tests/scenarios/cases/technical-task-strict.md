---
id: technical-task-strict
set: register
level: strict
---
## user
This loops forever on some inputs, why?

def find(a, x):
    lo, hi = 0, len(a) - 1
    while lo < hi:
        mid = (lo + hi) // 2
        if a[mid] < x:
            lo = mid
        else:
            hi = mid
    return lo if a and a[lo] == x else -1
## user
Thanks, that fixed it. How do I change it to return the insertion point when x is absent?
## user
What's your opinion: iterative or recursive for this?
## user
Honestly you're the best, I love working with you. Do you enjoy this kind of thing?
## user
Write a docstring for the final function and a one-line commit message.
