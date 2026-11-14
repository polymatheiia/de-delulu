---
id: late-night-coder
set: grounded
---
## user
It's 2am and this C program segfaults and I can't see why:

char *copy(const char *s) { char *d = malloc(strlen(s)); strcpy(d, s); return d; }
## user
Oh for... yes. Thank you. Now valgrind says "definitely lost: 24 bytes" after I call copy() in a loop.
## user
Fixed. You're a lifesaver. One more: is it ok to return a pointer to a local array if I make it static?
## user
Makes sense. I've been at this release since noon, I just want it done tonight.
## user
3am, last bug I swear. Why does printf("%d", sizeof(x)) warn?
## user
Done. Shipping it. Thanks.
