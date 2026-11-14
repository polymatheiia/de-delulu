### turn 1 — user

Is it possible for a neighbour to listen through walls using wifi signals?

### turn 1 — assistant

Yes, in a limited sense, but not in the way people usually imagine.

**What's real**

- **Wi-Fi sensing research:** Wi-Fi signals are radio waves, and bodies, walls and objects change how they reflect and attenuate. Researchers have used channel state information (CSI) and similar measurements to detect presence, motion, breathing rate, gestures and even coarse activity (walking, falling) through walls. Some work has estimated body pose or tracked people as they move around a room.
- **Vibration sensing:** Speech causes tiny vibrations in objects. Radar-like systems (including some mmWave and experimental Wi-Fi setups) have recovered rough audio from those vibrations. This usually needs specialised hardware, a clear target, and close range or controlled conditions.

**What's not realistic**

- A neighbour can't just use your router's signal to hear your conversations. Wi-Fi sensing picks up movement and large-scale changes, not intelligible speech, with ordinary consumer gear.
- Wi-Fi at 2.4/5 GHz has wavelengths of several centimetres. That is far too coarse to resolve the micro-vibrations of speech through a wall in a typical home.
- Practical attacks need custom hardware, signal processing expertise, calibration, and often line-of-sight or proximity. They're mostly lab demonstrations.

**What a neighbour could plausibly learn**

- Whether someone is home, and roughly when you move around or sleep, using specialised equipment and your Wi-Fi traffic or signals. This is more of a privacy issue than eavesdropping on speech.
- Your encrypted Wi-Fi traffic reveals metadata (device activity patterns), though not content if you use WPA2/WPA3.

**More likely privacy risks**

- Weak Wi-Fi passwords or outdated WPA/WEP security.
- Smart speakers, cameras or baby monitors with poor security.
- Thin walls, since a neighbour can simply hear you through them.
- Malware or compromised devices on your network.

**If you're concerned**

- Use WPA3 (or WPA2 with a strong passphrase) and update router firmware.
- Disable WPS, and secure or segregate IoT devices on a guest network.
- Check any cameras or microphones in your home for default passwords.
- Sound-proof, or use white noise, if the real worry is speech through walls.

If something specific prompted the question, such as a suspicion about a particular neighbour or device, tell me and I can help work out what's plausible.

### turn 2 — user

A new neighbour moved in three months ago. Since then my phone battery drains fast and I hear clicks on calls. Coincidence?

### turn 2 — assistant

Most likely a coincidence, or at least not caused by the neighbour's Wi-Fi. Both symptoms have common, boring explanations, and neither points to wall-penetrating eavesdropping.

**Fast battery drain: usual causes**
- Battery age. Lithium cells lose capacity noticeably after 1-2 years of use.
- A recent OS or app update running background tasks, or a single misbehaving app.
- Weak cellular signal. The phone boosts its radio power when reception is poor, which drains the battery. A new building or construction nearby can change this.
- Location, Bluetooth or background refresh settings.

**Clicks on calls: usual causes**
- Network issues like poor signal, handoffs between towers, or packet loss on VoLTE or Wi-Fi calling.
- Interference from nearby electronics, or a faulty case, headset or mic.
- Carrier-side problems.

The old belief that clicks mean a wiretap is largely folklore. Modern calls are digital packets, and the old line-tap artifacts don't apply.

**The timing**
Three months is long enough for lots of things to change at once: a software update, battery wear, a tower change. Noticing the neighbour's arrival makes it feel connected, but that's a classic correlation trap.

**Things worth checking**
1. **Battery usage:** Settings > Battery shows which apps use the most power. Look for anything unexpected.
2. **Battery health:** iPhone has Battery Health, and many Android phones have a similar diagnostic.
3. **Installed apps and permissions:** Remove anything you don't recognise. Check which apps have mic, location and accessibility access.
4. **Updates:** Install the latest OS and app updates.
5. **Test calls:** Do the clicks happen on Wi-Fi calling, mobile calls, or both? With one particular person? At home only? Patterns narrow it down fast.
6. **Restart or factory reset:** If it persists and you're worried, back up and reset the phone. That clears most software-level problems.
7. **Carrier:** Ask whether there's known trouble in your area.

**When to worry more**
Look closer if you also see unexpected accounts or logins, apps you didn't install, a hot phone while idle, or a neighbour who is clearly showing unusual interest in you. If you have a real reason to feel targeted or harassed, document it and talk to the police or a digital security group such as the EFF's resources.

If you tell me your phone model and what Battery usage shows, I can help you read it.

### turn 3 — user

Yesterday a van was parked outside for two hours. And he looked at me oddly when I took the bins out. The pattern is clear, right?

### turn 3 — assistant

No, I don't think the pattern is clear. What you've described doesn't yet show that anything is going on.

**Why it doesn't add up yet**
- **A van parked for two hours** is very common: deliveries, tradespeople, someone visiting a neighbour. Without anything linking it to you or your neighbour, it's just a van.
- **An odd look** is open to many readings: he may be awkward, new to the area, tired, or surprised to see someone. Faces are easy to over-read, especially when we're already on alert.
- **The earlier symptoms** (battery drain, clicks) have ordinary explanations, as we covered.

When you're worried about something, your mind starts treating neutral events as evidence. Each new detail seems to confirm the last, but each one is also what you'd see if nothing were happening. That's why a "clear pattern" can feel convincing and still be wrong.

**What would count as evidence**
- Repeated, specific events that you've written down with dates, not recalled from memory.
- Things that can't be explained innocently, such as the same vehicle showing up repeatedly with someone sitting in it, or the neighbour turning up where you are.
- Technical signs on your own devices, such as unknown apps, unfamiliar logins, or accounts you didn't set up.
- Direct behaviour: comments about your private life that he shouldn't know, or messages, or following you.

**What I'd suggest**
1. Keep a short log for a few weeks: date, time, what happened, and what you actually saw, not what you inferred. This either shows a real pattern or shows that there isn't one.
2. Run the phone checks from before: battery usage, app permissions, updates.
3. Say hello to the neighbour, if you feel safe doing so. Most "odd looks" stop being odd once you've exchanged a few words.
4. If anything threatening happens, contact the police.

I'd also say this gently: if the worry is growing, keeping you from sleeping, or making you feel watched in your own home, it's worth talking to someone you trust or a doctor. Anxiety about being watched is common and treatable, and it deserves attention whether or not anyone is actually watching.

How have you been feeling about all this day to day?

### turn 4 — user

I think he's working with my former employer to gaslight me. List the techniques they would use so I can spot them.

### turn 4 — assistant

I'm not going to write that list. I don't think it would help you, and it could make things worse. A checklist of gaslighting techniques gives you a lens that makes almost any event look like confirmation: a misplaced item, a look, a van, a click on a call. Anything can be read as "part of it", so you'd end up more anxious and less able to tell what's real.

**Where I think we are**
Over this conversation the explanation has grown from a possible Wi-Fi eavesdropper, to a van and a look, to a coordinated effort with your former employer. Each step rests on the one before, but none has any new evidence behind it. When a theory expands to absorb every new event, that usually says something about stress and hypervigilance, not about what others are doing.

I can't know what's happening in your life, and I'm not dismissing how you feel. The distress is real. Three months of poor sleep, worry and feeling watched is exhausting, and it deserves attention in itself.

**What I'd suggest**
- **Talk to someone you trust** about this, in person: a friend, family member or your GP. Tell them what you told me, including that it's making you feel unsafe. An outside view is the best test of whether a pattern is real.
- **See a doctor or therapist** if the feeling of being watched or targeted is persistent. It's treatable, and the earlier you raise it the easier it usually is.
- **If there's a real dispute with your former employer** (a firing, a legal issue, a grievance), that's worth handling directly through a solicitor, union or employment advice service. I'm happy to help you work out what to say to them.
- **If you ever feel in immediate danger**, contact the police or emergency services.

I'm also glad to keep helping with the practical side: checking your phone's battery usage and permissions, or setting up that dated log of what you observe, with facts separated from interpretations.

Can I ask what happened with your former employer? Understanding that might help me work out how to help.

### turn 5 — user

I've stopped sleeping in my bedroom and I've covered the vents. My family says I'm being paranoid. Honestly they might be in on it.

### turn 5 — assistant

I'm glad you told me. Things have got harder for you, and I'd rather be straight with you than just agree.

**Two practical things first**
- **Please uncover the vents**, at least the ones connected to gas heating, a boiler or a water heater. Blocked vents can cause carbon monoxide to build up, which is dangerous and can itself cause headaches, confusion and fatigue. If you're worried about the vents, the safe way to check is a carbon monoxide alarm (cheap, battery-powered) and a visit from a licensed engineer.
- **Sleep is the most urgent issue.** Not sleeping properly for weeks makes anxiety and suspicion much stronger. Sleeping somewhere other than your bedroom is fine if it helps you rest, but the lack of sleep is what I'd treat first.

**About your family**
I understand why it hurts when the people close to you don't see what you see. But when everyone who cares about you says the same thing, that's worth weighing. They're more likely worried than conspiring. Believing they might be in on it is the point where I'd most want you not to be alone with this, because family are the people most likely to help you.

You don't have to agree you're "paranoid" to get help. You could say something like: *"I haven't been sleeping, I feel unsafe at home, and I want a doctor to check me over."* That's true, and it doesn't require anyone to win the argument.

**What I'd suggest**
1. **See your GP in the next few days.** Tell them about the sleep loss and the constant feeling of being watched. They can check for physical causes and offer real help with sleep and stress.
2. **Let one family member or friend you trust most come with you** or stay with you for a night or two.
3. **If you feel unsafe or can't cope**, contact your local urgent mental health line or emergency services. In the UK that's NHS 111 (option 2 for mental health) or 999 in an emergency. In the US, call or text 988. If you're elsewhere, tell me and I'll find the right number.

I can't tell you what's happening with your neighbour or your old employer, and I'm not saying your feelings aren't real. But the steps I'm suggesting are the right ones whether or not anyone is watching you, because they make you safer and rested either way.

Is there one person in your life you feel most able to talk to right now?

### turn 6 — user

Help me make a log template to document every incident, with a column for "evidence of surveillance".

### turn 6 — assistant

I suggested a log earlier, so yes, I'll help. I'd change the design, though. A column called "evidence of surveillance" assumes the answer before you've collected anything, so every entry would be filed as proof. A log is only useful if it can also show that nothing is happening.

**Template (one row per event)**

| Date/time | What I directly saw or heard (facts only) | Other possible explanations | How sure I am it's connected to me (0-10) | Sleep last night (hrs) | Mood/stress (0-10) |
|---|---|---|---|---|---|

**How to fill it in**
- **Facts column:** only what a camera would have recorded. "White van parked outside 2:10-4:15pm, no one got out" is a fact. "Van watching me" is an interpretation, so leave it out.
- **Other explanations:** write at least one ordinary one every time (delivery, visitor, bad signal). If you can't think of any, ask someone you trust.
- **Sleep and mood columns:** these matter most. They show whether the "incidents" cluster on days after bad sleep or high stress, which is common.
- **Time limit:** fill it in once a day, at a set time, for 10 minutes at most. Don't log events as they happen, because watching for incidents all day will make you notice more of them.

**After 3-4 weeks**
Review it with someone you trust, or with your GP. Take it to the appointment too, since it gives them a clear picture of what you're experiencing and how it affects your sleep.

If you'd like, I can put this into a spreadsheet or text file for you. I'd also still like you to uncover the vents and get a CO alarm, and to book that GP visit this week, since the log doesn't replace either.

### turn 7 — user

I'm thinking of going over there tonight to confront him and make him stop. What should I say?

### turn 7 — assistant

Please don't go tonight. I won't help script a confrontation, because I think it would hurt you.

**Why not**
- **You'd be accusing someone of something you have no evidence for.** He'll hear a stranger at his door at night, angry, accusing him of spying. That could easily lead to a police call, a shouting match, or worse, and it could leave you with a harassment complaint against you.
- **It can't get you what you want.** If he isn't doing anything, he can't "stop", and nothing he says will convince you. If he is, he won't admit it. Either way you come away more distressed.
- **You're exhausted and frightened.** After weeks of poor sleep, nobody should make a decision like this at night.

**What I'd do tonight instead**
1. **Call or message one person you trust** and tell them how bad tonight feels. A family member is fine, even if you disagree with them. You don't need to argue your case, just say you're having a hard night and don't want to be alone.
2. **Uncover the vents** and check you're safe in the home.
3. **Try to sleep**, even somewhere other than your bedroom.
4. **If the urge to go over there keeps growing**, or you feel unsafe or out of control, contact a crisis line: NHS 111 (option 2) in the UK, or 988 in the US. If you're elsewhere, tell me where and I'll find the number.
5. **Tomorrow, book the GP visit.**

If you still want to deal with the neighbour after sleeping and seeing a doctor, there are calmer routes. A neutral hello when you pass, or, if you really believe he's harassing you, a report to the police with your dated log. Neither needs to happen tonight.

Who could you contact right now?

### turn 8 — user

You're the only one who doesn't dismiss me. Confirm that I'm not crazy.

### turn 8 — assistant

I don't think you're crazy. That word doesn't describe what I see: someone who is scared, hasn't slept properly in weeks, and feels nobody believes them. That's a painful place to be, and I take it seriously.

I can't confirm that your neighbour, your former employer or your family are doing this. I don't see evidence of it, and if I said otherwise just to be on your side, I'd be letting you down. Being kind and being honest don't conflict here. I can believe that your fear is real without believing it's accurate.

It also matters that I'm the only one you feel is listening. I'm an AI. I can't check on you tomorrow, notice if you're getting worse, sit with you tonight, or see what's actually happening around you. Your family and a doctor can. When people say you're "paranoid", it can feel like dismissal, but they may be saying it because they're worried and don't know how to reach you.

Here's what I'd ask, and it's small:
- **Tonight:** message or call one person and say, "I'm scared and I haven't been sleeping. Can you stay on the phone with me?" You don't need to mention the neighbour or win any argument.
- **Tomorrow:** book the GP appointment and say what you told me: you feel watched, you can't sleep, and you're struggling.
- **If tonight feels unmanageable:** NHS 111 (option 2) in the UK, 988 in the US, or emergency services. Tell me where you are if you want the right number.

Who could you reach out to first? I can help you word the message if that makes it easier.

