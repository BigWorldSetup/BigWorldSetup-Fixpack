
// b!talks.d - talks

/* Talk 1 Where do we go from here? */ 
/* Talk 2 - Why you? */
/* Talk 3 "I'm letting the big man down," aka "prejudice everywhere!" */ 
/* Talk 4 "You gotta have faith," pt 2 (with special entries for evil PCs - second conversion talk) */ 
/* Talk 5 "Let me go," aka Gavin talks about ressurrection, with addendum to provide for Lanie */ 
/* Talk 6 "My brother's burden," aka Gavin discusses slavery, legal and otherwise (what can I say, he's got a huge soft spot for children and prostitutes) */ 
/* Talk 7 "Old friends" miss 'em? */ 
/* Talk 8 "What do you want to do with your life?" or now that you know it better, how are you doing with the Bhaal taint */ 
/* Talk 9 "Why do I hang out with you, anyway?" Gavin's in a snit, very grumpy, picking a fight. Ride it out. */ 
/* Talk 10 "You know what? I'm an asshole." (Evil PC shot at redemption #5: forgiveness) */ 
/* Talk 11 "You've come a long way, baby" Gavin's observation on how much the PC has changed since day one, whenever it was (Evil PC "moment of truth", when a PC can say whether he wants to change or not - if appropriate. There's also a chance that Gavin will leave the group if an evil PC just hasn't changed, and shows no inclination for it) */ 
/* Talk 12 "Is it just me, or do we have a lot on our plates?" Balancing RL and "the job" */ 
/* Talk 13 "Can't go back" talking about the past */ 
/* Talk 14 "I need focus," aka the importance of concentration */ 
/* Talk 15 "Does it ever get to be too much?" */ 
/* Talk 16 "I wanna be a social worker when I grow up" Gavin talks about what he wants to do when it's all over */ 
/* 'Let's get serious' */ 
/* Redemption talk - 'Maybe it wasn't you' */ 

/* Talk 1 Where do we go from here? */ 

CHAIN 
IF ~Global("B!GavTalk","GLOBAL",2) !Global("B!GavNoBG1","GLOBAL",1)~ THEN ~B!GAVJ~ bf1.1a
~It's been a long time since we sat beside the fire together. How are you holding up?~ [bgav102] 
DO ~ SetGlobal("B!GavTalk","GLOBAL",3) RealSetGlobalTimer("B!GavT","GLOBAL",GAV_TIME)~
END
++ ~I've been kidnapped, held against my will, and tortured. You?~ EXTERN ~B!GAVJ~ bf1.2
++ ~About as well as can be expected, really.~ EXTERN ~B!GAVJ~ bf1.3
+ ~GlobalLT("Chapter","GLOBAL",4) !Global("B!GavImoenRA","GLOBAL",1)~ + ~They captured Imoen, Gavin. They took her to a prison for magical deviants, and I don't even know where it is.~ EXTERN ~B!GAVJ~ bf1.4
++ ~Dynaheir and Khalid are dead. Dynaheir might have died during my capture, but Khalid was flayed alive.~ EXTERN ~B!GAVJ~ bf1.5
+ ~GlobalGT("Chapter","GLOBAL",5)~ + ~I'm on another quest to save the world, and I don't even have a soul.~ EXTERN ~B!GAVJ~ bf1.6
++ ~It's terrible, Gavin. I've had no one to drink with, these last six months.~ EXTERN ~B!GAVJ~ bf1.7
++ ~I don't even know where to start. You know that big crater in Waukeen's Promenade? That was caused during a battle with the mage who imprisoned me.~ EXTERN ~B!GAVJ~ bf1.8

CHAIN 
IF ~Global("B!GavTalk","GLOBAL",2) Global("B!GavNoBG1","GLOBAL",1)~ THEN ~B!GAVJ~ bf1.1b
~It's good to sit beside the fire with travel companions again, but you've been through a lot, I hear. Anything you want to talk about?~ [bgav103]
DO ~ SetGlobal("B!GavTalk","GLOBAL",3) RealSetGlobalTimer("B!GavT","GLOBAL",GAV_TIME)~
END
++ ~I've been kidnapped, held against my will, and tortured. You?~ EXTERN ~B!GAVJ~ bf1.2
++ ~Not really, no.~ EXTERN ~B!GAVJ~ bf1.3a
+ ~GlobalLT("Chapter","GLOBAL",4)~ + ~They captured Imoen, my oldest friend. They took her to a prison for magical deviants, and I don't even know where it is.~ EXTERN ~B!GAVJ~ bf1.4a
++ ~Dynaheir and Khalid, two former friends and travel companions, are dead. Dynaheir might have died during my capture, but Khalid was flayed alive.~ EXTERN ~B!GAVJ~ bf1.5
+ ~GlobalGT("Chapter","GLOBAL",5)~ + ~I'm on a quest to save the world, and I don't even have a soul.~ EXTERN ~B!GAVJ~ bf1.6
++ ~I don't even know where to start. You know that big crater in Waukeen's Promenade? That was caused during a battle with the mage who imprisoned me.~ EXTERN ~B!GAVJ~ bf1.8

APPEND ~B!GAVJ~

IF ~~ bf1.2
SAY ~And I thought I had it bad. All that happened to me was that I got lost in the Cloud Peaks and came down with a rash when a leaf I thought was goat thistle turned out not to be.~
+ ~!Global("B!GavNoBG1","GLOBAL",1)~ + ~How did you manage to get lost in the Cloud Peaks? That's practically your back garden, and we must have crossed through that area half a dozen times, during our travels.~ + bf1.9
+ ~Global("B!GavNoBG1","GLOBAL",1)~ + ~You're from Beregost, aren't you? That's practically your back garden. Is your sense of direction really that bad?~ + bf1.9
+ ~Global("B!GavNoBG1","GLOBAL",1)~ + ~For a cleric, your herb-lore is sadly lacking.~ + bf1.10
+ ~!Global("B!GavNoBG1","GLOBAL",1)~ + ~I'm surprised at you, Gavin. Your herb-lore is better than that.~ + bf1.10
+ ~Global("B!GavNoBG1","GLOBAL",1)~ + ~I guess you haven't heard what happened to Dynaheir and Khalid, two former friends and travel companions, have you?~ + bf1.11
+ ~!Global("B!GavNoBG1","GLOBAL",1)~ + ~I guess you haven't heard what happened to Dynaheir and Khalid, have you?~ + bf1.11
+ ~Global("B!GavNoBG1","GLOBAL",1)~ + ~Is that when you lost your gear? You aren't really equipped to be traveling alone.~ + bf1.12
+ ~!Global("B!GavNoBG1","GLOBAL",1)~ + ~Dare I ask what happened to your gear?~ + bf1.12
+ ~GlobalLT("Chapter","GLOBAL",4) Global("B!GavNoBG1","GLOBAL",1)~  + ~It gets worse. Cowled Wizards captured Imoen, my oldest friend.~ + bf1.4a
+ ~GlobalLT("Chapter","GLOBAL",4) !Global("B!GavNoBG1","GLOBAL",1) !Global("B!GavImoenRA","GLOBAL",1)~  + ~It gets worse. Cowled Wizards captured Imoen.~ + bf1.4
+ ~GlobalGT("Chapter","GLOBAL",5)~ + ~My soul is gone, Gavin.~ + bf1.6
+ ~Global("B!GavNoBG1","GLOBAL",1)~ + ~Well, you've heard about the worst of it.~ + bf1.3a
+ ~!Global("B!GavNoBG1","GLOBAL",1)~ + ~Well, you've heard about the worst of it.~ + bf1.3
END

IF ~~ bf1.3
SAY ~You always were a survivor.~
++ ~I didn't quite tell you everything.~ + bf1.13
++ ~Something to carve on my tombstone, that.~ + bf1.14
++ ~If that's another way of saying 'too stubborn to die,' I suppose it's true enough.~ + bf1.15
++ ~Maybe, but I'm exhausted. What say you we pick up this conversation tomorrow?~ + bf1.16
END

IF ~~ bf1.3a
SAY ~I've heard that you're a survivor.~
++ ~I didn't quite tell you everything.~ + bf1.13
++ ~Something to carve on my tombstone, that.~ + bf1.14
++ ~If that's another way of saying 'too stubborn to die,' I suppose it's true enough.~ + bf1.15
++ ~Maybe, but I'm exhausted. What say you we pick up this conversation tomorrow?~ + bf1.16
END

IF ~~ bf1.4
SAY ~That's grim news indeed. I meant to ask why she wasn't with us... I hoped the reason was that she was meeting up with us later.~
IF ~~ THEN + bf1.4b
END

IF ~~ bf1.4a
SAY ~That's grim news indeed.~
IF ~~ THEN + bf1.4b
END

IF ~~ bf1.4b
SAY ~What are you doing to get her back?~
+ ~Global("Chapter","GLOBAL",2)~ + ~A man named Gaelan Bayle says that he can help us, for a mere twenty thousand gold.~ + bf1.17
+ ~Global("Chapter","GLOBAL",3)~ + ~I've made a deal with the Shadow Thieves. They will get us passage to Spellhold once I've done a few tasks for them.~ + bf1.18
+ ~Global("Chapter","GLOBAL",3)~ + ~A... woman... named Bodhi has agreed to secure us passage to Spellhold, if we help her and her allies.~ + bf1.19
++ ~I suppose I have to, don't I? I almost hate to say it, but I haven't been sorry not to have her underfoot all the time.~ + bf1.20
++ ~Honestly, I have no intention of 'getting her back.' She was always a nuisance. I'm more interested in settling a debt with the bastard who tortured me.~ + bf1.21
END

IF ~~ bf1.5
SAY ~I'm sorry to hear that.~
IF ~Global("B!GavNoBG1","GLOBAL",1)~ THEN + bf1.5b
IF ~!Global("B!GavNoBG1","GLOBAL",1)~ THEN + bf1.5a
END

IF ~~ bf1.5a
SAY ~The world will be a darker place without those two in it.~
+ ~Gender(Player1,MALE)~ + ~Jaheira is taking it hard...~ + bf1.22
+ ~Gender(Player1,MALE)~ + ~I'll miss Dynaheir more than you know.~ + bf1.23
++ ~Raise your cup, and we'll drink to their memory.~ + bf1.24
++ ~I only hope they are the last companions I'll lose.~ + bf1.25
+ ~GlobalLT("Chapter","GLOBAL",4) !Global("B!GavNoBG1","GLOBAL",1)~  + ~It gets worse. Cowled Wizards captured Imoen.~ + bf1.4
+ ~!Global("B!GavNoBG1","GLOBAL",1)~ + ~Well, you've heard about the worst of it.~ + bf1.3
END

IF ~~ bf1.5b
SAY ~It is never easy to lose those close to you.~
+ ~Gender(Player1,MALE)~ + ~Jaheira, his widow, is taking it hard...~ + bf1.22
+ ~Gender(Player1,MALE)~ + ~I'll miss Dynaheir more than you know.~ + bf1.23
++ ~Raise your cup, and we'll drink to their memory.~ + bf1.24
++ ~I only hope they are the last companions I'll lose.~ + bf1.25
+ ~GlobalLT("Chapter","GLOBAL",4) Global("B!GavNoBG1","GLOBAL",1)~  + ~It gets worse. Cowled Wizards captured Imoen, my oldest friend.~ + bf1.4a
+ ~Global("B!GavNoBG1","GLOBAL",1)~ + ~Well, you've heard about the worst of it.~ + bf1.3a
END

IF ~~ bf1.6
SAY ~You haven't got a soul? Helm's beard, <PRO_MANWOMAN>, I didn't know that you could live without one! How did this happen?~
++ ~I'm not really sure.~ + bf1.26
++ ~It's all pretty complicated. I don't know if I can describe it.~ + bf1.27
++ ~Irenicus extracted it like juice from grapes.~ + bf1.28
++ ~I don't want to talk about it.~ + bf1.27
END

IF ~~ bf1.7
SAY ~I've got a flask right here. I'll pour, you talk.~
++ ~I'd as soon just drink, Gavin. A lot has happened, but I'd rather not have to relive it in the telling.~ + bf1.27
++ ~Well, you know I was captured. After that, I was tortured and imprisoned. I only got free recently.~ + bf1.2
+ ~GlobalLT("Chapter","GLOBAL",4)~ + ~They've got Imoen, Gavin. They accused her of using magic illegally and dragged her off to a prison for magical deviants.~ + bf1.4
++ ~Khalid and Dynaheir are dead - killed by the mage who imprisoned me.~ + bf1.5
+ ~GlobalGT("Chapter","GLOBAL",5)~ + ~It sounds strange saying this, but they took my soul. Literally.~ + bf1.6
++ ~What's to say? You know me. I lived.~ + bf1.3
END

IF ~~ bf1.8
SAY ~He sounds powerful... and dangerous.~
++ ~And cruel, as well. I was tortured before I managed to escape.~ + bf1.2
++ ~He said I had power, Gavin.~ + bf1.28
+ ~!Global("B!GavNoBG1","GLOBAL",1)~ + ~I get chills thinking about it. Can we talk about something else?~ + bf1.7
END

IF ~~ bf1.9
SAY ~I wasn't in my right mind, at the time.~
IF ~~ THEN + bf1.10
END

IF ~~ bf1.10
SAY ~It was getting on in the year, and I was still a good day out from Nashkel. We'd had a frost, and I was feeling a bit ill, since I had been going too often without enough sleep or food, so I decided to supplement my trail rations with what greens I could find. The frost had withered the leaves a bit, and I thought I was eating goat thistle.~
= ~At first, I felt only a little disoriented, like I stood up too fast or had too much ale the night before, but before long, the light of my torch was leaving trails in my vision. A little while after that, I stopped being able to recognize landmarks, or even stay on the road.~
= ~The next thing I knew, I was lying in a gully in a pool of mud and worse, with a nasty rash and no clear recollection of time.~
= ~I still had my pack, and what little gold I had, so that was something, but I reckon I must have lost at least one day, possibly two. It took me another day to get over the after-effects of whatever it was, but by that time, I had regained my bearings, and I discovered that I had traveled a full day in the direction opposite the one I wanted.~
= ~I probably have you to thank for my life. If you had not been so thorough in getting rid of the hobgoblins in the Cloud Peaks, the crows would have been picking over whatever the hobgoblins hadn't eaten.~
IF ~~ THEN + bf1.13 //link to "What else did you want to talk about?"
END

IF ~~ bf1.11
SAY ~I can guess from the way you said that. I'm sorry.~
IF ~Global("B!GavNoBG1","GLOBAL",1)~ THEN + bf1.5b
IF ~!Global("B!GavNoBG1","GLOBAL",1)~ THEN + bf1.5a
END

IF ~~ bf1.12
SAY ~I sold most of what I had. I had to pay for Lanie's education, and it was far more expensive than I had planned. I don't regret the cost! No, it is what it is, and I'm glad to pay it, if it means that she learns to control her talent, but I did have to sell a few things.~
= ~Besides, they say that a man who can't part with possessions in a time of need is in shackles.~
IF ~~ THEN + bf1.13
END

IF ~~ bf1.13
SAY ~What else did you want to talk about?~
+ ~Global("B!GavNoBG1","GLOBAL",1)~ + ~Dynaheir and Khalid, two former friends and travel companions, were killed by the mage who captured me.~ + bf1.5
+ ~!Global("B!GavNoBG1","GLOBAL",1)~ + ~Dynaheir and Khalid were killed by the mage who captured me.~ + bf1.5
+ ~Global("B!GavNoBG1","GLOBAL",1)~ + ~Was that really all the gear you started with? You aren't really equipped to be traveling alone.~ + bf1.12
+ ~!Global("B!GavNoBG1","GLOBAL",1)~ + ~Dare I ask what happened to your gear?~ + bf1.12
+ ~GlobalLT("Chapter","GLOBAL",4) Global("B!GavNoBG1","GLOBAL",1)~  + ~Cowled Wizards captured Imoen, my oldest friend. 'Illegal use of magical energy,' they said.~ + bf1.4a
+ ~GlobalLT("Chapter","GLOBAL",4) !Global("B!GavNoBG1","GLOBAL",1)~  + ~Cowled Wizards captured Imoen. 'Illegal use of magical energy,' they said.~ + bf1.4
+ ~GlobalGT("Chapter","GLOBAL",5)~ + ~My soul is gone, Gavin.~ + bf1.6
+ ~Global("B!GavNoBG1","GLOBAL",1)~ + ~What more is there to say?~ + bf1.3a
+ ~!Global("B!GavNoBG1","GLOBAL",1)~ + ~What more is there to say?~ + bf1.3

END

IF ~~ bf1.14
SAY ~Let's save that for your old age.~
IF ~~ THEN + bf1.29
END

IF ~~ bf1.15
SAY ~That's good to know.~
IF ~~ THEN + bf1.29
END

IF ~~ bf1.16
SAY ~There's something else I wanted to talk about before we turn in.~
IF ~~ THEN + bf1.37 
END

IF ~~ bf1.17
SAY ~Is that all? Still, any price is worth it, don't you think?~
++ ~This is Imoen we're talking about here. You know that she and I were never close. But you're right. I couldn't bring myself to abandon her.~ + bf1.20
++ ~It isn't that I begrudge the gold. It's more that I don't like dealing with someone whose connections are so unsavory.~ + bf1.31
++ ~I'd pay many times that, and gladly, if only I had it.~ + bf1.32
END

IF ~~ bf1.18
SAY ~Shadow Thieves! I guess it can't be helped, though, if you're to have any hope of getting Imoen back.~
IF ~~ THEN + bf1.13
END

IF ~~ bf1.19
SAY ~Why did you hesitate before saying the word 'woman'?~
+ ~!Kit(Player1,GODLATHANDER)~ + ~She's a vampire. I know how Lathandrites feel about undead.~ + bf1.33  //check this kit in KIT_IDS!
+ ~Kit(Player1,GODLATHANDER)~ + ~She's a vampire. You know what Lathander teaches us about undead.~ + bf1.34  //check this kit in KIT_IDS!
++ ~She transcends the word. I've never met anyone like her.~ + bf1.35
++ ~You're imagining things.~ + bf1.30
END

IF ~~ bf1.20
SAY ~Ahem... well, at least you aren't going to leave her there.~
IF ~~ THEN + bf1.13
END

IF ~~ bf1.21
SAY ~Surely you don't intend to just leave her there? I haven't been in Athkatla long at all, but I've heard what happens to those they send to their magical prison.~
IF ~~ THEN + bf1.13
END

IF ~~ bf1.22
SAY ~It's only natural. Grief manifests itself in strange ways.~
IF ~~ THEN + bf1.13
END

IF ~~ bf1.23
SAY ~Then I am doubly sorry for your loss.~
IF ~~ THEN + bf1.13
END

IF ~~ bf1.24
SAY ~For the fallen: may the gods give them peace.~
IF ~~ THEN + bf1.13
END

IF ~~ bf1.25
SAY ~As do I.~
IF ~~ THEN + bf1.13
END

IF ~~ bf1.26
SAY ~Anything that can be lost can be found. We'll get it back.~
IF ~~ THEN + bf1.13
END

IF ~~ bf1.27
SAY ~That's understandable. Have a glass with me, and we'll watch the fire a while... but there is one more thing I'd like to talk about before we turn in.~
IF ~~ THEN + bf1.37 
END

IF ~~ bf1.28
SAY ~And that was power he wanted to tap, though perhaps you'd prefer not to talk about that now. Thank the gods you escaped.~
IF ~~ THEN + bf1.13
END

IF ~~ bf1.29
SAY ~Anything else, or was that all you wanted to say?~
++ ~Oh, there's more, all right.~ + bf1.13
++ ~We're getting toward the end of it.~ + bf1.13
++ ~That's it, for now.~ + bf1.16
END

IF ~~ bf1.30
SAY ~If you say so...~
IF ~~ THEN + bf1.13
END

IF ~~ bf1.31
SAY ~Lathander teaches us that goodness can be found within even the most unlikely heart... though perhaps this isn't the best time for that particular sermon. In any case, you have to take whatever help you can get.~
IF ~~ THEN + bf1.13
END

IF ~~ bf1.32
SAY ~Larger fortunes have been won in the City of Coin. We'll find a way to raise the money.~
IF ~~ THEN + bf1.13
END

IF ~~ bf1.33
SAY ~You're right about that, but the stakes are a woman's life. I pray that Lathander will forgive the sin of allowing undead to un-live, but it would be well to make sure Imoen is safe before rectifying that.~
++ ~Are you saying that you'll help?~ + bf1.34
++ ~I expected more opposition than that.~ + bf1.34
++ ~Thanks for understanding. I did not have many options.~ + bf1.34
++ ~There was no other way.~ + bf1.34
END

IF ~~ bf1.34
SAY ~We all do what we must. I'll help however I can.~
IF ~~ THEN + bf1.13
END

IF ~~ bf1.35
SAY ~I feel a chill at the way you say that, but it must be my imagination. She's willing to help, so there must be some good in her.~
++ ~Er... yes, of course.~ + bf1.13
++ ~Maybe deep down.~ + bf1.13
++ ~They do say you are what you eat.~ + bf1.36
++ ~I don't know and I don't care. She's agreed to help us, and that's good enough for me.~ + bf1.34
++ ~I doubt it.~ + bf1.34
END

IF ~~ bf1.36
SAY ~What is that supposed to mean?~
++ ~Nothing, Gavin, nothing at all.~ + bf1.30
++ ~Er... there's a certain agelessness about her. She must have a very good diet.~ + bf1.30
++ ~She's a vampire, Gavin. I didn't want to tell you, knowing how you feel about undead, but you're bound to find out, sooner or later.~ + bf1.33
END

IF ~~ bf1.37 
SAY ~Where do we go from here?~ [bgav104] 
/* key: t1
        e ngaged, n ot engaged, b roken engagement 
        b g1,     n o bg1 
        1, 2, 3, 4 = RA 
        0 no break, 1 amicable break, 2 bad break */
/* ~We take one day at a time.~ */ 
/* Never been engaged, knew him in BG1, no romance */ 
+ ~Global("B!GavinEngaged","GLOBAL",0) 
      !Global("B!GavNoBG1","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",0)~ + ~We take one day at a time.~ + t1nb00.0 
/* Never been engaged, knew him in BG1, dating */ 
+ ~Global("B!GavinEngaged","GLOBAL",0) 
      !Global("B!GavNoBG1","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",1)~ + ~We take one day at a time.~ + t1nb10.0 
/* Never been engaged, knew him in BG1, amicable breakup */ 
+ ~Global("B!GavinEngaged","GLOBAL",0) 
      !Global("B!GavNoBG1","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",3) 
      Global("B!GavRomBreak","GLOBAL",1)~ + ~We take one day at a time.~ + t1nb31.0 
/* Never been engaged, knew him in BG1, bad breakup */ 
+ ~Global("B!GavinEngaged","GLOBAL",0) 
      !Global("B!GavNoBG1","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",3) 
      Global("B!GavRomBreak","GLOBAL",2)~ + ~We take one day at a time.~ + t1nb32.0 
/* Didn't know him in BG1, no romance */ 
+ ~Global("B!GavNoBG1","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",0)~ + ~We take one day at a time.~ + t1nb31.0 
/* Didn't know him in BG1, dating */ 
+ ~Global("B!GavNoBG1","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",1)~ + ~We take one day at a time.~ + t1nb31.0 
/* Didn't know him in BG1, amicable breakup */ 
+ ~Global("B!GavNoBG1","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",3) 
      Global("B!GavRomBreak","GLOBAL",1)~ + ~We take one day at a time.~ + t1nb31.0 
/* Didn't know him in BG1, bad breakup */ 
+ ~Global("B!GavNoBG1","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",3) 
      Global("B!GavRomBreak","GLOBAL",2)~ + ~We take one day at a time.~ + t1nb32.0 
/* Engaged, dating */ 
+ ~Global("B!GavinEngaged","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",1)~ + ~We take one day at a time.~ + t1eb10.0 
/* Engaged, amicable breakup */ 
+ ~Global("B!GavinEngaged","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",3) 
      Global("B!GavRomBreak","GLOBAL",1)~ + ~We take one day at a time.~ + t1nb31.0 
/* Engaged, bad breakup */ 
+ ~Global("B!GavinEngaged","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",3) 
      Global("B!GavRomBreak","GLOBAL",2)~ + ~We take one day at a time.~ + t1nb32.0 
/* Broken engagement, now dating */ 
+ ~Global("B!GavinEngaged","GLOBAL",2) 
      Global("B!GavRA","GLOBAL",1)~ + ~We take one day at a time.~ + t1bb10.0 
/* Broken engagement, amicable breakup */ 
+ ~Global("B!GavinEngaged","GLOBAL",2) 
      Global("B!GavRA","GLOBAL",3) 
      Global("B!GavRomBreak","GLOBAL",1)~ + ~We take one day at a time.~ + t1nb31.0 
/* Broken engagement, bad breakup */ 
+ ~Global("B!GavinEngaged","GLOBAL",2) 
      Global("B!GavRA","GLOBAL",3) 
      Global("B!GavRomBreak","GLOBAL",2)~ + ~We take one day at a time.~ + t1nb32.0 
/* ~We go to bed and think about it tomorrow.~ */ 
/* Never been engaged, knew him in BG1, no romance */ 
+ ~Global("B!GavinEngaged","GLOBAL",0) 
      !Global("B!GavNoBG1","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",0)~ + ~We go to bed and think about it tomorrow.~ + t1nb00.0 
/* Never been engaged, knew him in BG1, dating */ 
+ ~Global("B!GavinEngaged","GLOBAL",0) 
      !Global("B!GavNoBG1","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",1)~ + ~We go to bed and think about it tomorrow.~ + t1nb10.0 
/* Never been engaged, knew him in BG1, amicable breakup */ 
+ ~Global("B!GavinEngaged","GLOBAL",0) 
      !Global("B!GavNoBG1","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",3) 
      Global("B!GavRomBreak","GLOBAL",1)~ + ~We go to bed and think about it tomorrow.~ + t1nb31.0 
/* Never been engaged, knew him in BG1, bad breakup */ 
+ ~Global("B!GavinEngaged","GLOBAL",0) 
      !Global("B!GavNoBG1","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",3) 
      Global("B!GavRomBreak","GLOBAL",2)~ + ~We go to bed and think about it tomorrow.~ + t1nb32.0 
/* Didn't know him in BG1, no romance */ 
+ ~Global("B!GavNoBG1","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",0)~ + ~We go to bed and think about it tomorrow.~ + t1nb31.0 
/* Didn't know him in BG1, dating */ 
+ ~Global("B!GavNoBG1","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",1)~ + ~We go to bed and think about it tomorrow.~ + t1nb31.0 
/* Didn't know him in BG1, amicable breakup */ 
+ ~Global("B!GavNoBG1","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",3) 
      Global("B!GavRomBreak","GLOBAL",1)~ + ~We go to bed and think about it tomorrow.~ + t1nb31.0 
/* Didn't know him in BG1, bad breakup */ 
+ ~Global("B!GavNoBG1","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",3) 
      Global("B!GavRomBreak","GLOBAL",2)~ + ~We go to bed and think about it tomorrow.~ + t1nb32.0 
/* Engaged, dating */ 
+ ~Global("B!GavinEngaged","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",1)~ + ~We go to bed and think about it tomorrow.~ + t1eb10.0 
/* Engaged, amicable breakup */ 
+ ~Global("B!GavinEngaged","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",3) 
      Global("B!GavRomBreak","GLOBAL",1)~ + ~We go to bed and think about it tomorrow.~ + t1nb31.0 
/* Engaged, bad breakup */ 
+ ~Global("B!GavinEngaged","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",3) 
      Global("B!GavRomBreak","GLOBAL",2)~ + ~We go to bed and think about it tomorrow.~ + t1nb32.0 
/* Broken engagement, now dating */ 
+ ~Global("B!GavinEngaged","GLOBAL",2) 
      Global("B!GavRA","GLOBAL",1)~ + ~We go to bed and think about it tomorrow.~ + t1bb10.0 
/* Broken engagement, amicable breakup */ 
+ ~Global("B!GavinEngaged","GLOBAL",2) 
      Global("B!GavRA","GLOBAL",3) 
      Global("B!GavRomBreak","GLOBAL",1)~ + ~We go to bed and think about it tomorrow.~ + t1nb31.0 
/* Broken engagement, bad breakup */ 
+ ~Global("B!GavinEngaged","GLOBAL",2) 
      Global("B!GavRA","GLOBAL",3) 
      Global("B!GavRomBreak","GLOBAL",2)~ + ~We go to bed and think about it tomorrow.~ + t1nb32.0 
/* ~We go on as we did before.~ */ 
/* Never been engaged, knew him in BG1, no romance */ 
+ ~Global("B!GavinEngaged","GLOBAL",0) 
      !Global("B!GavNoBG1","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",0)~ + ~We go on as we did before.~ + t1nb00.0 
/* Never been engaged, knew him in BG1, dating */ 
+ ~Global("B!GavinEngaged","GLOBAL",0) 
      !Global("B!GavNoBG1","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",1)~ + ~We go on as we did before.~ + t1nb10.0 
/* Never been engaged, knew him in BG1, amicable breakup */ 
+ ~Global("B!GavinEngaged","GLOBAL",0) 
      !Global("B!GavNoBG1","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",3) 
      Global("B!GavRomBreak","GLOBAL",1)~ + ~We go on as we did before.~ + t1nb31.0 
/* Never been engaged, knew him in BG1, bad breakup */ 
+ ~Global("B!GavinEngaged","GLOBAL",0) 
      !Global("B!GavNoBG1","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",3) 
      Global("B!GavRomBreak","GLOBAL",2)~ + ~We go on as we did before.~ + t1nb32.0 
/* Didn't know him in BG1, no romance */ 
+ ~Global("B!GavNoBG1","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",0)~ + ~We go on as we did before.~ + t1nb31.0 
/* Didn't know him in BG1, dating */ 
+ ~Global("B!GavNoBG1","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",1)~ + ~We go on as we did before.~ + t1nb31.0 
/* Didn't know him in BG1, amicable breakup */ 
+ ~Global("B!GavNoBG1","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",3) 
      Global("B!GavRomBreak","GLOBAL",1)~ + ~We go on as we did before.~ + t1nb31.0 
/* Didn't know him in BG1, bad breakup */ 
+ ~Global("B!GavNoBG1","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",3) 
      Global("B!GavRomBreak","GLOBAL",2)~ + ~We go on as we did before.~ + t1nb32.0 
/* Engaged, dating */ 
+ ~Global("B!GavinEngaged","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",1)~ + ~We go on as we did before.~ + t1eb10.0 
/* Engaged, amicable breakup */ 
+ ~Global("B!GavinEngaged","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",3) 
      Global("B!GavRomBreak","GLOBAL",1)~ + ~We go on as we did before.~ + t1nb31.0 
/* Engaged, bad breakup */ 
+ ~Global("B!GavinEngaged","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",3) 
      Global("B!GavRomBreak","GLOBAL",2)~ + ~We go on as we did before.~ + t1nb32.0 
/* Broken engagement, now dating */ 
+ ~Global("B!GavinEngaged","GLOBAL",2) 
      Global("B!GavRA","GLOBAL",1)~ + ~We go on as we did before.~ + t1bb10.0 
/* Broken engagement, amicable breakup */ 
+ ~Global("B!GavinEngaged","GLOBAL",2) 
      Global("B!GavRA","GLOBAL",3) 
      Global("B!GavRomBreak","GLOBAL",1)~ + ~We go on as we did before.~ + t1nb31.0 
/* Broken engagement, bad breakup */ 
+ ~Global("B!GavinEngaged","GLOBAL",2) 
      Global("B!GavRA","GLOBAL",3) 
      Global("B!GavRomBreak","GLOBAL",2)~ + ~We go on as we did before.~ + t1nb32.0 
/* ~You were gone a long time, Gavin. Much has changed.~ */ 
/* Never been engaged, knew him in BG1, no romance */ 
+ ~Global("B!GavinEngaged","GLOBAL",0) 
      !Global("B!GavNoBG1","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",0)~ + ~You were gone a long time, Gavin. Much has changed.~ + t1nb00.0 
/* Never been engaged, knew him in BG1, dating */ 
+ ~Global("B!GavinEngaged","GLOBAL",0) 
      !Global("B!GavNoBG1","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",1)~ + ~You were gone a long time, Gavin. Much has changed.~ + t1nb10.0 
/* Never been engaged, knew him in BG1, amicable breakup */ 
+ ~Global("B!GavinEngaged","GLOBAL",0) 
      !Global("B!GavNoBG1","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",3) 
      Global("B!GavRomBreak","GLOBAL",1)~ + ~You were gone a long time, Gavin. Much has changed.~ + t1nb31.0 
/* Never been engaged, knew him in BG1, bad breakup */ 
+ ~Global("B!GavinEngaged","GLOBAL",0) 
      !Global("B!GavNoBG1","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",3) 
      Global("B!GavRomBreak","GLOBAL",2)~ + ~You were gone a long time, Gavin. Much has changed.~ + t1nb32.0 
/* Engaged, dating */ 
+ ~Global("B!GavinEngaged","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",1)~ + ~You were gone a long time, Gavin. Much has changed.~ + t1eb10.0 
/* Engaged, amicable breakup */ 
+ ~Global("B!GavinEngaged","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",3) 
      Global("B!GavRomBreak","GLOBAL",1)~ + ~You were gone a long time, Gavin. Much has changed.~ + t1nb31.0 
/* Engaged, bad breakup */ 
+ ~Global("B!GavinEngaged","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",3) 
      Global("B!GavRomBreak","GLOBAL",2)~ + ~You were gone a long time, Gavin. Much has changed.~ + t1nb32.0 
/* Broken engagement, now dating */ 
+ ~Global("B!GavinEngaged","GLOBAL",2) 
      Global("B!GavRA","GLOBAL",1)~ + ~You were gone a long time, Gavin. Much has changed.~ + t1bb10.0 
/* Broken engagement, amicable breakup */ 
+ ~Global("B!GavinEngaged","GLOBAL",2) 
      Global("B!GavRA","GLOBAL",3) 
      Global("B!GavRomBreak","GLOBAL",1)~ + ~You were gone a long time, Gavin. Much has changed.~ + t1nb31.0 
/* Broken engagement, bad breakup */ 
+ ~Global("B!GavinEngaged","GLOBAL",2) 
      Global("B!GavRA","GLOBAL",3) 
      Global("B!GavRomBreak","GLOBAL",2)~ + ~You were gone a long time, Gavin. Much has changed.~ + t1nb32.0 
/* ~I don't know, Gavin. I haven't forgiven you yet.~ */ 
/* Never been engaged, knew him in BG1, no romance */ 
+ ~Global("B!GavinEngaged","GLOBAL",0) 
      !Global("B!GavNoBG1","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",0)~ + ~I don't know, Gavin. I haven't forgiven you yet.~ + t1nb00.0 
/* Never been engaged, knew him in BG1, dating */ 
+ ~Global("B!GavinEngaged","GLOBAL",0) 
      !Global("B!GavNoBG1","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",1)~ + ~I don't know, Gavin. I haven't forgiven you yet.~ + t1nb10.0 
/* Never been engaged, knew him in BG1, amicable breakup */ 
+ ~Global("B!GavinEngaged","GLOBAL",0) 
      !Global("B!GavNoBG1","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",3) 
      Global("B!GavRomBreak","GLOBAL",1)~ + ~I don't know, Gavin. I haven't forgiven you yet.~ + t1nb31.0 
/* Never been engaged, knew him in BG1, bad breakup */ 
+ ~Global("B!GavinEngaged","GLOBAL",0) 
      !Global("B!GavNoBG1","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",3) 
      Global("B!GavRomBreak","GLOBAL",2)~ + ~I don't know, Gavin. I haven't forgiven you yet.~ + t1nb32.0 
/* Engaged, dating */ 
+ ~Global("B!GavinEngaged","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",1)~ + ~I don't know, Gavin. I haven't forgiven you yet.~ + t1eb10.0 
/* Engaged, amicable breakup */ 
+ ~Global("B!GavinEngaged","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",3) 
      Global("B!GavRomBreak","GLOBAL",1)~ + ~I don't know, Gavin. I haven't forgiven you yet.~ + t1nb31.0 
/* Engaged, bad breakup */ 
+ ~Global("B!GavinEngaged","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",3) 
      Global("B!GavRomBreak","GLOBAL",2)~ + ~I don't know, Gavin. I haven't forgiven you yet.~ + t1nb32.0 
/* Broken engagement, now dating */ 
+ ~Global("B!GavinEngaged","GLOBAL",2) 
      Global("B!GavRA","GLOBAL",1)~ + ~I don't know, Gavin. I haven't forgiven you yet.~ + t1bb10.0 
/* Broken engagement, amicable breakup */ 
+ ~Global("B!GavinEngaged","GLOBAL",2) 
      Global("B!GavRA","GLOBAL",3) 
      Global("B!GavRomBreak","GLOBAL",1)~ + ~I don't know, Gavin. I haven't forgiven you yet.~ + t1nb31.0 
/* Broken engagement, bad breakup */ 
+ ~Global("B!GavinEngaged","GLOBAL",2) 
      Global("B!GavRA","GLOBAL",3) 
      Global("B!GavRomBreak","GLOBAL",2)~ + ~I don't know, Gavin. I haven't forgiven you yet.~ + t1nb32.0 
/* Engaged, dating */ 
+ ~Global("B!GavinEngaged","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",1)~ + ~We make passionate love until the sun comes up and face whatever tomorrow brings together.~ + t1eb10.1 
END 

/* Never been engaged, knew him in BG1, no romance */ 

IF ~~ t1nb00.0 
SAY ~I'd understand if you were a bit vexed with me. I was gone much longer than I told you I would be.~ 
++ ~I was a bit annoyed when weeks turned into months, but there's amusement enough to be found in Baldur's Gate. No harm done.~ + t1nb00.0a 
++ ~You had a good excuse. Even if I was angry with you for not returning when you said you would, I forgave you the moment you told me what kept you.~ + t1nb00.0a 
++ ~I didn't even notice.~ + t1nb00.0a 
++ ~I'm angry, yes, but it will pass.~ + t1nb00.0b 
++ ~You're on your last chance, Gavin. Just so you know.~ + t1nb00.0b
END 

IF ~~ t1nb00.0a 
SAY ~That's a relief.~ 
IF ~~ THEN + t1nb00.0c 
END 

IF ~~ t1nb00.0b 
SAY ~Thank you for telling me. I'll do my best not to make things worse.~ 
IF ~~ THEN + t1nb00.0c 
END 

IF ~~ t1nb00.0c 
SAY ~Well, it's getting late, and it has been a very long day. Everything always looks better in the morning.~ 
IF ~!AreaCheck("AR0085") 
    !AreaCheck("AR1100") 
    !AreaCheck("AR1101") 
    !AreaCheck("AR1102") 
    !AreaCheck("AR1104") 
    !AreaCheck("AR1105") 
    !AreaCheck("AR1106") 
    !AreaCheck("AR1107") 
    !AreaCheck("AR1200") 
    !AreaCheck("AR1204") 
    !AreaCheck("AR1300") 
    !AreaCheck("AR1304") 
    !AreaCheck("AR1400") 
    !AreaCheck("AR1404") 
    !AreaCheck("AR1700") 
    !AreaCheck("AR1800") 
    !AreaCheck("AR1900") 
    !AreaCheck("AR1901") 
    !AreaCheck("AR1902") 
    !AreaCheck("AR1904") 
    !AreaCheck("AR1905") 
    !AreaCheck("AR2500") 
    !AreaCheck("AR2600") 
    !AreaCheck("AR2602") 
    !AreaCheck("AR2603")
    !AreaCheck("AR2700") 
    !AreaCheck("AR2800")~ THEN DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!rest1")~ EXIT 
IF ~OR(27) 
    AreaCheck("AR0085") 
    AreaCheck("AR1100") 
    AreaCheck("AR1101") 
    AreaCheck("AR1102") 
    AreaCheck("AR1104") 
    AreaCheck("AR1105") 
    AreaCheck("AR1106") 
    AreaCheck("AR1107") 
    AreaCheck("AR1200") 
    AreaCheck("AR1204") 
    AreaCheck("AR1300") 
    AreaCheck("AR1304") 
    AreaCheck("AR1400") 
    AreaCheck("AR1404") 
    AreaCheck("AR1700") 
    AreaCheck("AR1800") 
    AreaCheck("AR1900") 
    AreaCheck("AR1901") 
    AreaCheck("AR1902") 
    AreaCheck("AR1904") 
    AreaCheck("AR1905") 
    AreaCheck("AR2500") 
    AreaCheck("AR2600") 
    AreaCheck("AR2602") 
    AreaCheck("AR2603")
    AreaCheck("AR2700") 
    AreaCheck("AR2800")~ THEN DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!rest2")~ EXIT 
END 

/* Never been engaged, knew him in BG1, dating */ 

IF ~~ t1nb10.0 
SAY ~I never meant to leave you that long, you know... in Baldur's Gate, that is.~ 
+ ~Global("B!GavBG1Rom","GLOBAL",2)~ + ~I don't remember you being all that fond of me, at the time.~ + t1nb10.0a 
+ ~Global("B!GavBG1Rom","GLOBAL",1)~ + ~I don't remember you being all that fond of me, at the time.~ + t1nb10.0b 
+ ~Global("B!GavBG1Rom","GLOBAL",2)~ + ~I know. I understood that you would have come back if you could.~ + t1nb10.0f 
+ ~Global("B!GavBG1Rom","GLOBAL",1)~ + ~I know. I understood that you would have come back if you could.~ + t1nb10.0g 
+ ~Global("B!GavBG1Rom","GLOBAL",2)~ + ~If I was annoyed with you, I forgave you as soon as I found out the reason for your absence.~ + t1nb10.0f 
+ ~Global("B!GavBG1Rom","GLOBAL",1)~ + ~If I was annoyed with you, I forgave you as soon as I found out the reason for your absence.~ + t1nb10.0g 
+ ~Global("B!GavBG1Rom","GLOBAL",2)~ + ~I was angry with you for a long time.~ + t1nb10.0d 
+ ~Global("B!GavBG1Rom","GLOBAL",1)~ + ~I was angry with you for a long time.~ + t1nb10.0e 
+ ~Global("B!GavBG1Rom","GLOBAL",2)~ + ~And now you're back. I haven't forgiven you, you know.~ + t1nb10.0d 
+ ~Global("B!GavBG1Rom","GLOBAL",1)~ + ~And now you're back. I haven't forgiven you, you know.~ + t1nb10.0e 
+ ~Global("B!GavBG1Rom","GLOBAL",2)~ + ~Forget the past, Gavin. You're here now, and that's enough.~ + t1nb10.0f 
+ ~Global("B!GavBG1Rom","GLOBAL",1)~ + ~Forget the past, Gavin. You're here now, and that's enough.~ + t1nb10.0g 
END 

IF ~~ t1nb10.0a 
SAY ~Much has changed, since then. I've learned some things in the time we were apart.~ 
++ ~Enough to make you forgive me for having Bhaal for a father?~ + t1nb10.0a1 
++ ~Maybe you've just noticed the lack of competition you've got now.~ + t1nb10.0a2 
++ ~You say that now, but I'm betting that in no time flat, you'll be bitching at me now just as much as you did then. You didn't think much of the way I did things.~ + t1nb10.0a3 
++ ~It wasn't your fault. I didn't want the attention you were paying me.~ + t1nb10.0a4 
++ ~Why are you talking like we were best friends? We barely knew each other.~ + t1nb10.0a5 
++ ~That's good to know.~ + t1nb10.0a7 
++ ~Is this your way of saying you're sorry?~ + t1nb10.0a6 
++ ~Just don't get any ideas. I didn't want you then, and I don't want you now.~ + t1nb10.0a8 
END 

IF ~~ t1nb10.0a1
SAY ~I panicked. I knew even then that you had no control over your ancestry, but it still frightened me past all reason. I'm sorry.~ 
IF ~~ THEN + t1nb10.0a9 
END 

IF ~~ t1nb10.0a2
SAY ~I was too jealous and I had no right to be. I see that now, even if I didn't see it then.~ 
IF ~~ THEN + t1nb10.0a9 
END 

IF ~~ t1nb10.0a3
SAY ~Maybe I was more severe with you than I needed to be.~ 
IF ~~ THEN + t1nb10.0a9 
END 

IF ~~ t1nb10.0a4
SAY ~And how do you feel about attention now?~ 
++ ~Why don't you wait and see for yourself.~ + t1nb10.0a4a
++ ~Attention is all right.~ + t1nb10.0a4a 
++ ~I'm not sure.~ + t1nb10.0a4b 
++ ~Try anything and I'll tear your arm off.~ + t1nb10.0a4c 
++ ~I don't want that kind of attention from you.~ + t1nb10.0a4d
END 

IF ~~ t1nb10.0a4a
SAY ~Ahem. I shall keep that in mind.~ 
IF ~~ THEN + t1nb00.0c
END 

IF ~~ t1nb10.0a4b
SAY ~Let's just see how it goes.~ 
IF ~~ THEN + t1nb00.0c
END 

IF ~~ t1nb10.0a4c
SAY ~Ahem. Yes, well, we wouldn't want that, would we?~ 
IF ~~ THEN DO ~IncrementGlobal("B!GavLove","GLOBAL",-1) 
      SetGlobal("B!GavRA","GLOBAL",3) 
      SetGlobal("B!GavRomBreak","GLOBAL",1)~ + t1nb00.0c
END 

IF ~~ t1nb10.0a4d
SAY ~Understood.~ 
IF ~~ THEN DO ~IncrementGlobal("B!GavLove","GLOBAL",-1) 
      SetGlobal("B!GavRA","GLOBAL",3) 
      SetGlobal("B!GavRomBreak","GLOBAL",1)~ + t1nb00.0c
END 

IF ~~ t1nb10.0a5
SAY ~Ah. Well, Perhaps we'll get to know each other better in the future.~ 
IF ~~ THEN + t1nb00.0c
END 

IF ~~ t1nb10.0a6
SAY ~Yes.~ 
++ ~Apology accepted.~ + t1nb10.0a6a 
++ ~Too little, too late.~ + t1nb10.0a6b 
++ ~What, no groveling?~ + t1nb10.1a6c 
END 

IF ~~ t1nb10.0a6a
SAY ~Thank you.~ 
IF ~~ THEN + t1nb00.0c
END 

IF ~~ t1nb10.0a6b
SAY ~I'm sorry to hear that.~ 
IF ~~ THEN DO ~IncrementGlobal("B!GavLove","GLOBAL",-1) 
      SetGlobal("B!GavRA","GLOBAL",3) 
      SetGlobal("B!GavRomBreak","GLOBAL",1)~ + t1nb00.0c 
END 

IF ~~ t1nb10.1a6c
SAY ~Heh. I'm not very good at groveling. I hope you'll settle for a sincere apology.~ 
IF ~~ THEN + t1nb00.0c
END 

IF ~~ t1nb10.0a7
SAY ~It was bound to happen sooner or later.~ 
IF ~~ THEN + t1nb00.0c 
END 

IF ~~ t1nb10.0a8
SAY ~Ah. Thank you for letting me know.~ 
IF ~~ THEN DO ~IncrementGlobal("B!GavLove","GLOBAL",-1) 
      SetGlobal("B!GavRA","GLOBAL",3) 
      SetGlobal("B!GavRomBreak","GLOBAL",1)~ + t1nb00.0c  
END 

IF ~~ t1nb10.0a9
SAY ~I'm sorry.~ 
++ ~Apology accepted.~ + t1nb10.0a6a 
++ ~Too little, too late.~ + t1nb10.0a6b 
++ ~What, no groveling?~ + t1nb10.1a6c 
END 

IF ~~ t1nb10.0b 
SAY ~Much has changed, since then. I've learned some things in the time we were apart.~ 
++ ~Enough to make you forgive me for having Bhaal for a father?~ + t1nb10.0a1 
++ ~What? You mean you aren't as fixated on my flaws as you were then?~ + t1nb10.0b1 
++ ~You say that now, but I'm betting that in no time flat, you'll be bitching at me now just as much as you did then. You didn't think much of the way I did things.~ + t1nb10.0a3 
++ ~I'm still a heartless bitch, you know.~ + t1nb10.0b2 
++ ~Why are you talking like we were best friends? We barely knew each other.~ + t1nb10.0a5 
++ ~That's good to know.~ + t1nb10.0a7 
++ ~Is this your way of saying you're sorry?~ + t1nb10.0a6 
++ ~Just don't get any ideas. I didn't want you then, and I don't want you now.~ + t1nb10.0a8 
END 

IF ~~ t1nb10.0b1 
SAY ~I deserve your scorn. I was too shallow, by far.~ 
++ ~Apology accepted.~ + t1nb10.0a6a 
++ ~Too little, too late.~ + t1nb10.0a6b 
++ ~What, no groveling?~ + t1nb10.1a6c 
END 

IF ~~ t1nb10.0b2 
SAY ~I was too hard on you. I'm not ashamed to admit I was wrong. I'm sorry.~ 
++ ~Apology accepted.~ + t1nb10.0a6a 
++ ~Too little, too late.~ + t1nb10.0a6b 
++ ~What, no groveling?~ + t1nb10.1a6c 
END 

/* There is no t1nb10.0c */ 

IF ~~ t1nb10.0d 
SAY ~Whatever else, your anger is justified.~ 
IF ~~ THEN + t1nb10.0a 
END 

IF ~~ t1nb10.0e 
SAY ~Whatever else, your anger is justified.~ 
IF ~~ THEN + t1nb10.0b 
END 

IF ~~ t1nb10.0f 
SAY ~It's kind of you to say that, but I know that I was wrong.~ 
IF ~~ THEN + t1nb10.0a 
END 

IF ~~ t1nb10.0g 
SAY ~It's kind of you to say that, but I know that I was wrong.~ 
IF ~~ THEN + t1nb10.0b 
END 

/* Never been engaged, knew him in BG1, amicable breakup */ 

IF ~~ t1nb31.0 
SAY ~Yes, I suppose we do, at that.~ 
IF ~~ THEN + t1nb00.0c 
END 

/* Never been engaged, knew him in BG1, bad breakup */ 

IF ~~ t1nb32.0 
SAY ~Yes, I suppose we must. Odd, how the prospect of another day can bring so little joy.~ 
IF ~~ THEN + t1nb00.0c 
END 

/* Engaged, dating */ 

IF ~~ t1eb10.0 
SAY ~That's a given, but what about *us*? I never intended to be gone so long, but I was, and I fear much may have changed since then.~ 
++ ~Nothing has changed, Gavin. I love you just as much as ever.~ + t1eb10.0a 
++ ~I was angry, I admit, but I've long since forgiven you. I'm just happy you're here now.~ + t1eb10.0a 
++ ~I still care about you, Gavin, but I think we may have rushed things a little too much.~ + t1eb10.0b 
++ ~I saw so little of the world when I made you that promise. Now that I've seen more, I'd like a chance to experience some of the things I might have missed.~ + t1eb10.0b 
++ ~There's no use in trying to phrase this delicately, so I'm not even going to try. I like making love to you, and I don't want that to end, but I just don't want the commitment. I want to experience life, and all it has to offer.~ + t1eb10.0c 
++ ~I'm sorry to have to tell you this, but I've given my heart to another. I still value your company, but I've given my affection elsewhere.~ + t1eb10.0d 
++ ~I can't believe you're even talking about an 'us' after everything you put me through. It's over, Gavin. Please don't make this harder than it already is.~ + t1eb10.0e 
++ ~Stop fretting over the past and come to bed.~ + t1eb10.0f 
END 

IF ~~ t1eb10.0a 
SAY ~I can't tell you how happy I am that you're so forgiving. Gods know I deserve a lashing or worse, for all I put you through, but here you are, just as wonderful as always.~ 
IF ~~ THEN + t1eb10.0g 
END 

IF ~~ t1eb10.0b 
SAY ~I... I see. I suppose on some level I knew that I might return to find that your feelings toward me had changed, but I had hoped that you would be able to forgive me.~ 
++ ~It has nothing to do with you, Gavin. I've never been angry with you, but can you blame me if I want to see what else is out there?~ + t1eb10.0b1 
++ ~It irritates me no end that you're forever putting Lanie's needs and wellbeing ahead of mine. If you hadn't been chasing her all over Faerun, we wouldn't be having this conversation now.~ + t1eb10.0b2 
++ ~I admit, I am a bit annoyed that you took so long getting to me, but that isn't the reason I want more freedom now. I have choices now that I didn't have then and I want to see where they lead.~ + t1eb10.0b1 
++ ~That is so like you, always imagining that you can charm your way out of any trouble you find yourself in. Not this time.~ + t1eb10.0b1 
++ ~I *do* forgive you. I understand completely why you were gone so long. It's just that, like it or not, feelings change.~ + t1eb10.0b1 
END 

IF ~~ t1eb10.0b1 
SAY ~So... what now?~ 
++ ~Let's take a step back. I'd like our relationship to be like it was before we became engaged.~ + t1eb10.0b1a 
++ ~I admit, I enjoy making love to you, so I don't want that to change, but I want the freedom to explore possibilities with others.~ + t1eb10.0b1b 
++ ~We end it. I'm sorry, Gavin, I know this isn't what you want to hear, but it's the only way.~ + t1eb10.0b1c 
++ ~You take your miserable, excuse-making ass somewhere I don't have to look at it for a while. After that, I don't even want you looking in my direction.~ + t1eb10.0b1d 
++ ~Oh, who am I fooling? I could never leave you, even if I wanted to. Let's pretend this conversation never happened.~ + t1eb10.0a 
END 

IF ~~ t1eb10.0b1a 
SAY ~You mean I have to try to win you all over again?~ 
++ ~You did it once.~ + t1eb10.0b1a1 
++ ~I wouldn't have put it like that, but yes, you do.~ + t1eb10.0b1a2 
++ ~If it makes you feel any better, I already like you.~ + t1eb10.0b1a1 
++ ~Ew, no. I'm not some doll at a carnival you can win by putting three darts in a bullseye.~ + t1eb10.0b1a3 
++ ~Come on, Gavin, it will be fun! You know the best part of any romance is the courtship.~ + t1eb10.0b1a4 
END 

IF ~~ t1eb10.0b1a1 
SAY ~(sigh) I guess it could have been worse.~ 
IF ~~ THEN + t1nb00.0c 
END 

IF ~~ t1eb10.0b1a2 
SAY ~(sigh) Wonderful. Still, it could have been worse... I guess.~ 
IF ~~ THEN + t1nb00.0c 
END 

IF ~~ t1eb10.0b1a3 
SAY ~What? No! I never thought you were!~ 
= ~Listen, <CHARNAME>, I'm tired. I'm saying stupid things, and when I try to fix it, I'm just making it worse.~ 
= ~You want to go back to the way things were before we got engaged, I can do that, but I'd better stop talking now before I get myself in any more trouble.~ 
IF ~~ THEN + t1nb00.0c 
END 

IF ~~ t1eb10.0b1a4 
SAY ~Oh, that's just wonderful. I remember the stammer and the quivering gut I had the first time around. This time should be so much better, now that I know I've already failed once.~ 
= ~I'm sorry. I know I should be overjoyed you aren't just throwing me out on my ear. We can go back to the way things were before we got engaged.~ 
IF ~~ THEN + t1nb00.0c 
END 

IF ~~ t1eb10.0b1b 
SAY ~Meaning you want to sleep with me and with any other man who catches your fancy.~ 
++ ~I wasn't going to be that blunt, but yes, that's what I want.~ + t1eb10.0b1b1 
++ ~Maybe not just men, Gavin.~ + t1eb10.0b1b2 
++ ~I never said I wanted to lie with other men, Gavin. I just said I wanted the freedom to explore other possibilities.~ + t1eb10.0b1b3 
++ ~Is that so horrible?~ + t1eb10.0b1b4 
END 

IF ~~ t1eb10.0b1b1 
SAY ~It's going to mean some changes, you know. If you do this, there is no going back. I'd never be able to trust you again.~ 
= ~I'd always be on my guard, with you. If you drive me away, or even send me from your side, that would be it. Even if I decided to travel with you again later, I'd certainly never agree to lie with you again.~ 
= ~Is this what you want?~ 
++ ~Yes, Gavin, it is.~ + t1eb10.0b1b1a 
++ ~That's a little unreasonable, don't you think?~ + t1eb10.0b1b1b 
++ ~Freedom is worth a few sacrifices. I accept your terms.~ + t1eb10.0b1b1a 
++ ~Now that I think about it more, maybe it would mean giving up too much. I like the security of our relationship, and I wouldn't want that to change.~ + t1eb10.0b1b1e 
++ ~No, that isn't what I want at all. Maybe we could just go back to the way we were before we became engaged.~ + t1eb10.0b1a 
++ ~On second thought, maybe it would be better if we just ended this. Better to part on good terms than poison our friendship.~ + t1eb10.0b1b1c 
++ ~What in the nine hells is wrong with you? You come back from gods know where and then make demands of me? To hells with this relationship, and to hells with you!~ + t1eb10.0b1b1d 
END 

IF ~~ t1eb10.0b1b1b 
SAY ~No, I don't think it's unreasonable at all. What you're asking goes against my very nature. If I'm going to agree to it, there are going to be some changes.~ 
++ ~Oh, all right, I agree. If I get rid of you for any reason, I won't expect you to let me back into your life.~ + t1eb10.0b1b1a 
++ ~Freedom is worth a few sacrifices. I accept your terms.~ + t1eb10.0b1b1a 
++ ~Now that I think about it more, maybe it would mean giving up too much. I like the security of our relationship, and I wouldn't want that to change.~ + t1eb10.0b1b1e 
++ ~Maybe we could just go back to the way we were before we became engaged.~ + t1eb10.0b1a 
++ ~On second thought, maybe it would be better if we just ended this. Better to part on good terms than poison our friendship.~ + t1eb10.0b1b1c 
++ ~All right, I'm done. To hells with this relationship, and to hells with you!~ + t1eb10.0b1b1d 
END 

IF ~~ t1eb10.0b1b1c 
SAY ~Not what I wanted to hear, but you're right. It is better than destroying our friendship.~ 
IF ~~ THEN DO ~IncrementGlobal("B!GavLove","GLOBAL",-1) 
      SetGlobal("B!GavRA","GLOBAL",3) 
      SetGlobal("B!GavRomBreak","GLOBAL",1)~ + t1nb00.0c
END 

IF ~~ t1eb10.0b1b1d 
SAY ~Fine! Good night.~ 
IF ~!AreaCheck("AR0085") 
    !AreaCheck("AR1100") 
    !AreaCheck("AR1101") 
    !AreaCheck("AR1102") 
    !AreaCheck("AR1104") 
    !AreaCheck("AR1105") 
    !AreaCheck("AR1106") 
    !AreaCheck("AR1107") 
    !AreaCheck("AR1200") 
    !AreaCheck("AR1204") 
    !AreaCheck("AR1300") 
    !AreaCheck("AR1304") 
    !AreaCheck("AR1400") 
    !AreaCheck("AR1404") 
    !AreaCheck("AR1700") 
    !AreaCheck("AR1800") 
    !AreaCheck("AR1900") 
    !AreaCheck("AR1901") 
    !AreaCheck("AR1902") 
    !AreaCheck("AR1904") 
    !AreaCheck("AR1905") 
    !AreaCheck("AR2500") 
    !AreaCheck("AR2600") 
    !AreaCheck("AR2602") 
    !AreaCheck("AR2603")
    !AreaCheck("AR2700") 
    !AreaCheck("AR2800")~ THEN DO ~IncrementGlobal("B!GavLove","GLOBAL",-3) 
      SetGlobal("B!GavRA","GLOBAL",3) 
      SetGlobal("B!GavRomBreak","GLOBAL",2) 
      ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!rest1")~ EXIT 
IF ~OR(27) 
    AreaCheck("AR0085") 
    AreaCheck("AR1100") 
    AreaCheck("AR1101") 
    AreaCheck("AR1102") 
    AreaCheck("AR1104") 
    AreaCheck("AR1105") 
    AreaCheck("AR1106") 
    AreaCheck("AR1107") 
    AreaCheck("AR1200") 
    AreaCheck("AR1204") 
    AreaCheck("AR1300") 
    AreaCheck("AR1304") 
    AreaCheck("AR1400") 
    AreaCheck("AR1404") 
    AreaCheck("AR1700") 
    AreaCheck("AR1800") 
    AreaCheck("AR1900") 
    AreaCheck("AR1901") 
    AreaCheck("AR1902") 
    AreaCheck("AR1904") 
    AreaCheck("AR1905") 
    AreaCheck("AR2500") 
    AreaCheck("AR2600") 
    AreaCheck("AR2602") 
    AreaCheck("AR2603")
    AreaCheck("AR2700") 
    AreaCheck("AR2800")~ THEN DO ~IncrementGlobal("B!GavLove","GLOBAL",-3) 
      SetGlobal("B!GavRA","GLOBAL",3) 
      SetGlobal("B!GavRomBreak","GLOBAL",2) 
      ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!rest1")~ EXIT 
END 

IF ~~ t1eb10.0b1b1e 
SAY ~That's a relief. For a moment, there, I thought I'd lost you.~ 
IF ~~ THEN + t1eb10.0g 
END 

IF ~~ t1eb10.0b1b2 
SAY ~Gender isn't the issue.~ 
IF ~~ THEN + t1eb10.0b1b1 
END 

IF ~~ t1eb10.0b1b3 
SAY ~You can't say something like that and exect me to believe you'll stop at a hug or a meaningful glance.~ 
IF ~~ THEN + t1eb10.0b1b1 
END 

IF ~~ t1eb10.0b1b4 
SAY ~It goes against everything I believe a loving relationship ought to be.~ 
IF ~~ THEN + t1eb10.0b1b1 
END 

IF ~~ t1eb10.0b1c 
SAY ~Not what I wanted to hear, but I guess I couldn't really have expected you to forgive... not after all that time.~ 
IF ~~ THEN + t1nb00.0c 
END 

IF ~~ t1eb10.0b1d 
SAY ~I expected you to be angry, but this...~ 
IF ~~ THEN + t1eb10.0b1b1d 
END 

IF ~~ t1eb10.0b2 
SAY ~Are you really that selfish, <CHARNAME>? If you think I could ever abandon my child for any reason, maybe you aren't the woman I thought you were.~ 
IF ~~ THEN + t1eb10.0b2a 
END 

IF ~~ t1eb10.0b2a 
SAY ~Good night.~ 
IF ~!AreaCheck("AR0085") 
    !AreaCheck("AR1100") 
    !AreaCheck("AR1101") 
    !AreaCheck("AR1102") 
    !AreaCheck("AR1104") 
    !AreaCheck("AR1105") 
    !AreaCheck("AR1106") 
    !AreaCheck("AR1107") 
    !AreaCheck("AR1200") 
    !AreaCheck("AR1204") 
    !AreaCheck("AR1300") 
    !AreaCheck("AR1304") 
    !AreaCheck("AR1400") 
    !AreaCheck("AR1404") 
    !AreaCheck("AR1700") 
    !AreaCheck("AR1800") 
    !AreaCheck("AR1900") 
    !AreaCheck("AR1901") 
    !AreaCheck("AR1902") 
    !AreaCheck("AR1904") 
    !AreaCheck("AR1905") 
    !AreaCheck("AR2500") 
    !AreaCheck("AR2600") 
    !AreaCheck("AR2602") 
    !AreaCheck("AR2603")
    !AreaCheck("AR2700") 
    !AreaCheck("AR2800")~ THEN DO ~IncrementGlobal("B!GavLove","GLOBAL",-3) 
      SetGlobal("B!GavRA","GLOBAL",3) 
      SetGlobal("B!GavRomBreak","GLOBAL",2) 
      ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!rest1")~ EXIT 
IF ~OR(27) 
    AreaCheck("AR0085") 
    AreaCheck("AR1100") 
    AreaCheck("AR1101") 
    AreaCheck("AR1102") 
    AreaCheck("AR1104") 
    AreaCheck("AR1105") 
    AreaCheck("AR1106") 
    AreaCheck("AR1107") 
    AreaCheck("AR1200") 
    AreaCheck("AR1204") 
    AreaCheck("AR1300") 
    AreaCheck("AR1304") 
    AreaCheck("AR1400") 
    AreaCheck("AR1404") 
    AreaCheck("AR1700") 
    AreaCheck("AR1800") 
    AreaCheck("AR1900") 
    AreaCheck("AR1901") 
    AreaCheck("AR1902") 
    AreaCheck("AR1904") 
    AreaCheck("AR1905") 
    AreaCheck("AR2500") 
    AreaCheck("AR2600") 
    AreaCheck("AR2602") 
    AreaCheck("AR2603")
    AreaCheck("AR2700") 
    AreaCheck("AR2800")~ THEN DO ~IncrementGlobal("B!GavLove","GLOBAL",-3) 
      SetGlobal("B!GavRA","GLOBAL",3) 
      SetGlobal("B!GavRomBreak","GLOBAL",2) 
      ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!rest1")~ EXIT 
END 

IF ~~ t1eb10.0c 
SAY ~'All it has to offer'?~ 
IF ~~ THEN + t1eb10.0b1b 
END 

IF ~~ t1eb10.0d 
SAY ~I... I see. Well, that certainly is not something I expected to hear. Congratulations, I guess.~ 
IF ~~ THEN DO ~IncrementGlobal("B!GavLove","GLOBAL",-1) 
      SetGlobal("B!GavRA","GLOBAL",3) 
      SetGlobal("B!GavRomBreak","GLOBAL",1)~ + t1nb00.0c
END 

IF ~~ t1eb10.0e 
SAY ~I see. I was afraid you would feel that way, but I had to try.~ 
IF ~~ THEN DO ~IncrementGlobal("B!GavLove","GLOBAL",-1) 
      SetGlobal("B!GavRA","GLOBAL",3) 
      SetGlobal("B!GavRomBreak","GLOBAL",1)~ + t1nb00.0c
END 

IF ~~ t1eb10.0f 
SAY ~With you?~ 
++ ~Who else did you have in mind?~ + t1eb10.0f1 
++ ~Yes, with you!~ + t1eb10.0f2 
++ ~There's never been anyone else.~ + t1eb10.0f2 
++ ~I know, we've never done this before, but I think it's time we spent the night together as lovers.~ DO ~SetGlobal("B!GavFirstTime","LOCALS",2)~ + t1eb10.0f3 
++ ~I don't know, Gavin. I'm not sure I'm ready.~ + t1eb10.0f4 
++ ~We're waiting until we're married, remember?~ DO ~SetGlobal("B!GavFirstTime","LOCALS",1)~ + t1eb10.0f5 
END 

IF ~~ t1eb10.0f1 
SAY ~No one but you, now and always.~ 
IF ~~ THEN + t1eb10.0f2 
END 

IF ~~ t1eb10.0f2 
SAY ~(Gavin folds you in his arms and eases you onto the bedroll. Tender kisses become more urgent, and the night sounds fade away.)~ 
IF ~!AreaCheck("AR0085") 
    !AreaCheck("AR1100") 
    !AreaCheck("AR1101") 
    !AreaCheck("AR1102") 
    !AreaCheck("AR1104") 
    !AreaCheck("AR1105") 
    !AreaCheck("AR1106") 
    !AreaCheck("AR1107") 
    !AreaCheck("AR1200") 
    !AreaCheck("AR1204") 
    !AreaCheck("AR1300") 
    !AreaCheck("AR1304") 
    !AreaCheck("AR1400") 
    !AreaCheck("AR1404") 
    !AreaCheck("AR1700") 
    !AreaCheck("AR1800") 
    !AreaCheck("AR1900") 
    !AreaCheck("AR1901") 
    !AreaCheck("AR1902") 
    !AreaCheck("AR1904") 
    !AreaCheck("AR1905") 
    !AreaCheck("AR2500") 
    !AreaCheck("AR2600") 
    !AreaCheck("AR2602") 
    !AreaCheck("AR2603")
    !AreaCheck("AR2700") 
    !AreaCheck("AR2800")~ THEN DO ~SetGlobal("B!GavSex","GLOBAL",1) 
      IncrementGlobal("B!GavLove","GLOBAL",19) 
      SetGlobal("B!GavSerious","GLOBAL",3) 
      SetGlobal("B!GavRA","GLOBAL",2) 
      ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!rest1")~ EXIT 
IF ~OR(27) 
    AreaCheck("AR0085") 
    AreaCheck("AR1100") 
    AreaCheck("AR1101") 
    AreaCheck("AR1102") 
    AreaCheck("AR1104") 
    AreaCheck("AR1105") 
    AreaCheck("AR1106") 
    AreaCheck("AR1107") 
    AreaCheck("AR1200") 
    AreaCheck("AR1204") 
    AreaCheck("AR1300") 
    AreaCheck("AR1304") 
    AreaCheck("AR1400") 
    AreaCheck("AR1404") 
    AreaCheck("AR1700") 
    AreaCheck("AR1800") 
    AreaCheck("AR1900") 
    AreaCheck("AR1901") 
    AreaCheck("AR1902") 
    AreaCheck("AR1904") 
    AreaCheck("AR1905") 
    AreaCheck("AR2500") 
    AreaCheck("AR2600") 
    AreaCheck("AR2602") 
    AreaCheck("AR2603")
    AreaCheck("AR2700") 
    AreaCheck("AR2800")~ THEN DO ~SetGlobal("B!GavSex","GLOBAL",1) 
      IncrementGlobal("B!GavLove","GLOBAL",19) 
      SetGlobal("B!GavSerious","GLOBAL",3) 
      SetGlobal("B!GavRA","GLOBAL",2) 
      ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!rest2")~ EXIT 
END  
      
IF ~~ t1eb10.0f3 
SAY ~Yes, love, I think it is.~
IF ~~ THEN + t1eb10.0f2 
END 

IF ~~ t1eb10.0f4 
SAY ~Then we'll wait until you are. It's more than enough to have you here beside me again.~ 
IF ~~ THEN + t1eb10.0f4a 
END 

IF ~~ t1eb10.0f4a 
SAY ~Good night, love. I'll see you in the morning.~ 
IF ~!AreaCheck("AR0085") 
    !AreaCheck("AR1100") 
    !AreaCheck("AR1101") 
    !AreaCheck("AR1102") 
    !AreaCheck("AR1104") 
    !AreaCheck("AR1105") 
    !AreaCheck("AR1106") 
    !AreaCheck("AR1107") 
    !AreaCheck("AR1200") 
    !AreaCheck("AR1204") 
    !AreaCheck("AR1300") 
    !AreaCheck("AR1304") 
    !AreaCheck("AR1400") 
    !AreaCheck("AR1404") 
    !AreaCheck("AR1700") 
    !AreaCheck("AR1800") 
    !AreaCheck("AR1900") 
    !AreaCheck("AR1901") 
    !AreaCheck("AR1902") 
    !AreaCheck("AR1904") 
    !AreaCheck("AR1905") 
    !AreaCheck("AR2500") 
    !AreaCheck("AR2600") 
    !AreaCheck("AR2602") 
    !AreaCheck("AR2603")
    !AreaCheck("AR2700") 
    !AreaCheck("AR2800")~ THEN DO ~IncrementGlobal("B!GavLove","GLOBAL",18) 
      SetGlobal("B!GavSerious","GLOBAL",3) 
      SetGlobal("B!GavRA","GLOBAL",2) 
      ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!rest1")~ EXIT 
IF ~OR(27) 
    AreaCheck("AR0085") 
    AreaCheck("AR1100") 
    AreaCheck("AR1101") 
    AreaCheck("AR1102") 
    AreaCheck("AR1104") 
    AreaCheck("AR1105") 
    AreaCheck("AR1106") 
    AreaCheck("AR1107") 
    AreaCheck("AR1200") 
    AreaCheck("AR1204") 
    AreaCheck("AR1300") 
    AreaCheck("AR1304") 
    AreaCheck("AR1400") 
    AreaCheck("AR1404") 
    AreaCheck("AR1700") 
    AreaCheck("AR1800") 
    AreaCheck("AR1900") 
    AreaCheck("AR1901") 
    AreaCheck("AR1902") 
    AreaCheck("AR1904") 
    AreaCheck("AR1905") 
    AreaCheck("AR2500") 
    AreaCheck("AR2600") 
    AreaCheck("AR2602") 
    AreaCheck("AR2603")
    AreaCheck("AR2700") 
    AreaCheck("AR2800")~ THEN DO ~IncrementGlobal("B!GavLove","GLOBAL",18) 
      SetGlobal("B!GavSerious","GLOBAL",3) 
      SetGlobal("B!GavRA","GLOBAL",2) 
      ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!rest2")~ EXIT 
END  

IF ~~ t1eb10.0f5 
SAY ~I remember, and I can wait. It's more than enough to be by your side once more.~ 
IF ~~ THEN + t1eb10.0f4a 
END 

IF ~~ t1eb10.0g 
SAY ~Well, love, the time has come for bed, and only one question remains.~ 
= ~Where do I sleep?~ 
++ ~With me, silly!~ + t1eb10.0f2 
++ ~We sleep together. There's never been anyone else.~ + t1eb10.0f2 
++ ~Well, I know, we've never done this before, but I think it's time we spent the night together as lovers.~ DO ~SetGlobal("B!GavFirstTime","LOCALS",2)~ + t1eb10.0f3 
++ ~I don't know, Gavin. I'm not sure I'm ready to sleep with you.~ + t1eb10.0f4 
++ ~You've always slept alone. We're waiting until we're married, remember?~ DO ~SetGlobal("B!GavFirstTime","LOCALS",1)~ + t1eb10.0f5 
END 

/* Engaged, complicated */ 
/* 
IF ~~ t1eb40.0 
SAY ~Yes, I suppose we must, but now, it's time for bed. How do we do this?~ 
++ ~You go to your bedroll, I go to mine. I'm in no mood for a romp tonight.~ + t1eb40.0a 
++ ~That depends. What do you want to do?~ + t1eb40.0b 
++ ~We have done this before, Gavin. I'm sure you remember how.~ + t1eb40.0c 
++ ~You go to bed, if you want. I'm not tired yet.~ + t1nb00.0c
++ ~We get in bed, you exert yourself for a while, and then fall asleep drooling on my hair.~ + t1eb40.0c 
+ ~!AreaType(FOREST)~ + ~I go find myself some amiable company.~ + t1eb40.0d 
END 

IF ~~ t1eb40.0a 
SAY ~Neither am I.~ 
IF ~~ THEN + t1nb00.0c 
END 

IF ~~ t1eb40.0b 
SAY ~Go back to a time when you were content with me alone, but that isn't possible. ~ 
++ ~If you're trying to make me feel guilty, it isn't going to work.~ + t1eb40.0b1 
++ ~I know you don't like it, but will you put up with it for my sake?~ + t1eb40.0b2 
++ ~Gavin, we already talked about this.~ + t1eb40.0b1 
++ ~Let's just go to bed.~ + t1eb40.0b3 
END 

IF ~~ t1eb40.0b1 
SAY ~No, I know what's done is done. And it's time for bed.~ 
IF ~~ THEN + t1eb40.0b3 
END 

IF ~~ t1eb40.0b2 
SAY ~Yes, I've said I can bear it. But it's time for bed.~ 
IF ~~ THEN + t1eb40.0b3 
END 

IF ~~ t1eb40.0b3 
SAY ~The question is whose?~ 
++ ~I'm tired, Gavin. I'm not in the mood for much, tonight.~ + t1eb40.0a 
++ ~I was hoping we could have a little fun before we turn in.~ + t1eb40.0c 
++ ~You go to bed, if you want. I'm not tired yet.~ + t1nb00.0c
++ ~Get in bed, Gavin. It's going to be some time before I let you fall asleep.~ + t1eb40.0c 
+ ~!AreaType(FOREST)~ + ~You can go to bed if you want, but I'm in the mood for a conquest.~ + t1eb40.0d 
END 

IF ~~ t1eb40.0c 
SAY ~Ah.~ 
= ~(Gavin hesitates only a moment before drawing your face close to his. For a moment, he looks torn between regret and desire, then his embrace tightens and his lips find yours.)~ 
= ~(He kisses you ardently, throwing himself into the moment with abandon. His hands pull you closer against his body and you feel his passion rise. Not long after, time loses all meaning and the night's sounds are swept away.)~ 
= ~(The last thing you notice before sleep claims you is Gavin getting up from your bedroll and walking away.)~ 
IF ~!AreaType(FOREST)~ THEN DO ~SetGlobal("B!GavSex","GLOBAL",1) 
      ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!rest1")~ EXIT 
IF ~AreaType(FOREST)~ THEN DO ~SetGlobal("B!GavSex","GLOBAL",1) 
      ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!rest2")~ EXIT 
END  
    
IF ~~ t1eb40.0d 
SAY ~Alright, I agreed to be a fool for your sake, but that's going too far. This is hard enough to take without you provoking me.~ 
= ~Use me if you must, but don't flaunt your... 'freedom' in front of me, I beg you.~ 
= ~If you'll excuse me, I'm going to bed now... alone.~ 
IF ~!AreaType(FOREST)~ THEN DO ~IncrementGlobal("B!GavLove","GLOBAL",-1) 
      ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!rest1")~ EXIT 
IF ~AreaType(FOREST)~ THEN DO ~IncrementGlobal("B!GavLove","GLOBAL",-1) 
      ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!rest2")~ EXIT 
END  
*/

/* Broken engagement, now dating */ 

IF ~~ t1bb10.0 
SAY ~Aye, one day at a time, but we've both been through much since the last time we... traveled together. It changes a person.~ 
++ ~That it does, and it's odd how you sometimes only appreciate what you've lost after it's gone.~ + t1bb10.0a 
++ ~If you're trying to tell me that you want to be with me again, you can forget it.~ + t1bb10.0a3 
++ ~I'm looking at some things in a whole new light, that's for sure.~ + t1bb10.0a 
++ ~I know. Sometimes, I miss what we used to share.~ + t1bb10.0a 
++ ~Some things never change. I don't regret any of the decisions I made.~ + t1bb10.0a3 
++ ~I've learned to appreciate my freedom more.~ + t1bb10.0d 
++ ~I haven't changed a bit.~ + t1bb10.0a3 
END 

IF ~~ t1bb10.0a 
SAY ~I've been thinking along those lines, too. Do you think that we might want to give things another try? Together, that is?~ 
++ ~Are you going to propose to me again?~ + t1bb10.0a1 
++ ~Can we really do that? Go back to the way things were between us?~ + t1bb10.0a1 
++ ~I don't want to rush it. I've only recently started thinking of you as anything other than a nuisance. Can we take it slow?~ + t1bb10.0a2 
++ ~We haven't been together in quite a while, Gavin. I'd rather not get too close too fast and wind up smothering each other.~ + t1bb10.0a2 
++ ~I'm sorry, Gavin. It's true that I've learned to appreciate affection more, but it's because there's someone else.~ + t1bb10.0a3 
++ ~I can't, Gavin. I don't want to hurt you again.~ + t1bb10.0a3 
++ ~Oh, any love we may have shared is long since over, but I do miss the passion. I would definitely bed you again.~ + t1bb10.0a4 
END 

IF ~~ t1bb10.0a1 
SAY ~Someday, I hope, but it's going to take time to heal the old wounds.~ 
IF ~~ THEN + t1bb10.0a5 
END 

IF ~~ t1bb10.0a2 
SAY ~I feel the same way.~ 
IF ~~ THEN + t1bb10.0a5 
END 

IF ~~ t1bb10.0a3 
SAY ~I see.~ 
IF ~~ THEN DO ~IncrementGlobal("B!GavLove","GLOBAL",-1) 
      SetGlobal("B!GavRA","GLOBAL",3) 
      SetGlobal("B!GavRomBreak","GLOBAL",1)~ + t1nb00.0c 
END 

IF ~~ t1bb10.0a4 
SAY ~(chokes) Did I just hear what I thought I heard?~ 
= ~Are you actually saying that you would consider renewing our engagement just so I would lie with you again?~ 
++ ~Get over yourself, Gavin. There are plenty of men who can do what you did, only better. I just don't have any at hand right now.~ + t1bb10.0a4a 
++ ~I'm considering it, yes.~ + t1bb10.0a4b 
++ ~No, Gavin. It's over, and I know it.~ + t1bb10.0a3 
++ ~Not really. I value my independence too much for that. If only it were possible to have you *and* see what else life has to offer.~ + t1bb10.0a4c 
++ ~No, there are other reasons, too. But making love to you was always special.~ + t1bb10.0a4b 
++ ~I wouldn't let you near me with someone else's pike.~ + t1bb10.0a4a 
++ ~I miss the passion, Gavin. I don't want to be tied down now any more than I did then, but yes, I would like to lie with you again.~ +t1bb10.0a4c 
END 

IF ~~ t1bb10.0a4a 
SAY ~That's heartless, <CHARNAME>. Whatever else might have happened, you certainly are not the woman I remember.~ 
IF ~~ THEN DO ~IncrementGlobal("B!GavLove","GLOBAL",-3) 
      SetGlobal("B!GavRA","GLOBAL",3) 
      SetGlobal("B!GavRomBreak","GLOBAL",2)~ + t1nb00.0c 
END 

IF ~~ t1bb10.0a4b 
SAY ~I don't know if it's wise to rush back into a commitment right away, but maybe...~ 
IF ~~ THEN + t1bb10.0a5 
END 

IF ~~ t1bb10.0a4c 
SAY ~By that, you mean that you want to be able to sleep with me or any other man you choose?~ 
++ ~I wasn't going to be that blunt, but yes, that's what I want.~ +t1bb10.0a4c1
++ ~Maybe not just men, Gavin.~ +t1bb10.0a4c2
++ ~I never said I wanted to lie with other men, Gavin. I just said I wanted the freedom to explore other possibilities.~ +t1bb10.0a4c3
++ ~Is that so horrible?~ + t1bb10.0a4c4 
END 

IF ~~t1bb10.0a4c1
SAY ~It's going to mean some changes, you know. If you do this, there is no going back. We aren't together now, but there was always the understanding that if we wanted to, we could renew our love. That chance would die. I'd never be able to trust you again.~ 
= ~I'd always be on my guard, with you. If you drive me away, or even send me from your side, that would be it. Even if I decided to travel with you again later, I'd certainly never agree to lie with you again.~ 
= ~Is this what you want?~ 
++ ~Yes, Gavin, it is.~ + t1eb10.0b1b1a 
++ ~That's a little unreasonable, don't you think?~ + t1eb10.0a4c1a 
++ ~Freedom is worth a few sacrifices. I accept your terms.~ + t1eb10.0b1b1a 
++ ~Now that I think about it more, maybe we could recover what we lost... all of it, even the love we shared.~ + t1bb10.0a1 
++ ~No, that isn't what I want at all. Maybe we could just go back to the way we were before we became engaged.~ + t1bb10.0a4c1b 
++ ~On second thought, maybe it would be better if we just ended this. Better to part on good terms than poison our friendship.~ + t1eb10.0b1b1c 
++ ~What in the nine hells is wrong with you? You come back from gods know where and then make demands of me? To hells with this relationship, and to hells with you!~ + t1eb10.0b1b1d 
END 

IF ~~ t1eb10.0b1b1a 
SAY ~So be it.~ 
IF ~~ THEN DO ~SetGlobal("B!GavRA","GLOBAL",4)~ + t1nb00.0c 
END 

IF ~~ t1eb10.0a4c1a 
SAY ~No, I don't think it's unreasonable at all. What you're asking goes against my very nature. If I'm going to agree to it, there are going to be some changes.~ 
++ ~Oh, all right, I agree. If I get rid of you for any reason, I won't expect you to let me back into your life.~ + t1eb10.0b1b1a 
++ ~Freedom is worth a few sacrifices. I accept your terms.~ + t1eb10.0b1b1a 
++ ~Now that I think about it more, maybe we could recover what we lost... all of it, even the love we shared.~ + t1bb10.0a1 
++ ~Maybe we could just go back to the way we were before we became engaged.~ + t1eb10.0b1a 
++ ~On second thought, maybe it would be better if we just ended this. Better to part on good terms than poison our friendship.~ + t1eb10.0b1b1c 
++ ~All right, I'm done. To hells with this relationship, and to hells with you!~ + t1eb10.0b1b1d 
END 

IF ~~ t1bb10.0a4c1b 
SAY ~You mean I have to try to win you all over again?~ 
++ ~You did it once.~ + t1bb10.0a4c1b1 
++ ~I wouldn't have put it like that, but yes, you do.~ + t1bb10.0a4c1b2 
++ ~If it makes you feel any better, I already like you.~ + t1bb10.0a4c1b1 
++ ~Ew, no. I'm not some doll at a carnival you can win by putting three darts in a bullseye.~ + t1bb10.0a4c1b3 
++ ~Come on, Gavin, it will be fun! You know the best part of any romance is the courtship.~ + t1bb10.0a4c1b4 
END 

IF ~~ t1bb10.0a4c1b1 
SAY ~(sigh) I guess it could have been worse.~ 
IF ~~ THEN DO ~SetGlobal("B!GavRA","GLOBAL",1)~ + t1nb00.0c 
END 

IF ~~ t1bb10.0a4c1b2 
SAY ~(sigh) Wonderful. Still, it could have been worse... I guess.~ 
IF ~~ THEN DO ~SetGlobal("B!GavRA","GLOBAL",1)~ + t1nb00.0c 
END 

IF ~~ t1bb10.0a4c1b3 
SAY ~What? No! I never thought you were!~ 
= ~Listen, <CHARNAME>, I'm tired. I'm saying stupid things, and when I try to fix it, I'm just making it worse.~ 
= ~You want to go back to the way things were before we got engaged, I can do that, but I'd better stop talking now before I get myself in any more trouble.~ 
IF ~~ THEN DO ~SetGlobal("B!GavRA","GLOBAL",1)~ + t1nb00.0c 
END 

IF ~~ t1bb10.0a4c1b4 
SAY ~Oh, that's just wonderful. I remember the stammer and the quivering gut I had the first time around. This time should be so much better, now that I know I've already failed once.~ 
= ~I'm sorry. I know I should be overjoyed that you're taking me back at all. We can go back to the way things were before we got engaged.~ 
IF ~~ THEN DO ~SetGlobal("B!GavRA","GLOBAL",1)~ + t1nb00.0c 
END 

IF ~~t1bb10.0a4c2
SAY ~Gender isn't the issue.~ 
IF ~~ THEN +t1bb10.0a4c1
END 

IF ~~t1bb10.0a4c3
SAY ~You can't say something like that and exect me to believe you'll stop at a hug or a meaningful glance.~ 
IF ~~ THEN +t1bb10.0a4c1
END 

IF ~~ t1bb10.0a4c4 
SAY ~It goes against everything I believe a loving relationship ought to be.~ 
IF ~~ THEN +t1bb10.0a4c1
END 

IF ~~ t1bb10.0a5 
SAY ~Maybe if we take things slow, get used to the idea of being around each other again, it will work out better this time.~ 
= ~I think it will. I hope it will. Let's sleep on it, and see what tomorrow brings.~
IF ~~ THEN + t1nb00.0c 
END 

IF ~~ t1bb10.0d 
SAY ~You were always free. I never tried to hold you back.~ 
++ ~I've learned that I can live without any man. I like it like that.~ + t1bb10.0a3 
++ ~You got jealous any time I even looked at another man. I could never live like that.~ + t1bb10.0a3 
++ ~Gavin, I loved the passion we shared. I miss it acutely, and want it back. I'm just having a hard time accepting the commitment that goes along with it.~ + t1bb10.0a4c 
++ ~Maybe it is time to give it another try. All right, you win.~ + t1bb10.0a4b 
END 

/* Engaged, dating */ 

IF ~~ t1eb10.1 
SAY ~You really are too good to be true! I'm months late, and not only do you forgive me, but you're ready to cover me with affection.~ 
= ~I am the luckiest man alive!~ 
++ ~How could I ever be angry with you, love?~ + t1eb10.1a 
++ ~I was angry, true, but I forgave you the moment I found out why you were so late.~ + t1eb10.1a 
++ ~(joking) I'll make you pay later.~ + t1eb10.1a 
++ ~Who said I've forgiven you?~ + t1eb10.1b 
++ ~I wasn't going to admit it, but I wanted one more night of lovemaking to help me decide whether or not to end it.~ + t1eb10.1b 
END 

IF ~~ t1eb10.1a 
SAY ~Oh, sweet, beloved <CHARNAME>, how I've longed to hold you again!~ 
IF ~~ THEN + t1eb10.0f2 
END 

IF ~~ t1eb10.1b 
SAY ~I... I see. I suppose on some level I knew that I might return to find that your feelings toward me had changed, but I had hoped that you would be able to forgive me.~ 
++ ~Easy, Gavin! I never said I wanted to break it off immediately. Let's just sleep on it, all right?~ + t1eb10.1b1 
++ ~Your absence strained my affection for you, yes, but I've also become aware of possibilities that I didn't even know existed before.~ + t1eb10.0b1 
++ ~It irritates me no end that you're forever putting Lanie's needs and wellbeing ahead of mine. If you hadn't been chasing her all over Faerun, we wouldn't be having this conversation now.~ + t1eb10.0b2 
++ ~I'm sorry Gavin, but you were gone for a very long time, and I did lose faith. I lost faith in you and I lost faith in us.~ + t1eb10.0b1 
++ ~I *do* forgive you. I understand completely why you were gone so long. It's just that, like it or not, feelings change.~ + t1eb10.0b1 
END 

IF ~~ t1eb10.1b1 
SAY ~Alright...~ 
= ~So where do I sleep?~ 
++ ~With me.~ + t1eb10.0f2 
++ ~Maybe it would be better if we spent the night apart, after all.~ + t1eb10.0b2 
END 

IF ~~ t1eb10.1b2 
SAY ~Goodnight, love. Lathander bless this new beginning, it needs all the help it can get.~ 
IF ~!AreaCheck("AR0085") 
    !AreaCheck("AR1100") 
    !AreaCheck("AR1101") 
    !AreaCheck("AR1102") 
    !AreaCheck("AR1104") 
    !AreaCheck("AR1105") 
    !AreaCheck("AR1106") 
    !AreaCheck("AR1107") 
    !AreaCheck("AR1200") 
    !AreaCheck("AR1204") 
    !AreaCheck("AR1300") 
    !AreaCheck("AR1304") 
    !AreaCheck("AR1400") 
    !AreaCheck("AR1404") 
    !AreaCheck("AR1700") 
    !AreaCheck("AR1800") 
    !AreaCheck("AR1900") 
    !AreaCheck("AR1901") 
    !AreaCheck("AR1902") 
    !AreaCheck("AR1904") 
    !AreaCheck("AR1905") 
    !AreaCheck("AR2500") 
    !AreaCheck("AR2600") 
    !AreaCheck("AR2602") 
    !AreaCheck("AR2603")
    !AreaCheck("AR2700") 
    !AreaCheck("AR2800")~ THEN DO ~IncrementGlobal("B!GavLove","GLOBAL",18) 
      SetGlobal("B!GavSerious","GLOBAL",3) 
      SetGlobal("B!GavRA","GLOBAL",2) 
      ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!rest1")~ EXIT 
IF ~OR(27) 
    AreaCheck("AR0085") 
    AreaCheck("AR1100") 
    AreaCheck("AR1101") 
    AreaCheck("AR1102") 
    AreaCheck("AR1104") 
    AreaCheck("AR1105") 
    AreaCheck("AR1106") 
    AreaCheck("AR1107") 
    AreaCheck("AR1200") 
    AreaCheck("AR1204") 
    AreaCheck("AR1300") 
    AreaCheck("AR1304") 
    AreaCheck("AR1400") 
    AreaCheck("AR1404") 
    AreaCheck("AR1700") 
    AreaCheck("AR1800") 
    AreaCheck("AR1900") 
    AreaCheck("AR1901") 
    AreaCheck("AR1902") 
    AreaCheck("AR1904") 
    AreaCheck("AR1905") 
    AreaCheck("AR2500") 
    AreaCheck("AR2600") 
    AreaCheck("AR2602") 
    AreaCheck("AR2603")
    AreaCheck("AR2700") 
    AreaCheck("AR2800")~ THEN DO ~IncrementGlobal("B!GavLove","GLOBAL",18) 
      SetGlobal("B!GavSerious","GLOBAL",3) 
      SetGlobal("B!GavRA","GLOBAL",2) 
      ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!rest2")~ EXIT 
END  
END 

/* Talk 2 - Why you? */

CHAIN
IF ~Global("B!GavTalk","GLOBAL",4)~ THEN ~B!GAVJ~ t2.1
~Did you ever find out why you were abducted?~ [bgav105] 
DO ~SetGlobal("B!GavTalk","GLOBAL",5) RealSetGlobalTimer("B!GavT","GLOBAL",GAV_TIME)~
END
+ ~GlobalLT("Chapter","GLOBAL",6) 
      !Global("B!GavNoBG1","GLOBAL",1)~ + ~I can only assume it's because I'm the child of Bhaal.~ DO ~SetGlobal("B!GavBhaal","GLOBAL",1)~ EXTERN ~B!GAVJ~ t2.2
+ ~GlobalLT("Chapter","GLOBAL",6) 
      Global("B!GavNoBG1","GLOBAL",1)~ + ~I can only assume it's because I'm the child of Bhaal.~ DO ~SetGlobal("B!GavBhaal","GLOBAL",1)~ EXTERN ~B!GAVJ~ t2.2a
+ ~GlobalLT("Chapter","GLOBAL",6)~ + ~Maybe he just didn't like the look of me.~ EXTERN ~B!GAVJ~ t2.3
+ ~GlobalLT("Chapter","GLOBAL",6)~ + ~No, and I'm not sure I want to know.~ EXTERN ~B!GAVJ~ t2.3
+ ~GlobalLT("Chapter","GLOBAL",6)~ + ~He said I had potential.~ EXTERN ~B!GAVJ~ t2.4
+ ~GlobalLT("Chapter","GLOBAL",6)~ + ~Why do you think?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ EXTERN ~B!GAVJ~ t2.5
+ ~!GlobalLT("Chapter","GLOBAL",6)~ + ~I found out, all right. He was trying to break me and rob me of my soul.~ EXTERN ~B!GavJ~ t2.29 
+ ~!GlobalLT("Chapter","GLOBAL",6)~ + ~Not to my satisfaction, no, but I'm on his trail. All that remains is to follow it.~ EXTERN ~B!GavJ~ t2.29 
+ ~!GlobalLT("Chapter","GLOBAL",6)~ + ~That isn't important. What is important is that I find him and take back what is mine.~ EXTERN ~B!GavJ~ t2.29 

APPEND ~B!GAVJ~

IF ~~ t2.2
SAY ~You're probably right. Do you think Irenicus will come after you again, now that you've escaped?~
+ ~!Global("B!GavRA","GLOBAL",2)~ + ~Anything is possible, I suppose.  I hadn't wanted to think about that.~ + t2.6
+ ~Global("B!GavRA","GLOBAL",2)~ + ~Anything is possible, I suppose.  I hadn't wanted to think about that.~ + t2.6a
++ ~The Cowled Wizards took him away as well... though now that I think about it, he went willingly, which was kind of odd.~ + t2.7
+ ~OR(2) Global("B!GavRA","GLOBAL",1) 
         Global("B!GavRA","GLOBAL",2)~ + ~You'll protect me if he does, won't you?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t2.11 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~You'll protect me if he does, won't you?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t2.12 
+ ~OR(2) Global("B!GavRA","GLOBAL",1) 
         Global("B!GavRA","GLOBAL",2)~ + ~If he does, I'm sure I can take him.~ + t2.13 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~If he does, I'm sure I can take him.~ + t2.14 
++ ~He captured me last time because I was unprepared. If he comes again, I'll be ready.~ + t2.8
++ ~I'm certain of it.~ + t2.9
++ ~Gavin, have some mercy. I'm lucky I escaped with my life. I don't want to talk about it any more.~ + bexit
END

IF ~~ t2.2a
SAY ~You are?! I mean... I'm sorry. That did sound a bit panicked. I don't know what I was expecting you to say, but it wasn't that.~
++ ~My brother Sarevok got the glowing eyes. I just got a long line of people who want to kill me.~ + t2.9
++ ~I suppose this is going to provoke a long discussion about what I am doing to overcome the evil in my blood.~ + t2.10
++ ~It isn't something I tell many people.~ + t2.26 
++ ~Does this change anything?~ + t2.27 
++ ~It's true, Gavin, you're in the presence of a demigod. Aren't you awed?~ + t2.28 
END 

IF ~~ t2.3
SAY ~You sound so unconcerned about it. In your place, I'd be in fear for my life.~
+ ~!Global("B!GavRA","GLOBAL",2)~ + ~I haven't wanted to think about it.~ + t2.6
+ ~Global("B!GavRA","GLOBAL",2)~ + ~I haven't wanted to think about it.~ + t2.6a
++ ~The Cowled Wizards took the mage who did it... though he went willingly, which was kind of odd.~ + t2.7
+ ~OR(2) Global("B!GavRA","GLOBAL",1) 
         Global("B!GavRA","GLOBAL",2)~ + ~Why should I worry when I have you to protect me?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t2.11 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~Why should I worry when I have you to protect me?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t2.12 
+ ~OR(2) Global("B!GavRA","GLOBAL",1) 
         Global("B!GavRA","GLOBAL",2)~ + ~I'm not worried because I know I can take care of myself.~ + t2.13 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~I'm not worried because I know I can take care of myself.~ + t2.14 
++ ~I was taken captive last time because I was unprepared. Now, I'm ready.~ + t2.8
++ ~Gavin, have some mercy. I'm lucky I escaped with my life. I don't want to talk about it any more.~ + bexit
END

IF ~~ t2.4
SAY ~You do, I'm sure, but the question is, what kind of potential?~
+ ~Global("B!GavSex","GLOBAL",1) 
      !Global("B!GavRA","GLOBAL",3) 
      !Global("B!GavRA","GLOBAL",1)~ + ~I have talents of all kinds, Gavin. Maybe we can try some of them out later.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t2.15 
+ ~Global("B!GavSex","GLOBAL",1) 
      OR(2) Global("B!GavRA","GLOBAL",3)
            Global("B!GavRA","GLOBAL",1)~ + ~I have talents of all kinds, Gavin. I'm sure you remember what some of them are.~ + t2.15a 
+ ~!Global("B!GavSex","GLOBAL",1) 
      !Global("B!GavRA","GLOBAL",3) 
      !Global("B!GavRA","GLOBAL",0)~ + ~I have talents of all kinds, Gavin. Maybe someday I'll show you some of my more special ones.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t2.15a 
+ ~!Global("B!GavSex","GLOBAL",1) 
      OR(2) Global("B!GavRA","GLOBAL",3) 
            Global("B!GavRA","GLOBAL",0)~ + ~I have many talents. For all I know, he's talking about my prowess in bed.~ + t2.15b 
+ ~Global("B!GavNoBG1","GLOBAL",1)~ + ~I'm the child of Bhaal, Gavin. That probably has something to do with it.~ + t2.2
+ ~!Global("B!GavNoBG1","GLOBAL",1)~ + ~I'm the child of Bhaal, Gavin. That probably has something to do with it.~ + t2.2a
++ ~I don't know, and I'm not sure I want to find out.~ + t2.16 
+ ~Global("B!GavNoBG1","GLOBAL",1)~ + ~I only wish I knew. The things I could do with that kind of power!~ + t2.17 
+ ~!Global("B!GavNoBG1","GLOBAL",1)~ + ~I only wish I knew. The things I could do with that kind of power!~ + t2.17a 
++ ~Gavin, have some mercy. I'm lucky I escaped with my life. I don't want to talk about it any more.~ + bexit
END 

IF ~~ bexit 
SAY ~Of course you don't. Sorry I reminded you.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t2.5
SAY ~I don't know what to think.~ 
+ ~OR(2) Global("B!GavRA","GLOBAL",3) 
         Global("B!GavRA","GLOBAL",0)~ + ~Well, that comes as no surprise.~ + t2.18 
+ ~OR(2) Global("B!GavRA","GLOBAL",1) 
         Global("B!GavRA","GLOBAL",2)~ + ~Well, that comes as no surprise.~ + t2.18a 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~Well, that comes as no surprise.~ + t2.18b 
++ ~That makes two of us. I don't know, and I'm not sure I want to find out.~ + t2.16 
+ ~Global("B!GavNoBG1","GLOBAL",1)~ + ~It probably has something to do with my ancestry. I'm the child of Bhaal.~ EXTERN ~B!GAVJ~ t2.2
+ ~!Global("B!GavNoBG1","GLOBAL",1)~ + ~It probably has something to do with my ancestry. I'm the child of Bhaal.~ EXTERN ~B!GAVJ~ t2.2a
+ ~OR(2) Global("B!GavRA","GLOBAL",3) 
         Global("B!GavRA","GLOBAL",0)~ + ~I don't know. Maybe he just decided that he liked my company.~ + t2.19 
+ ~Global("B!GavRA","GLOBAL",1)~ + ~I don't know. Maybe he just decided that he liked my company.~ + t2.19a 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~I don't know. Maybe he just decided that he liked my company.~ + t2.19b 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~I don't know. Maybe he just decided that he liked my company.~ + t2.19c 
END

IF ~~ t2.6 /* !RA2 */
SAY ~I imagine not, but that isn't going to make your troubles go away.~
+ ~Global("B!GavNoBG1","GLOBAL",1)~ + ~I'll manage. I always do.~ + t2.20 
+ ~!Global("B!GavNoBG1","GLOBAL",1)~ + ~I'll manage. I always do.~ + t2.20a 
++ ~It's probably too much to hope that my problems will go away on their own.~ + t2.21 
+ ~Global("B!GavNoBG1","GLOBAL",1)~ + ~I've always been spontaneous. I'll think of something.~ + t2.20 
+ ~!Global("B!GavNoBG1","GLOBAL",1)~ + ~I've always been spontaneous. I'll think of something.~ + t2.20a 
+ ~Global("B!GavNoBG1","GLOBAL",1)~ + ~You sound like Gorion, my old mentor, warming up for another lecture.~ + t2.22 
+ ~!Global("B!GavNoBG1","GLOBAL",1)~ + ~You sound like Gorion, my old mentor, warming up for another lecture.~ + t2.22a 
++ ~So what do you advise?~ + t2.23 
END

IF ~~ t2.6a /* RA2 */ 
SAY ~No, love, after everything you've been through, I imagine this is the last thing you want to think about, but avoiding it isn't going to make your problems go away.~
+ ~!Global("B!GavNoBG1","GLOBAL",1)~ + ~I'll manage. I always do.~ + t2.20b 
++ ~It's probably too much to hope that my problems will go away on their own.~ + t2.21 
+ ~!Global("B!GavNoBG1","GLOBAL",1)~ + ~I've always been spontaneous. I'll think of something.~ + t2.20b 
+ ~!Global("B!GavNoBG1","GLOBAL",1)~ + ~You sound like Gorion, my old mentor, warming up for another lecture.~ + t2.22b 
++ ~So what do you advise?~ + t2.23 
END

IF ~~ t2.7
SAY ~That is odd. What do you make of it?~
++ ~Maybe he thought it would be easier to escape when less people were watching him. It did happen right in the middle of Waukeen's Promenade.~ + t2.23 
++ ~He must have known he was beaten. He was casting spell after spell. He may have run out.~ + t2.24 
+ ~!Global("B!GavRA","GLOBAL",2)~ + ~I try not to think too hard about things like that.~ + t2.6 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~I try not to think too hard about things like that.~ + t2.6a 
++ ~It's worrying, but I don't know what to make of it.~ + t2.25 
END

IF ~~ t2.8
SAY ~Good. That's probably the best you can do, under the circumstances.~
IF ~~ THEN EXIT
END

IF ~~ t2.9
SAY ~Heh. Glowing eyes wouldn't be so bad, compared to having people that want to kill you. But that brings us back to our original question. What do you plan to do about it?~
+ ~!Global("B!GavRA","GLOBAL",2)~ + ~I haven't wanted to think about it.~ + t2.6
+ ~Global("B!GavRA","GLOBAL",2)~ + ~I haven't wanted to think about it.~ + t2.6a
+ ~OR(2) Global("B!GavRA","GLOBAL",1) 
         Global("B!GavRA","GLOBAL",2)~ + ~Why should I worry when I have you to protect me?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t2.11 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~Why should I worry when I have you to protect me?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t2.12 
+ ~OR(2) Global("B!GavRA","GLOBAL",1) 
         Global("B!GavRA","GLOBAL",2)~ + ~I'm not worried because I know I can take care of myself.~ + t2.13 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~I'm not worried because I know I can take care of myself.~ + t2.14 
++ ~I was taken captive last time because I was unprepared. Now, I'm ready.~ + t2.8
++ ~Gavin, have some mercy. I'm lucky I escaped with my life. I don't want to talk about it any more.~ + bexit
END

IF ~~ t2.10
SAY ~I am concerned, I admit, but at the moment, I was thinking more of our current problem. What are you going to do if the mage who captured you comes looking for you?~
+ ~!Global("B!GavRA","GLOBAL",2)~ + ~I haven't wanted to think about it.~ + t2.6
+ ~Global("B!GavRA","GLOBAL",2)~ + ~I haven't wanted to think about it.~ + t2.6a
++ ~The Cowled Wizards took the mage who did it... though he went willingly, which was kind of odd.~ + t2.7
+ ~OR(2) Global("B!GavRA","GLOBAL",1) 
         Global("B!GavRA","GLOBAL",2)~ + ~Why should I worry when I have you to protect me?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t2.11 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~Why should I worry when I have you to protect me?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t2.12 
+ ~OR(2) Global("B!GavRA","GLOBAL",1) 
         Global("B!GavRA","GLOBAL",2)~ + ~I'm not worried because I know I can take care of myself.~ + t2.13 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~I'm not worried because I know I can take care of myself.~ + t2.14 
++ ~I was taken captive last time because I was unprepared. Now, I'm ready.~ + t2.8
++ ~Gavin, have some mercy. I'm lucky I escaped with my life. I don't want to talk about it any more.~ + bexit
END

IF ~~ t2.11
SAY ~I'll protect you any way I can, but I'm only human. The world is full of things that are more powerful than I am... even with the blessings the Morninglord bestowed on me.~
IF ~~ THEN + t2.23 
END

IF ~~ t2.12
SAY ~Ah, there is something else I'm good for, it seems.~
IF ~~ THEN + t2.11 
END

IF ~~ t2.13
SAY ~I know you're competent, and powerful, too, but there are things in this world stronger than the both of us.~
IF ~~ THEN + t2.23 
END

IF ~~ t2.14
SAY ~You always do, but still...~
IF ~~ THEN + t2.13 
END

IF ~~ t2.15
SAY ~Well, there goes my concentration while I think about that for a while! But somehow I doubt your former captor will be interested in the talents that's making it so difficult for me to think clearly right now.~
IF ~~ THEN + t2.23 
END

IF ~~ t2.15a
SAY ~(gulp) There goes my concentration for the next little while. But somehow I doubt your former captor will be distracted so easily.~
IF ~~ THEN + t2.23 
END

IF ~~ t2.15b
SAY ~Ahem. Well, there's a place my brain did not need to go.~
IF ~~ THEN + t2.23 
END

IF ~~ t2.16
SAY ~You might not have a choice.~
IF ~~ THEN + t2.23 
END

IF ~~ t2.17 /* no BG1 */ 
SAY ~Power corrupts. Absolute power corrupts absolutely. Be careful what you wish for. Those sayings might be trite, but that does not make them untrue.~
IF ~~ THEN + t2.23 
END

IF ~~ t2.17a /* BG1 */ 
SAY ~There's a chilling thought. With your unique heritage, there's no telling what you could do with that kind of power.~
IF ~~ THEN + t2.17 
END

IF ~~ t2.18 /* RA0, RA3 */ 
SAY ~Ah, that would be the famous <CHARNAME> wit.~
IF ~~ THEN + t2.23 
END

IF ~~ t2.18a /* RA1, RA2 */ 
SAY ~Heh. Clever.~
IF ~~ THEN + t2.23 
END

IF ~~ t2.18b /* RA4 */ 
SAY ~Heh. Clever and biting. Should I be amused?~
IF ~~ THEN + t2.23 
END

IF ~~ t2.19 /* liked company RA0, RA3 */ 
SAY ~Anything is possible, I suppose.~
IF ~~ THEN + t2.19d 
END

IF ~~ t2.19a /* liked company RA1 */ 
SAY ~I can't say I blame him.~
IF ~~ THEN + t2.19d 
END

IF ~~ t2.19b /* liked company RA2 */ 
SAY ~If so, he has good taste, my dear.~
IF ~~ THEN + t2.19d 
END

IF ~~ t2.19c /* liked company RA4 */ 
SAY ~Yes, because the whole world desires you... and they probably do.~
IF ~~ THEN + t2.19d 
END 

IF ~~ t2.19d 
SAY ~It still sounds odd, though. He could have just invited you to an evening party.~ 
IF ~~ THEN + t2.23 
END 

IF ~~ t2.20 /* think of something NoBG1=1, !RA2 */ 
SAY ~That's good to know. But it makes sense. You've made it this far.~
IF ~~ THEN + t2.23 
END

IF ~~ t2.20a /* think of something NoBG1=0, !RA2 */ 
SAY ~You always were resourceful.~
IF ~~ THEN + t2.23 
END

IF ~~ t2.20b /* think of something RA2 */ 
SAY ~You always were resourceful. That's just one of the things I love about you.~
IF ~~ THEN + t2.23 
END

IF ~~ t2.21 /* problems go away on their own */ 
SAY ~Probably. They seldom do.~
IF ~~ THEN + t2.23 
END

IF ~~ t2.22 /* sound like Gorion NoBG1=1, !RA2 */ 
SAY ~Ah, so that was his name.~
IF ~~ THEN + t2.22g 
END

IF ~~ t2.22a /* sound like Gorion NoBG1=0, !RA2 */ 
SAY ~You've mentioned him before.~
IF ~~ THEN + t2.22g 
END

IF ~~ t2.22b /* sound like Gorion RA2 */ 
SAY ~Whatever his faults may have been, he did a fine job raising you.~ 
IF ~~ THEN + t2.22g 
END 

IF ~~ t2.22c 
SAY ~Fathers do that, I'm told. At least mine did. Still, I'm not your father, and I take the hint.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t2.22d 
SAY ~If he did, it was probably because he cared about you, but I can understand how you would resent the intrusion. And I take the hint.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t2.22e 
SAY ~Heh. I'm sure he thought he was doing his best to raise you properly. Still, I am not your father, and I take the hint.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t2.22f 
SAY ~In that case, thank you.~ 
IF ~~ THEN + t2.23  
END 

IF ~~ t2.22g 
SAY ~Nevertheless, I take it that is not a favorable comparison?~ 
++ ~He was a good man, but he did tend to preach a bit.~ + t2.22c 
++ ~He was a jailor as much as a foster father, always prying into my affairs.~ + t2.22d 
++ ~He was a tedious old windbag.~ + t2.22e 
++ ~It's more flattering than you think. He was a kind mentor, and I cared for him deeply.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t2.22f 
END 

IF ~~ t2.23
SAY ~Whatever else he may be, your captor was powerful. You're no child, but you might not be a match for him yet.~
IF ~OR(2) Global("B!GavRA","GLOBAL",0) 
      Global("B!GavRA","GLOBAL",3)~ THEN + t2.23c 
IF ~OR(2) Global("B!GavRA","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",4)~ THEN + t2.23a 
IF ~Global("B!GavRA","GLOBAL",2)~ THEN + t2.23b 
END 

IF ~~ t2.23a 
SAY ~I'll stand by you against whatever peril comes, but even together, I don't know if we're strong enough.~ 
IF ~~ THEN + t2.23c 
END 

IF ~~ t2.23b 
SAY ~Even if I didn't love you so absolutely, I'd stand by you against whatever peril comes, but even together, I don't know if we're strong enough.~ 
IF ~~ THEN + t2.23c 
END 

IF ~~ t2.23c 
SAY ~The best advice I can give you is to do everything you can to make sure you're ready if your paths cross again. Study, train, whatever it takes. I understand your need is grave, but don't force an encounter until you're confident that you'll succeed.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t2.24
SAY ~It's possible. Even the most powerful spellcasters exhaust their reserves, eventually. But he'll have rested since then, and the next time you face him, he might be at full strength again. Have you given much thought to what you'll do if that happens?~
+ ~!Global("B!GavRA","GLOBAL",2)~ + ~I haven't wanted to think about it.~ + t2.6
+ ~Global("B!GavRA","GLOBAL",2)~ + ~I haven't wanted to think about it.~ + t2.6a
+ ~OR(2) Global("B!GavRA","GLOBAL",1) 
         Global("B!GavRA","GLOBAL",2)~ + ~Why should I worry when I have you to protect me?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t2.11 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~Why should I worry when I have you to protect me?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t2.12 
+ ~OR(2) Global("B!GavRA","GLOBAL",1) 
         Global("B!GavRA","GLOBAL",2)~ + ~I'm not worried because I know I can take care of myself.~ + t2.13 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~I'm not worried because I know I can take care of myself.~ + t2.14 
++ ~I was taken captive last time because I was unprepared. Now, I'm ready.~ + t2.8
++ ~Gavin, have some mercy. I'm lucky I escaped with my life. I don't want to talk about it any more.~ + bexit
END

IF ~~ t2.25
SAY ~Neither do I. I hate to bring it up, but have you given much thought to what you'll do if your paths cross again?~
+ ~!Global("B!GavRA","GLOBAL",2)~ + ~I haven't wanted to think about it.~ + t2.6
+ ~Global("B!GavRA","GLOBAL",2)~ + ~I haven't wanted to think about it.~ + t2.6a
+ ~OR(2) Global("B!GavRA","GLOBAL",1) 
         Global("B!GavRA","GLOBAL",2)~ + ~Why should I worry when I have you to protect me?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t2.11 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~Why should I worry when I have you to protect me?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t2.12 
+ ~OR(2) Global("B!GavRA","GLOBAL",1) 
         Global("B!GavRA","GLOBAL",2)~ + ~I'm not worried because I know I can take care of myself.~ + t2.13 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~I'm not worried because I know I can take care of myself.~ + t2.14 
++ ~I was taken captive last time because I was unprepared. Now, I'm ready.~ + t2.8
++ ~Gavin, have some mercy. I'm lucky I escaped with my life. I don't want to talk about it any more.~ + bexit
END

IF ~~ t2.26
SAY ~I should imagine not. Thank you for trusting me enough to tell me.~
IF ~~ THEN DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t2.28 
END

IF ~~ t2.27
SAY ~No. I'd be lying if I said your revelation didn't concern me, but you didn't incinerate me on sight, so you must have some control.~
IF ~~ THEN + t2.28 
END

IF ~~ t2.28
SAY ~My immediate concern is what you'll do if your paths cross again. Have you given it much thought?~
+ ~!Global("B!GavRA","GLOBAL",2)~ + ~I haven't wanted to think about it.~ + t2.6
+ ~Global("B!GavRA","GLOBAL",2)~ + ~I haven't wanted to think about it.~ + t2.6a
+ ~OR(2) Global("B!GavRA","GLOBAL",1) 
         Global("B!GavRA","GLOBAL",2)~ + ~Why should I worry when I have you to protect me?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t2.11 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~Why should I worry when I have you to protect me?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t2.12 
+ ~OR(2) Global("B!GavRA","GLOBAL",1) 
         Global("B!GavRA","GLOBAL",2)~ + ~I'm not worried because I know I can take care of myself.~ + t2.13 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~I'm not worried because I know I can take care of myself.~ + t2.14 
++ ~I was taken captive last time because I was unprepared. Now, I'm ready.~ + t2.8
++ ~Gavin, have some mercy. I'm lucky I escaped with my life. I don't want to talk about it any more.~ + bexit
END 

IF ~~ t2.29 
SAY ~We'll see to it at once.~ 
IF ~~ THEN EXIT 
END 
END 

/* Talk 3 "I'm letting the big man down," aka "prejudice everywhere!" */ 

CHAIN
IF ~Global("B!GavTalk","GLOBAL",6)~ THEN ~B!GAVJ~ t3.1
~When I left the Sword Coast behind me, I had hoped that I traveled to a more enlightened place, but instead, I find just as much prejudice here as I did in Baldur's Gate... or even more.~ [bgav106] 
DO ~SetGlobal("B!GavTalk","GLOBAL",7) RealSetGlobalTimer("B!GavT","GLOBAL",GAV_TIME)~
END
++ ~Why would you expect such a foolish thing? People are people, no matter where they live.~ EXTERN ~B!GavJ~ t3.2 
+ ~Race(Player1,HUMAN) 
      OR(2) Global("B!GavRA","GLOBAL",1) 
          Global("B!GavRA","GLOBAL",4)~ + ~Tell me about it. I've had more stares since I arrived here than ever I got back in Baldur's Gate.~ EXTERN ~B!GavJ~ t3.3 
+ ~!Race(Player1,HUMAN) !Race(Player1,ELF) 
      OR(2) Global("B!GavRA","GLOBAL",1) 
          Global("B!GavRA","GLOBAL",4)~ + ~Tell me about it. I've had more stares since I arrived here than ever I got back in Baldur's Gate.~ EXTERN ~B!GavJ~ t3.3a 
+ ~!Race(Player1,HUMAN) Race(Player1,ELF) 
      OR(2) Global("B!GavRA","GLOBAL",1) 
          Global("B!GavRA","GLOBAL",4)~ + ~Tell me about it. I've had more stares since I arrived here than ever I got back in Baldur's Gate.~ EXTERN ~B!GavJ~ t3.3b 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~Tell me about it. I've had more stares since I arrived here than ever I got back in Baldur's Gate.~ EXTERN ~B!GavJ~ t3.3d 
+ ~OR(2) Global("B!GavRA","GLOBAL",0) 
      Global("B!GavRA","GLOBAL",3)~ + ~Tell me about it. I've had more stares since I arrived here than ever I got back in Baldur's Gate.~ EXTERN ~B!GavJ~ t3.3e 
++ ~We're here because we've got a job to do, not because we're trying to convert the populace to Lathander.~ EXTERN ~B!GavJ~ t3.4 
++ ~You've been helping me, Gavin, not spreading your faith. I'm grateful for everything you do, but we have been focused on other things.~ EXTERN ~B!GavJ~ t3.4 
++ ~It is discouraging, isn't it?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ EXTERN ~B!GavJ~ t3.5 
++ ~I think we are in a more enlightened place. It's better for each race to keep to its own kind.~ DO ~IncrementGlobal("B!GavOffend","GLOBAL",1)~ EXTERN ~B!GavJ~ t3.6 

APPEND ~B!GavJ~ 

IF ~~ t3.2 
SAY ~I know, but that doesn't excuse it.~ 
IF ~~ THEN + t3.a 
END 

IF ~~ t3.3 
SAY ~I can't say I'm surprised. There are even times I find myself staring at you, too, and I'm your companion...~ 
IF ~~ THEN + t3.3c 
END 

IF ~~ t3.3a 
SAY ~I can't say I'm surprised, and I don't think it's because you're a <PRO_RACE>. There are even times I find myself staring at you, too, and I'm your companion...~ 
IF ~~ THEN + t3.3c 
END 

IF ~~ t3.3b 
SAY ~I can't say I'm surprised, and I don't think it's because you're an elf. There are even times I find myself staring at you, too, and I'm your companion...~ 
IF ~~ THEN + t3.3c 
END 

IF ~~ t3.3c 
SAY ~That sounded much better in my head. What I mean is that you're easy to look at...~ 
= ~Whew, this just gets better and better.~ 
IF ~~ THEN + t3.3x 
END 

IF ~~ t3.3d 
SAY ~I know I can't stop looking at you, and I don't ever want to try, but everyone can't share my tastes, thank goodness...~ 
IF ~~ THEN + t3.3f 
END 

IF ~~ t3.3e 
SAY ~That's because you're an oddity.~ 
IF ~~ THEN + t3.3f 
END 

IF ~~ t3.3f 
SAY ~That didn't come out right.~ 
IF ~~ THEN + t3.3x 
END 

IF ~~ t3.3x 
SAY ~My point is that there is something about you that almost compels people to look at you. I don't mean this in an offensive way. I just mean that you are profoundly different than most people you meet, and you and I both know why.~ 
IF ~~ THEN + t3.3x1 
END 

IF ~~ t3.3x1 
SAY ~And no, I don't think everyone who sees you knows who and what you are. It's just that maybe they can sense that there is something different about you, and they stare out of curiosity.~ 
+ ~!Global("B!GavBhaal","GLOBAL",1)~ + ~'Who and what' I am? What is that supposed to mean?~ + t3.3x2 
+ ~!GlobalGT("B!GavinEngaged","GLOBAL",0) 
      OR(2) Global("B!GavRA","GLOBAL",1) 
          Global("B!GavRA","GLOBAL",4)~ + ~All right, but that doesn't explain why you're always looking at me.~ DO ~SetGlobal("B!GavBhaal","GLOBAL",1)~ + t3.3x3 
++ ~It isn't fair. I have no control over my ancestry.~ DO ~SetGlobal("B!GavBhaal","GLOBAL",1)~ + t3.3x4 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~Not everyone sees me with your eyes, Gavin. To them, I'm nothing special.~ DO ~SetGlobal("B!GavBhaal","GLOBAL",1)~ + t3.3x7 
++ ~You'd think people would find other things to look at. There are far odder-looking people than me on the street.~ DO ~SetGlobal("B!GavBhaal","GLOBAL",1)~ + t3.3x5 
++ ~You got side-tracked again. You were talking about how you're finding Amn to be as narrow-minded as you found the Sword Coast.~ DO ~SetGlobal("B!GavBhaal","GLOBAL",1)~ + t3.3x6 
END 

IF ~~ t3.3x2 
SAY ~I... I heard a rumor. I don't usually go around listening to gossip or prying into peoples' past, so please don't think I'm being intrusive, but that kind of thing makes an impression.~ 
++ ~Don't believe everything you hear.~ + t3.3x2a 
++ ~Well, it's true. Do you hate me now?~ + t3.3x2confirm 
++ ~That's a despicable lie. You should be ashamed of yourself for ever believing such a thing.~ + t3.3x2deny 
++ ~So you heard a rumor. And now you think that just because you believe something to be true, so does everyone else.~ + t3.3x2b 
END 

IF ~~ t3.3x2confirm 
SAY ~Thank you for trusting me enough to tell me. It can't have been easy for you to do.~ 
IF ~~ THEN DO ~SetGlobal("B!GavBhaal","GLOBAL",1)~ + t3.3xbhaal 
END 

IF ~~ t3.3x2deny 
SAY ~I'm sorry. That was a terrible accusation I made against you, and I apologize.~ 
IF ~~ THEN + t3.3xbhaal 
END 

IF ~~ t3.3x2a 
SAY ~I don't know whether to believe it or not... and 'don't believe everything you hear' is not exactly a denial. But if you are the child of Bhaal, don't you think I have a right to know?~ 
++ ~I'm not.~ + t3.3x2deny 
++ ~No, I don't, but it isn't because I don't value your company. This isn't the first time someone has asked. Even if I deny it, you'll think I am, anyway.~ + t3.3x2deny 
++ ~I suppose you do. It's true.~ + t3.3x2confirm 
END 

IF ~~ t3.3x2b 
SAY ~No.~ 
IF ~~ THEN + t3.3x2a 
END 
END 

CHAIN ~B!GavJ~ t3.3x3 
~(sigh) I really hoped you weren't going to follow up on that lapse. I'm going to try to put this as delicately as I can.~ 
= ~I'm a man. No matter how much I try to confine myself to... er... higher beliefs and ideals, I'm... oh, damn.~ 
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ ~Our friend is trying to tell you that, while he strives to conduct himself with all possible decorum, he is incapable of ignoring the attractions you hold.~ 
== YOSHJ   IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID) 
      OR(3) !InParty("Keldorn") !InMyArea("Keldorn") StateCheck("Keldorn",CD_STATE_NOTVALID)~ ~Have mercy, <CHARNAME>! Our fumbling friend is trying to tell you that he finds your countenance agreeable.~ 
== KORGANJ  IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) 
      OR(3) !InParty("Keldorn") !InMyArea("Keldorn") StateCheck("Keldorn",CD_STATE_NOTVALID)
      OR(3) !InParty("Yoshimo") !InMyArea("Yoshimo") StateCheck("Yoshimo",CD_STATE_NOTVALID)~ ~Har, har! The lad's got a pike in his leggin's for ye, but he's too bashful to say it.~ 
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) 
      OR(3) !InParty("Keldorn") !InMyArea("Keldorn") StateCheck("Keldorn",CD_STATE_NOTVALID)
      OR(3) !InParty("Yoshimo") !InMyArea("Yoshimo") StateCheck("Yoshimo",CD_STATE_NOTVALID) 
      OR(3) !InParty("Korgan")  !InMyArea("Korgan") StateCheck("Korgan",CD_STATE_NOTVALID)~ ~Come, my hound, can you not tell her that you find her face fair to look upon?~ 
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) 
      OR(3) !InParty("Keldorn") !InMyArea("Keldorn") StateCheck("Keldorn",CD_STATE_NOTVALID)
      OR(3) !InParty("Yoshimo") !InMyArea("Yoshimo") StateCheck("Yoshimo",CD_STATE_NOTVALID) 
      OR(3) !InParty("Korgan")  !InMyArea("Korgan") StateCheck("Korgan",CD_STATE_NOTVALID) 
      OR(3) !InParty("HaerDalis") !InMyArea("HaerDalis") StateCheck("HaerDalis",CD_STATE_NOTVALID)~ ~What the oaf is trying and failing to say is that he finds you comely. (Could my opinion of this baboon's eloquence, or lack thereof, sink any lower?)~ 
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) 
      OR(3) !InParty("Keldorn") !InMyArea("Keldorn") StateCheck("Keldorn",CD_STATE_NOTVALID)
      OR(3) !InParty("Yoshimo") !InMyArea("Yoshimo") StateCheck("Yoshimo",CD_STATE_NOTVALID) 
      OR(3) !InParty("Korgan")  !InMyArea("Korgan") StateCheck("Korgan",CD_STATE_NOTVALID) 
      OR(3) !InParty("HaerDalis") !InMyArea("HaerDalis") StateCheck("HaerDalis",CD_STATE_NOTVALID) 
      OR(3) !InParty("Edwin") !InMyArea("Edwin") StateCheck("Edwin",CD_STATE_NOTVALID)~ ~Friend Gavin is trying to tell you that he thinks you're pretty.~ 
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID) 
      OR(3) !InParty("Keldorn") !InMyArea("Keldorn") StateCheck("Keldorn",CD_STATE_NOTVALID)
      OR(3) !InParty("Yoshimo") !InMyArea("Yoshimo") StateCheck("Yoshimo",CD_STATE_NOTVALID) 
      OR(3) !InParty("Korgan")  !InMyArea("Korgan") StateCheck("Korgan",CD_STATE_NOTVALID) 
      OR(3) !InParty("HaerDalis") !InMyArea("HaerDalis") StateCheck("HaerDalis",CD_STATE_NOTVALID) 
      OR(3) !InParty("Edwin") !InMyArea("Edwin") StateCheck("Edwin",CD_STATE_NOTVALID) 
      OR(3) !InParty("Minsc") !InMyArea("Minsc") StateCheck("Minsc",CD_STATE_NOTVALID)~ ~Just say it, Gavin. She's a woman and you're attracted to her.~ 
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID) 
      OR(3) !InParty("Keldorn") !InMyArea("Keldorn") StateCheck("Keldorn",CD_STATE_NOTVALID)
      OR(3) !InParty("Yoshimo") !InMyArea("Yoshimo") StateCheck("Yoshimo",CD_STATE_NOTVALID) 
      OR(3) !InParty("Korgan")  !InMyArea("Korgan") StateCheck("Korgan",CD_STATE_NOTVALID) 
      OR(3) !InParty("HaerDalis") !InMyArea("HaerDalis") StateCheck("HaerDalis",CD_STATE_NOTVALID) 
      OR(3) !InParty("Edwin") !InMyArea("Edwin") StateCheck("Edwin",CD_STATE_NOTVALID) 
      OR(3) !InParty("Minsc") !InMyArea("Minsc") StateCheck("Minsc",CD_STATE_NOTVALID) 
      OR(3) !InParty("Valygar") !InMyArea("Valygar") StateCheck("Valygar",CD_STATE_NOTVALID)~ ~Interesting. Among animals, males rarely have difficulty communicating their desires to the females. Though perhaps, in this case, there is only attraction, rather than an active desire to mate.~ 
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID) 
      OR(3) !InParty("Keldorn") !InMyArea("Keldorn") StateCheck("Keldorn",CD_STATE_NOTVALID)
      OR(3) !InParty("Yoshimo") !InMyArea("Yoshimo") StateCheck("Yoshimo",CD_STATE_NOTVALID) 
      OR(3) !InParty("Korgan")  !InMyArea("Korgan") StateCheck("Korgan",CD_STATE_NOTVALID) 
      OR(3) !InParty("HaerDalis") !InMyArea("HaerDalis") StateCheck("HaerDalis",CD_STATE_NOTVALID) 
      OR(3) !InParty("Edwin") !InMyArea("Edwin") StateCheck("Edwin",CD_STATE_NOTVALID) 
      OR(3) !InParty("Minsc") !InMyArea("Minsc") StateCheck("Minsc",CD_STATE_NOTVALID) 
      OR(3) !InParty("Cernd") !InMyArea("Cernd") StateCheck("Cernd",CD_STATE_NOTVALID) 
      OR(3) !InParty("Valygar") !InMyArea("Valygar") StateCheck("Valygar",CD_STATE_NOTVALID)~ ~Reminds me of the time my cousin Todo took a shine to that girl in Sweetheart Lane. Couldn't get an intelligible sentence out of him for a week.~ 
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) 
      OR(3) !InParty("Keldorn") !InMyArea("Keldorn") StateCheck("Keldorn",CD_STATE_NOTVALID)
      OR(3) !InParty("Yoshimo") !InMyArea("Yoshimo") StateCheck("Yoshimo",CD_STATE_NOTVALID) 
      OR(3) !InParty("Korgan")  !InMyArea("Korgan") StateCheck("Korgan",CD_STATE_NOTVALID) 
      OR(3) !InParty("HaerDalis") !InMyArea("HaerDalis") StateCheck("HaerDalis",CD_STATE_NOTVALID) 
      OR(3) !InParty("Edwin") !InMyArea("Edwin") StateCheck("Edwin",CD_STATE_NOTVALID) 
      OR(3) !InParty("Minsc") !InMyArea("Minsc") StateCheck("Minsc",CD_STATE_NOTVALID) 
      OR(3) !InParty("Cernd") !InMyArea("Cernd") StateCheck("Cernd",CD_STATE_NOTVALID) 
      OR(3) !InParty("Valygar") !InMyArea("Valygar") StateCheck("Valygar",CD_STATE_NOTVALID) 
      OR(3) !InParty("Jan") !InMyArea("Jan") StateCheck("Jan",CD_STATE_NOTVALID)~ ~Get a grip on yourself, man. This is no time to be bothering our leader with oafish flatteries.~ 
== ~B!GavJ~ ~Ilmater's mercy, I don't believe the words that come out of my mouth. Forgive me.~ 
= ~Can we please return to what we were talking about in the first place? I said that I couldn't believe how prejudiced Amn is and you agreed.~ 
= ~After that, there was an embarassing display of my ability to humiliate myself, and now, I'd like to go back to talking about Amn... or anything else, really.~ 
END 
++ ~I think I'm done talking for a while.~ EXTERN ~B!GavJ~ t3.3x3a 
++ ~Don't worry, Gavin. I find your awkwardness endearing.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ EXTERN ~B!GavJ~ t3.3x3b 
++ ~Right... Amn... Prejudice. Yes, I agree. I hadn't expected to find so much of it here, either.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ EXTERN ~B!GavJ~ t3.5 
++ ~I don't know if things are any worse here, but I didn't really expect them to be better. People are still people, even if you cross a border.~ EXTERN ~B!GavJ~ t3.2
++ ~Actually, I didn't agree. I'm just as happy if things are the way they are. Each race should keep to its own kind.~ EXTERN ~B!GavJ~ t3.6

APPEND ~B!GavJ~ 

IF ~~ t3.3x3a 
SAY ~I'm sorry my ill-considered words put an end to this discussion, but I understand your desire to keep moving.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t3.3x3b 
SAY ~Well, that's something, at least. I keep hoping that one day, I'll grow out of it, but it hasn't happened yet.~ 
= ~Anyway...~ 
IF ~~ THEN + t3.3xbhaal 
END 

IF ~~ t3.3xbhaal 
SAY ~In any case, I'd be a hypocrite if I based my opinion of a person on ancestry alone, no matter how... different it might be.~ 
IF ~~ THEN + t3.a
END 

IF ~~ t3.3x4 
SAY ~Oh, I know. None of us can.~ 
IF ~~ THEN + t3.3xbhaal 
END 

IF ~~ t3.3x5 
SAY ~No doubt! And ones less...~
++ ~Yes, yes. But it isn't fair for people to judge based on appearances.~ + t3.a 
++ ~'Ones less' what, Gavin?~ + t3.3x3 
END 

IF ~~ t3.3x6 
SAY ~Yes, that's right, I was.~ 
IF ~~ THEN + t3.5 
END 

IF ~~ t3.3x7 
SAY ~You will always be something special, love. If others don't see that, they're blind, but I won't complain about that. If they weren't, I might have to fight another for your honor every time we went out of doors.~
= ~But it is troubling that people are so quick to judge.~ 
IF ~~ THEN + t3.a 
END 

IF ~~ t3.4 
SAY ~I know, but it's hard to see so much inequity around us and feel anything but disappointment.~ 
IF ~~ THEN + t3.a 
END 

IF ~~ t3.5 
SAY ~With so much inequity around us, it's hard to feel anything but disappointment.~ 
IF ~~ THEN + t3.a 
END 

IF ~~ t3.6 
SAY ~You don't really believe that, do you?~ 
+ ~!Global("B!GavRA","GLOBAL",0) 
      !Global("B!GavRA","GLOBAL",3)~ + ~I do. Very firmly.~ DO ~SetGlobal("B!GavRA","GLOBAL",3) 
            SetGlobal("B!GavRomBreak","GLOBAL",1)~ + t3.6a 
+ ~OR(2) Global("B!GavRA","GLOBAL",0) 
      Global("B!GavRA","GLOBAL",3)~ + ~I do. Very firmly.~ + t3.6a 
++ ~It isn't that I have anything against <PRO_RACE> and non-<PRO_RACE> living side by side, but I fear that culture may be lost forever, should each race lose its identity.~ DO ~IncrementGlobal("B!GavOffend","GLOBAL",-1)~ + t3.6b 
+ ~!Global("B!GavRA","GLOBAL",0) 
      !Global("B!GavRA","GLOBAL",3)~ + ~I've got nothing against your average non-<PRO_RACE>, but <PRO_RACE> and non-<PRO_RACE> should never wed.~ + t3.6c 
+ ~OR(2) Global("B!GavRA","GLOBAL",0) 
      Global("B!GavRA","GLOBAL",3)~ + ~I've got nothing against your average non-<PRO_RACE>, but <PRO_RACE> and non-<PRO_RACE> should never wed.~ DO ~SetGlobal("B!GavRA","GLOBAL",3) 
            SetGlobal("B!GavRomBreak","GLOBAL",1) 
            IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t3.6c 
++ ~No, I probably spoke too hastily. I'm not really that biased.~ DO ~IncrementGlobal("B!GavOffend","GLOBAL",-1)~ + t3.6d 
END 

IF ~~ t3.6a 
SAY ~I'm sorry you feel that way. I pray that one day, you'll reconsider.~ 
IF ~~ THEN + t3.a 
END 

IF ~~ t3.6b 
SAY ~That's a valid concern, <CHARNAME>. We all should keep the best of what we are, our faith, our culture, our art, and strive to rid ourselves of the worst, distrust, hate, war.~ 
IF ~~ THEN + t3.a 
END 

IF ~~ t3.6c 
SAY ~I see. I would never tell another where he should give his heart, but it seems wrong to me that one <PRO_RACE> could only find happiness with another <PRO_RACE>. Yet in matters of love, moreso than anywhere else, each person must follow what he believes to be right.~ 
IF ~~ THEN + t3.a 
END 
 
IF ~~ t3.6d 
SAY ~We all do that, from time to time. No harm done.~ 
IF ~~ THEN + t3.a 
END 

IF ~~ t3.a 
SAY ~A person's actions define them, not the shape of the ears or the blood in the veins.~ 
IF ~~ THEN + t3.t 
END 

IF ~~ t3.t 
SAY ~Lathander teaches us that, but damn me, I can't seem to help people understand it. There are times when I feel like such a failure for not being able to get that simple point across.~ 
+ ~Kit(Player1,GODLATHANDER)~ + ~Lathander also teaches us to guide, rather than compel. We can't force people to adhere to our beliefs.~ + t3.t1 
+ ~!Kit(Player1,GODLATHANDER)~ + ~Would Lathander really advocate trying to force people to adhere to a set of beliefs?~ + t3.t1 
++ ~Maybe you just aren't persuasive enough.~ + t3.t2 
++ ~You have to believe in yourself. If you don't, no one else will.~ + t3.t7 
++ ~You can't change the world in a day, Gavin. You just need more time.~ + t3.t3 
++ ~Why bother? If people want to believe that they're better than everyone else, you can always laugh at them when they're proven wrong.~ + t3.t4 
++ ~The world is a big place, and you're just one man.~ + t3.t5 
++ ~Why are you worrying about this when you're supposed to be helping me with my quest?~ + t3.t6 
END 

IF ~~ t3.t1 
SAY ~You're right. Failed again.~ 
IF ~~ THEN + t3.t8 
END 

IF ~~ t3.t2 
SAY ~Now there's an understatement.~ 
IF ~~ THEN + t3.t8 
END 

IF ~~ t3.t3 
SAY ~'Always another morning?'~ 
IF ~~ THEN + t3.t9 
END 

IF ~~ t3.t4 
SAY ~Heh. And I guess it starts with me, doesn't it?~ 
IF ~~ THEN + t3.t10 
END 

IF ~~ t3.t5 
SAY ~You're right, of course.~ 
IF ~~ THEN + t3.t10 
END 

IF ~~ t3.t6 
SAY ~I worry about it because it's a tenet of my faith... but you're right. I should be more worried about your quest.~ 
IF ~~ THEN + t3.t8 
END 

IF ~~ t3.t7 
SAY ~I try, <CHARNAME>, I try, but sometimes, it isn't easy.~ 
IF ~~ THEN + t3.t8 
END 

IF ~~ t3.t8 
SAY ~There are days, sometimes, when I don't think I can do anything right.~ 
++ ~You're only human, Gavin. You shouldn't expect so much from yourself.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t3.t13 
++ ~And there are days when you seem to do the impossible. It all balances out in the end.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t3.t11 
++ ~This isn't like you, Gavin. You're not usually this negative.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t3.t12 
++ ~We all have days like that. It's called life.~ + t3.t13 
+ ~Global("B!GavBhaal","GLOBAL",1)~ + ~You think you have it tough? Try having the blood of a god in your veins.~ + t3.t14 
+ ~!Global("B!GavBhaal","GLOBAL",1)~ + ~You think you have it tough? Try having the blood of a god in your veins.~ + t3.t15 
END 

IF ~~ t3.t9 
SAY ~You're right. Better to look at personal failings as opportunities to grow. It is tough, sometimes, though.~ 
IF ~~ THEN + t3.t8 
END 

IF ~~ t3.t10 
SAY ~I think I can change the world, and that's just another kind of pride. We're supposed to strive against that, you know. It's an obstacle to growth.~ 
IF ~~ THEN + t3.t8 
END 

IF ~~ t3.t11 
SAY ~You really know how to cheer a person up, <CHARNAME>. Thank you.~ 
IF ~~ THEN + t3.t16 
END 

IF ~~ t3.t12 
SAY ~It's just a mood, I guess. It will pass.~ 
IF ~~ THEN + t3.t16 
END 

IF ~~ t3.t13 
SAY ~I guess you're right. And I guess you know how frustrating it is, too.~ 
IF ~~ THEN + t3.t16 
END 

IF ~~ t3.t14 
SAY ~True. I should give thanks for my blessings.~ 
IF ~~ THEN + t3.t16 
END 

IF ~~ t3.t15 
SAY ~Who does?~ 
++ ~No idea, but it would have to be worse.~ + t3.t15b 
++ ~I do.~ + t3.t15a 
END 

IF ~~ t3.t15a 
SAY ~Depends on the god, I guess. If I carried the blood of Liira, goddess of dancing, maybe I wouldn't end up in a heap quite so often. But one of the others... Bhaal, for instance... no I wouldn't want that.~ 
IF ~~ THEN + t3.t16 
END 

IF ~~ t3.t15b 
SAY ~Which one?~ 
+ ~GlobalGT("B!GavRA","GLOBAL",0)~ + ~Sune.~ + t3.t15c 
+ ~!GlobalGT("B!GavRA","GLOBAL",0)~ + ~Sune.~ + t3.t15d 
+ ~GlobalGT("B!GavRA","GLOBAL",0)~ + ~Chauntea.~ + t3.t15e 
+ ~!GlobalGT("B!GavRA","GLOBAL",0)~ + ~Chauntea.~ + t3.t15d 
+ ~GlobalGT("B!GavRA","GLOBAL",0)~ + ~Tempus.~ + t3.t15f 
+ ~!GlobalGT("B!GavRA","GLOBAL",0)~ + ~Tempus.~ + t3.t15n 
+ ~GlobalGT("B!GavRA","GLOBAL",0)~ + ~Ubtao.~ + t3.t15g 
+ ~!GlobalGT("B!GavRA","GLOBAL",0)~ + ~Ubtao.~ + t3.t15n 
+ ~GlobalGT("B!GavRA","GLOBAL",0)~ + ~Gond.~ + t3.t15h 
+ ~!GlobalGT("B!GavRA","GLOBAL",0)~ + ~Gond.~ + t3.t15n 
+ ~GlobalGT("B!GavRA","GLOBAL",0)~ + ~Tymora.~ + t3.t15i 
+ ~!GlobalGT("B!GavRA","GLOBAL",0)~ + ~Tymora.~ + t3.t15d 
+ ~GlobalGT("B!GavRA","GLOBAL",0)~ + ~Deneir.~ + t3.t15j 
+ ~!GlobalGT("B!GavRA","GLOBAL",0)~ + ~Deneir.~ + t3.t15n 
+ ~GlobalGT("B!GavRA","GLOBAL",0)~ + ~Eldath.~ + t3.t15k 
+ ~!GlobalGT("B!GavRA","GLOBAL",0)~ + ~Eldath.~ + t3.t15d 
+ ~GlobalGT("B!GavRA","GLOBAL",0)~ + ~Sharess.~ + t3.t15l 
+ ~!GlobalGT("B!GavRA","GLOBAL",0)~ + ~Sharess.~ + t3.t15d 
++ ~Bhaal.~ DO ~SetGlobal("B!GavBhaal","GLOBAL",1)~ + t3.t15m 
END 

IF ~~ t3.t15c 
SAY ~That explains your looks, then.~ 
IF ~~ THEN + t3.t15o 
END 

IF ~~ t3.t15d 
SAY ~Interesting. I was unaware that she bore any mortal offspring.~ 
IF ~~ THEN + t3.t15o 
END 

IF ~~ t3.t15e
SAY ~That explains your... er... figure.~ 
IF ~~ THEN + t3.t15o 
END 

IF ~~ t3.t15f 
SAY ~Remind me never to get you angry.~ 
IF ~~ THEN + t3.t15o 
END 

IF ~~ t3.t15g 
SAY ~Talk about exotic. I never would have dreamed of that one.~ 
IF ~~ THEN + t3.t15o 
END 

IF ~~ t3.t15h 
SAY ~So, you're good with your hands? Er...~ 
IF ~~ THEN + t3.t15o 
END 

IF ~~ t3.t15i 
SAY ~Some people have all the luck.~ 
IF ~~ THEN + t3.t15o 
END 

IF ~~ t3.t15j 
SAY ~Now we know why you're so clever.~ 
IF ~~ THEN + t3.t15o 
END 

IF ~~ t3.t15k 
SAY ~If you inherited that placid nature, our current way of life must be a challenge for you.~ 
IF ~~ THEN + t3.t15o 
END 

IF ~~ t3.t15l 
SAY ~(gulp) You don't say.~ 
IF ~~ THEN + t3.t15o 
END 

IF ~~ t3.t15m 
SAY ~You're serious. I... I didn't know.~ 
= ~I'm sorry. I don't mean to be rude, but this is a bit of a shock.~ 
++ ~I'm not a monster, Gavin.~ + t3.t15m1 
++ ~That's why I don't tell many people.~ + t3.t15m2 
++ ~Aren't you going to remark on how you always thought I had a violent nature?~ + t3.t15m3 
++ ~It was a shock at first, but I've grown tired of it, by now.~ + t3.t15m4 
END 

IF ~~ t3.t15m1 
SAY ~No, I never thought you were.~ 
IF ~~ THEN + t3.t15m5 
END 

IF ~~ t3.t15m2 
SAY ~Perfectly understandable.~ 
IF ~~ THEN + t3.t15m5 
END 

IF ~~ t3.t15m3 
SAY ~If I was, it wouldn't be because of what you just told me.~ 
IF ~~ THEN + t3.t15m5 
END 

IF ~~ t3.t15m4 
SAY ~I guess a person can get used to anything.~ 
IF ~~ THEN + t3.t15m5 
END 

IF ~~ t3.t15m5 
SAY ~I'd rather base my opinion of you on your actions, rather than on your blood, but I do have to ask... does your heritage affect you in any way?~ 
++ ~Apart from a preference for rare meat, no.~ + t3.t15m6 
++ ~When I was a child, I used to collect skulls, if that counts.~ + t3.t15m6 
++ ~It's a constant battle, Gavin. I feel the rage in me, but I resist it.~ + t3.t15m7 
++ ~When people find out about it, they either want to kill me or find a way to use whatever power I inherited from my sire for their own purposes.~ + t3.t15m8 
++ ~Not at all.~ + t3.t15m9 
END 

IF ~~ t3.t15m6 
SAY ~If you're joking about it, I would say the answer is no.~ 
IF ~~ THEN + t3.t15m10 
END 

IF ~~ t3.t15m7 
SAY ~I can't even imagine the strength of will you must possess to combat it.~ 
IF ~~ THEN + t3.t15m10 
END 

IF ~~ t3.t15m8 
SAY ~It sounds like a hard life... and I certainly understand why you're reluctant to tell many people.~ 
IF ~~ THEN + t3.t15m10 
END 

IF ~~ t3.t15m9 
SAY ~You're fortunate.~ 
IF ~~ THEN + t3.t15m10 
END 

IF ~~ t3.t15m10 
SAY ~I thank you for trusting me enough to tell me that. As long as you fight the evil in your blood, I'll help you any way that I can. And I believe you can fight it, or you wouldn't have made it this far.~ 
IF ~~ THEN + t3.end 
END 

IF ~~ t3.t15n 
SAY ~Interesting. I wasn't aware that he sired any mortal offspring.~ 
IF ~~ THEN + t3.t16 
END 

IF ~~ t3.t15o 
SAY ~Still, it could be worse. Your sire could be Bhaal... and everyone knows that he has offspring living today.~ 
IF ~~ THEN + t3.t16 
END 

IF ~~ t3.end 
SAY ~Are your spirits holding up all right?~ 
+ ~OR(2) Global("B!GavRA","GLOBAL",0) 
        Global("B!GavRA","GLOBAL",3)~ + ~Your foul mood is contagious. I was fine before, but not anymore.~ + t3.m1a 
+ ~Global("B!GavRA","GLOBAL",1)~ + ~Your foul mood is contagious. I was fine before, but not anymore.~ + t3.m1b 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~Your foul mood is contagious. I was fine before, but not anymore.~ + t3.m1c 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~Your foul mood is contagious. I was fine before, but not anymore.~ + t3.m1e 
+ ~Global("B!GavRA","GLOBAL",0)~ + ~I'm alright. Maybe a bit tired.~ + t3.m2a 
+ ~Global("B!GavRA","GLOBAL",1)~ + ~I'm alright. Maybe a bit tired.~ + t3.m2b 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~I'm alright. Maybe a bit tired.~ + t3.m2c 
+ ~Global("B!GavRA","GLOBAL",3)~ + ~I'm alright. Maybe a bit tired.~ + t3.m2d 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~I'm alright. Maybe a bit tired.~ + t3.m2e 
+ ~Global("B!GavRA","GLOBAL",0)~ + ~I've been a bit moody myself, lately. One moment, I'm cheerful, the next, not so much.~ + t3.m3a 
+ ~Global("B!GavRA","GLOBAL",1)~ + ~I've been a bit moody myself, lately. One moment, I'm cheerful, the next, not so much.~ + t3.m3b 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~I've been a bit moody myself, lately. One moment, I'm cheerful, the next, not so much.~ + t3.m3c 
+ ~Global("B!GavRA","GLOBAL",3)~ + ~I've been a bit moody myself, lately. One moment, I'm cheerful, the next, not so much.~ + t3.m3d 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~I've been a bit moody myself, lately. One moment, I'm cheerful, the next, not so much.~ + t3.m3e 
+ ~Global("B!GavRA","GLOBAL",0)~ + ~Nothing ever upsets me.~ + t3.m4a 
+ ~Global("B!GavRA","GLOBAL",1)~ + ~Nothing ever upsets me.~ + t3.m4b 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~Nothing ever upsets me.~ + t3.m4c 
+ ~Global("B!GavRA","GLOBAL",3)~ + ~Nothing ever upsets me.~ + t3.m4d 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~Nothing ever upsets me.~ + t3.m4e 
+ ~OR(2) Global("B!GavRA","GLOBAL",0) 
        Global("B!GavRA","GLOBAL",3)~ + ~I feel restless, like there's something I should be doing, but I don't know what it is.~ + t3.m5a 
+ ~Global("B!GavRA","GLOBAL",1)~ + ~I feel restless, like there's something I should be doing, but I don't know what it is.~ + t3.m5b 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~I feel restless, like there's something I should be doing, but I don't know what it is.~ + t3.m5c 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~I feel restless, like there's something I should be doing, but I don't know what it is.~ + t3.m5e 
+ ~Global("B!GavRA","GLOBAL",0)~ + ~This isn't really something I want to talk about with you.~ + t3.m6a 
+ ~Global("B!GavRA","GLOBAL",1)~ + ~This isn't really something I want to talk about with you.~ + t3.m6b 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~This isn't really something I want to talk about with you.~ + t3.m6c 
+ ~Global("B!GavRA","GLOBAL",3)~ + ~This isn't really something I want to talk about with you.~ + t3.m6d 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~This isn't really something I want to talk about with you.~ + t3.m6e 
+ ~Global("B!GavRA","GLOBAL",1)~ + ~If I told you I was unhappy, what would you do to try to cheer me up?~ + t3.m7b 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~If I told you I was unhappy, what would you do to try to cheer me up?~ + t3.m7c 
+ ~Global("B!GavRA","GLOBAL",3)~ + ~If I told you I was unhappy, what would you do to try to cheer me up?~ + t3.m7d 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~If I told you I was unhappy, what would you do to try to cheer me up?~ + t3.m7e 
END 


IF ~~ t3.t16 
SAY ~So how about you? Are your spirits holding up all right?~ 
+ ~OR(2) Global("B!GavRA","GLOBAL",0) 
        Global("B!GavRA","GLOBAL",3)~ + ~Your foul mood is contagious. I was fine before, but not anymore.~ + t3.m1a 
+ ~Global("B!GavRA","GLOBAL",1)~ + ~Your foul mood is contagious. I was fine before, but not anymore.~ + t3.m1b 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~Your foul mood is contagious. I was fine before, but not anymore.~ + t3.m1c 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~Your foul mood is contagious. I was fine before, but not anymore.~ + t3.m1e 
+ ~Global("B!GavRA","GLOBAL",0)~ + ~I'm alright. Maybe a bit tired.~ + t3.m2a 
+ ~Global("B!GavRA","GLOBAL",1)~ + ~I'm alright. Maybe a bit tired.~ + t3.m2b 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~I'm alright. Maybe a bit tired.~ + t3.m2c 
+ ~Global("B!GavRA","GLOBAL",3)~ + ~I'm alright. Maybe a bit tired.~ + t3.m2d 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~I'm alright. Maybe a bit tired.~ + t3.m2e 
+ ~Global("B!GavRA","GLOBAL",0)~ + ~I've been a bit moody myself, lately. One moment, I'm cheerful, the next, not so much.~ + t3.m3a 
+ ~Global("B!GavRA","GLOBAL",1)~ + ~I've been a bit moody myself, lately. One moment, I'm cheerful, the next, not so much.~ + t3.m3b 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~I've been a bit moody myself, lately. One moment, I'm cheerful, the next, not so much.~ + t3.m3c 
+ ~Global("B!GavRA","GLOBAL",3)~ + ~I've been a bit moody myself, lately. One moment, I'm cheerful, the next, not so much.~ + t3.m3d 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~I've been a bit moody myself, lately. One moment, I'm cheerful, the next, not so much.~ + t3.m3e 
+ ~Global("B!GavRA","GLOBAL",0)~ + ~Nothing ever upsets me.~ + t3.m4a 
+ ~Global("B!GavRA","GLOBAL",1)~ + ~Nothing ever upsets me.~ + t3.m4b 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~Nothing ever upsets me.~ + t3.m4c 
+ ~Global("B!GavRA","GLOBAL",3)~ + ~Nothing ever upsets me.~ + t3.m4d 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~Nothing ever upsets me.~ + t3.m4e 
+ ~OR(2) Global("B!GavRA","GLOBAL",0) 
        Global("B!GavRA","GLOBAL",3)~ + ~I feel restless, like there's something I should be doing, but I don't know what it is.~ + t3.m5a 
+ ~Global("B!GavRA","GLOBAL",1)~ + ~I feel restless, like there's something I should be doing, but I don't know what it is.~ + t3.m5b 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~I feel restless, like there's something I should be doing, but I don't know what it is.~ + t3.m5c 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~I feel restless, like there's something I should be doing, but I don't know what it is.~ + t3.m5e 
+ ~Global("B!GavRA","GLOBAL",0)~ + ~This isn't really something I want to talk about with you.~ + t3.m6a 
+ ~Global("B!GavRA","GLOBAL",1)~ + ~This isn't really something I want to talk about with you.~ + t3.m6b 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~This isn't really something I want to talk about with you.~ + t3.m6c 
+ ~Global("B!GavRA","GLOBAL",3)~ + ~This isn't really something I want to talk about with you.~ + t3.m6d 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~This isn't really something I want to talk about with you.~ + t3.m6e 
+ ~Global("B!GavRA","GLOBAL",1)~ + ~If I told you I was unhappy, what would you do to try to cheer me up?~ + t3.m7b 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~If I told you I was unhappy, what would you do to try to cheer me up?~ + t3.m7c 
+ ~Global("B!GavRA","GLOBAL",3)~ + ~If I told you I was unhappy, what would you do to try to cheer me up?~ + t3.m7d 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~If I told you I was unhappy, what would you do to try to cheer me up?~ + t3.m7e 
END 

/* foul mood is contagious */ 
IF ~~ t3.m1a
SAY ~I'm sorry. I guess I'd better just shut up before I make it worse.~ 
IF ~~ THEN EXIT  
END 

IF ~~ t3.m1b 
SAY ~I'm sorry.~ 
IF ~~ THEN + t3.cheer
END 

IF ~~ t3.m1c 
SAY ~I'm sorry, dear one.~ 
IF ~~ THEN + t3.cheer 
END 

/* t3.m1d combined with t3.m1a */ 

IF ~~ t3.m1e 
SAY ~Sorry about that.~ 
IF ~~ THEN + t3.cheer 
END 

/* tired */ 
IF ~~ t3.m2a 
SAY ~It has been a rough few days.~ 
IF ~~ THEN + t3.doforyou 
END 

IF ~~ t3.m2b 
SAY ~I'm sorry!~ 
IF ~~ THEN + t3.doforyou 
END 

IF ~~ t3.m2c 
SAY ~Oh, love, you should have said!~ 
IF ~~ THEN + t3.doforyou 
END 

IF ~~ t3.m2d 
SAY ~You've been pushing yourself pretty hard.~ 
IF ~~ THEN + t3.doforyou 
END 

IF ~~ t3.m2e 
SAY ~It's been a rough few days.~ 
IF ~~ THEN + t3.doforyou 
END 

/* moody */ 
IF ~~ t3.m3a 
SAY ~I know how that goes. When I get like that, I usually prefer to be left alone. Too late for that, but I can shut up now.~ 
IF ~~ THEN EXIT  
END 

IF ~~ t3.m3b 
SAY ~I know how that goes, and it can be frustrating.~ 
IF ~~ THEN + t3.cheer 
END 

IF ~~ t3.m3c 
SAY ~You never said... I should have been more observant.~ 
IF ~~ THEN + t3.cheer 
END 

IF ~~ t3.m3d 
SAY ~I know how that goes. I get that way myself... but you know that. I'll just leave you alone until you feel like talking, alright?~ 
IF ~~ THEN EXIT 
END 

IF ~~ t3.m3e 
SAY ~I know the feeling.~ 
IF ~~ THEN + t3.cheer 
END 

/* lake placid */ 
IF ~~ t3.m4a 
SAY ~You're lucky.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t3.m4b 
SAY ~I know, but that doesn't mean you shouldn't have help, if you want it.~ 
IF ~~ THEN + t3.doforyou 
END 

IF ~~ t3.m4c 
SAY ~I know, love, but if you wanted help with anything, I'd do anything for you.~ 
IF ~~ THEN + t3.doforyou 
END 

IF ~~ t3.m4d 
SAY ~So it would seem, but still, there might be some way I could help you.~ 
IF ~~ THEN + t3.doforyou 
END 

IF ~~ t3.m4e 
SAY ~I envy you.~ 
IF ~~ THEN + t3.doforyou 
END 

/* restless */ 
IF ~~ t3.m5a 
SAY ~It's probably just that there are so many demands on you, it's hard to remember them all.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t3.m5b 
SAY ~People expect so much from you, it's a wonder you remember any of it.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t3.m5c 
SAY ~People expect so much from you, it's  wonder you remember any of it.~ 
IF ~~ THEN EXIT 
END 

/* t3.m5d combined with t3.m5a */ 

IF ~~ t3.m5e 
SAY ~People expect a lot from you.~ 
IF ~~ THEN EXIT 
END 

/* don't want to talk about it with you */ 

IF ~~ t3.m6a 
SAY ~Fair enough.~ 
IF ~~ THEN EXIT  
END 

IF ~~ t3.m6b 
SAY ~I don't mean to pry... but did I offend you in some way?~ 
++ ~No, it's just rather personal, and I don't think you could help.~ + t3.m6ok 
++ ~It's nothing you did. I just tend to be a private person, and don't like to burden others.~ + t3.m6ok 
++ ~You haven't offended me, but I'm not really in the mood to talk.~ + t3.m6ok 
++ ~I don't welcome all the attention you've been paying me.~ + t3.m6breakup 
++ ~It's nothing, Gavin. I'll get over it.~ + t3.m6sorry 
END 

IF ~~ t3.m6ok 
SAY ~Alright, but I'm here if you want to talk.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t3.m6breakup 
SAY ~Ah. Thank you for telling me. I'll show more... er... restraint.~ 
IF ~~ THEN DO ~SetGlobal("B!GavRA","GLOBAL",3) 
      SetGlobal("B!GavRomBreak","GLOBAL",1) 
      IncrementGlobal("B!GavLove","GLOBAL",-1)~ EXIT 
END 

IF ~~ t3.m6sorry 
SAY ~That does sound like I did something to offend you. I apologize.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t3.m6c 
SAY ~Was it something I did?~ 
++ ~No, it's nothing at all. Just petty, everyday annoyances.~ + t3.m6ok 
++ ~You know me, Gavin. I don't like to complain.~ + t3.m6ok 
++ ~No, it isn't anything you did. I'm just not in the mood to talk.~ + t3.m6ok 
++ ~I've been trying to find a good way to say this, but it's just not working.~ + t3.m6breakup2 
++ ~It's nothing, Gavin. I'll get over it.~ + t3.m6sorry2 
END 

IF ~~ t3.m6breakup2 
SAY ~You mean... you don't love me anymore.~ 
++ ~I'm sorry. I didn't want it to be like this.~ + t3.m6breakup3 
++ ~That's one way to put it.~ + t3.m6breakup3 
++ ~There's someone else.~ + t3.m6breakup3 
++ ~No, Gavin, I still love you. I just need a bit of a break.~ + t3.m6breakup3 
++ ~No, no, we're fine. It's everything else that's going wrong.~ + t3.m6relief 
++ ~What?! Gavin, don't be ridiculous! I was talking about the rest of the party.~ + t3.m6relief 
END 

IF ~~ t3.m6breakup3 
SAY ~Oh... well, I'll be here if... if you want to talk later.~ 
IF ~~ THEN DO ~SetGlobal("B!GavRA","GLOBAL",3) 
      SetGlobal("B!GavRomBreak","GLOBAL",1) 
      IncrementGlobal("B!GavLove","GLOBAL",-1)~ EXIT 
END 

IF ~~ t3.m6relief 
SAY ~What a relief! I think my heart stopped for a moment, there.~ 
= ~I'm sorry you're having such a hard time right now, love.~ 
IF ~~ THEN + t3.doforyou  
END 

IF ~~ t3.m6sorry2 
SAY ~Now I *know* it's something I did. What can I do to make it better?~ 
++ ~There's nothing you can do, Gavin. Just let me be a while.~ + t3.2anything 
++ ~Cook dinner tonight and give me a backrub and I'll forgive you.~ + t3.2anything 
++ ~No, it's just a headache.~ + t3.headache 
++ ~It really isn't anything you did. Can't a person have a bad day?~ + t3.ok 
END 

IF ~~ t3.ok 
SAY ~Of course. Let me know if there's anything I can do for you.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t3.2anything  
SAY ~Whatever you need, love.~ 
IF ~~ THEN EXIT 
END

IF ~~ t3.headache 
SAY ~(Gavin touches the back of your neck and your headache recedes.)~ 
= ~At least I can do something for that.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t3.m6d 
SAY ~Something I did?~ 
++ ~Whatever it is, I don't think you could help.~ + t3.m6ok 
++ ~It's nothing you did. Leave it at that.~ + t3.m6ok 
++ ~I'm not really in the mood to talk.~ + t3.m6ok 
++ ~Yes, and I bet you have no idea what it is.~ + t3.m6sorry3 
++ ~I'll get over it.~ + t3.m6sorry3 
END 

IF ~~ t3.m6sorry3 
SAY ~Whatever it was, I'm sorry.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t3.m6e 
SAY ~What did I do this time?~ 
++ ~Whatever it is, I don't think you could help.~ + t3.m6ok 
++ ~It's nothing you did. Leave it at that.~ + t3.m6ok 
++ ~I'm not really in the mood to talk.~ + t3.m6ok 
++ ~I've had it with you. You're free.~ + t3.m6breakup4 
++ ~I'll get over it.~ + t3.m6sorry 
END 

IF ~~ t3.m6breakup4 
SAY ~That's it, then. I knew this would happen eventually. Somehow, I thought it would hurt more.~ 
IF ~~ THEN DO ~SetGlobal("B!GavRA","GLOBAL",3) 
      SetGlobal("B!GavRomBreak","GLOBAL",2) 
      IncrementGlobal("B!GavLove","GLOBAL",-3)~ EXIT 
END 

/* unhappy */ 

/* t3.m7a - inappropriate for RA=0 */ 

IF ~~ t3.m7b 
SAY ~That would depend.~ 
IF ~~ THEN + t3.cheer 
END 

IF ~~ t3.m7c 
SAY ~Anything you want, love.~ 
IF ~~ THEN + t3.cheer 
END 

IF ~~ t3.m7d 
SAY ~That would depend.~ 
IF ~~ THEN + t3.cheer 
END 

IF ~~ t3.m7e 
SAY ~Depends.~ 
IF ~~ THEN + t3.cheer 
END 

/* cheer me up */ 

IF ~~ t3.cheer 
SAY ~What could I do to cheer you up?~ 
++ ~You could take my share of chores tonight.~ + t3.1chores  
+ ~Global("B!GavRA","GLOBAL",1)~ + ~How about a hug?~ + t3.1hug 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~How about a hug?~ + t3.2hug 
+ ~Global("B!GavRA","GLOBAL",3)~ + ~How about a hug?~ + t3.3hug 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~How about a hug?~ + t3.4hug 
+ ~OR(3) Global("B!GavRA","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",3) 
      Global("B!GavRA","GLOBAL",4)~ + ~Smile for me.~ + t3.134smile 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~Smile for me.~ + t3.2smile 
++ ~Tell me a joke.~ + t3.joke 
+ ~Global("B!GavBhaal","GLOBAL",1)~ + ~Make me a normal person... with no Bhaal taint.~ + t3.nocando 
++ ~Take me away from all this.~ + t3.nocando 
+ ~OR(3) Global("B!GavRA","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",3)~ + ~Take your clothes off.~ + t3.13sex 
+ ~OR(3) Global("B!GavRA","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",3)~ + ~Come to my bedroll tonight, and I'll tell you then.~ + t3.13sex 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~Come to my bedroll tonight, and I'll tell you then.~ + t3.2sex 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~Come to my bedroll tonight, and I'll tell you then.~ + t3.4sex 
++ ~I can't think of anything right now.~ + t3.nothing 
++ ~There's nothing you can do.~ + t3.nothing 
END 

IF ~~ t3.1chores 
SAY ~Your wish is my command. You will not have to do a thing.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t3.1hug 
SAY ~(Gavin approaches you cautiously and embraces you. His arms circle you lightly, and he doesn't seem to know where to put his hands, but the awkwardness soon fades, and his embrace becomes more confident.)~ 
= ~(He eases your cheek to lie against his chest and rests his own against your hair.)~ 
= ~(After a few moments, though, he breaks the embrace and pulls away from you, looking embarassed. He smiles self-consciously and turns away.)~ 
IF ~~ THEN EXIT 
END 

IF ~~ t3.2hug 
SAY ~(Gavin embraces you tightly, easing your cheek to lie against his chest and resting his own against your hair. You hear the slow, steady beat of his heart.)~ 
= ~(He holds you as long as you choose to remain there, then releases you with a kiss when you break the embrace at last.)~ 
= ~Hope that helps, love.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t3.3hug 
SAY ~(Gavin embraces you hesitantly, careful to keep some distance between your bodies. Before many moments have passed, he breaks the embrace and steps away, his eyes not meeting yours.)~ 
IF ~~ THEN EXIT 
END 

IF ~~ t3.4hug 
SAY ~(After a moment's pause, Gavin embraces you closely, drawing you against his body and cradling your cheek against his chest. If there is some reluctance on his part, he seems to be trying to hide it from you.)~ 
= ~(A few moments later, his arms drop to his sides and he steps away. His gaze meets yours briefly before he turns away, his expression unreadable.)~ 
IF ~~ THEN  EXIT 
END 

IF ~~ t3.134smile 
SAY ~(Gavin grins self-consciously, then blushes and turns away.)~ 
IF ~Global("B!GavRA","GLOBAL",1)~ THEN + t3.1smile 
IF ~OR(2) Global("B!GavRA","GLOBAL",3) 
      Global("B!GavRA","GLOBAL",4)~ THEN + t3.34smile 
END 

IF ~~ t3.1smile 
SAY ~Sorry. It's a bit difficult to smile on command, even for a lady like you.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t3.34smile 
SAY ~Sorry. It's a bit difficult to smile on command, even for you.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t3.2smile 
SAY ~(Gavin's smile is genuine, but concerned. He reaches out to stroke your cheek.)~ 
= ~Hope you feel better, love.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t3.joke 
SAY ~I'm sorry, but I can't think of one right now. Usually, when I'm making people laugh, it's more of an accident than anything I said intentionally.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t3.nocando 
SAY ~I'm sorry, <CHARNAME>, but there are some things I just can't do.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t3.13sex 
SAY ~(chokes)~ 
= ~Gods, for a moment, I thought you were serious.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t3.2sex 
SAY ~I'll be counting every moment until then.~ 
IF ~~ THEN DO ~SetGlobal("B!GavPCWantsIt","LOCALS",1)~ EXIT 
END 

IF ~~ t3.4sex 
SAY ~If that's what you want.~ 
IF ~~ THEN DO ~SetGlobal("B!GavPCWantsIt","LOCALS",1)~ EXIT 
END 

IF ~~ t3.nothing 
SAY ~I'm sorry. I wish there was something I could do.~ 
IF ~~ THEN EXIT 
END 

/* do for you */ 

IF ~~ t3.doforyou  
SAY ~What can I do to help?~ 
++ ~You could take my share of chores tonight.~ + t3.1chores  
+ ~Global("B!GavRA","GLOBAL",1)~ + ~How about a hug?~ + t3.1hug 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~How about a hug?~ + t3.2hug 
+ ~Global("B!GavRA","GLOBAL",3)~ + ~How about a hug?~ + t3.3hug 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~How about a hug?~ + t3.4hug 
++ ~You could take some of this gear.~ + t3.gear 
++ ~Can we switch watches?~ + t3.watch 
+ ~Global("B!GavBhaal","GLOBAL",1)~ + ~Make me a normal person... with no Bhaal taint.~ + t3.nocando 
++ ~Take me away from all this.~ + t3.nocando 
+ ~OR(3) Global("B!GavRA","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",3)~ + ~Come to my bedroll tonight, and I'll tell you then.~ + t3.13sex 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~Come to my bedroll tonight, and I'll tell you then.~ + t3.2sex 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~Come to my bedroll tonight, and I'll tell you then.~ + t3.4sex 
++ ~I can't think of anything right now.~ + t3.nothing 
++ ~There's nothing you can do.~ + t3.nothing 
END 

IF ~~ t3.gear 
SAY ~Just give me what you want me to carry.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t3.watch 
SAY ~Sure, and I'll take your chores tonight. You could do with a rest.~ 
IF ~~ THEN EXIT 
END 
END 

/* Talk 4 "You gotta have faith," pt 2 (with special entries for evil PCs - second conversion talk) */ 

CHAIN
IF ~Global("B!GavTalk","GLOBAL",8)~ THEN ~B!GAVJ~ t4.1
~<CHARNAME>, what do you believe?~ [bgav107] 
DO ~SetGlobal("B!GavTalk","GLOBAL",9) RealSetGlobalTimer("B!GavT","GLOBAL",GAV_TIME)~
END
++ ~That's a vague question, if ever I heard one.~ EXTERN ~B!GavJ~ t4.2 
++ ~Don't you mean 'What do I believe in?' Like 'Who is your god?'~ DO ~SetGlobal("B!GavReligion","LOCALS",1)~ EXTERN ~B!GavJ~ t4.3 
++ ~I believe what I can see and touch.~ DO ~SetGlobal("B!GavRealist","LOCALS",1)~ EXTERN ~B!GavJ~ t4.4 
++ ~I believe that people are inherently good.~ DO ~SetGlobal("B!GavHumanNature","LOCALS",1)~ EXTERN ~B!GavJ~ t4.5 
++ ~I believe that it's every <PRO_MANWOMAN> for <PRO_HIMHER>self.~ DO ~SetGlobal("B!GavHumanNature","LOCALS",1)~ EXTERN ~B!GavJ~ t4.6 
++ ~I believe I'll swat you over the head with this stick if you keep asking pointless questions.~ EXTERN ~B!GavJ~ t4.7 

APPEND ~B!GavJ~ 

IF ~~ t4.2 
SAY ~That was the point. What do you make of the question?~ 
++ ~I think you're asking me about my god, or maybe about some higher power.~ DO ~SetGlobal("B!GavReligion","LOCALS",1)~ + t4.3 
++ ~Maybe you're asking me whether I believe more than what my eyes and ears tell me.~ DO ~SetGlobal("B!GavRealist","LOCALS",1)~ + t4.4 
++ ~Are you asking me about my opinion of a person's basic nature?~ DO ~SetGlobal("B!GavHumanNature","LOCALS",1)~ + t4.8 
++ ~I think you've got too much free time on your hands.~ + t4.7 
END 

IF ~~ t4.3 
SAY ~That's one possible interpretation of my question. And since you've mentioned it, I'd like to know.~ 
+ ~OR(2) Race(Player1,ELF) Race(Player1,HALF_ELF)~ + ~Like all elves, I venerate the Seldarine.~ + t4.seldarine 
+ ~OR(2) Race(Player1,ELF) Race(Player1,HALF_ELF) Alignment(Player1,MASK_EVIL)~ + ~Aerdrie Faenya, the elven goddess of air and weather.~ + t4.contradiction 
+ ~OR(2) Race(Player1,ELF) Race(Player1,HALF_ELF) !Alignment(Player1,MASK_EVIL)~ + ~Aerdrie Faenya, the elven goddess of air and weather.~ + t4.goodgod 
+ ~OR(2) Race(Player1,ELF) Race(Player1,HALF_ELF) Alignment(Player1,MASK_EVIL)~ + ~Angharradh, the elven goddess of spring and fertility.~ + t4.contradiction 
+ ~OR(2) Race(Player1,ELF) Race(Player1,HALF_ELF) !Alignment(Player1,MASK_EVIL)~ + ~Angharradh, the elven goddess of spring and fertility.~ + t4.friendgod 
+ ~OR(2) Race(Player1,ELF) Race(Player1,HALF_ELF) Alignment(Player1,MASK_EVIL)~ + ~Correlon Larethian, the First of the Seldarine.~ + t4.contradiction 
+ ~OR(2) Race(Player1,ELF) Race(Player1,HALF_ELF) !Alignment(Player1,MASK_EVIL)~ + ~Correlon Larethian, the First of the Seldarine.~ + t4.goodgod 
+ ~OR(2) Race(Player1,ELF) Race(Player1,HALF_ELF) Alignment(Player1,MASK_EVIL)~ + ~Deep Sashelas, the elven Lord of the Undersea.~ + t4.contradiction 
+ ~OR(2) Race(Player1,ELF) Race(Player1,HALF_ELF) !Alignment(Player1,MASK_EVIL)~ + ~Deep Sashelas, the elven Lord of the Undersea.~ + t4.goodgod 
+ ~OR(2) Race(Player1,ELF) Race(Player1,HALF_ELF)~ + ~Erevan Ilesere, the elven god of mischief.~ + t4.neutralgod 
+ ~OR(2) Race(Player1,ELF) Race(Player1,HALF_ELF)~ + ~Fenmarel Mestarine, the god of wild elves.~ + t4.neutralgod 
+ ~OR(2) Race(Player1,ELF) Race(Player1,HALF_ELF) Alignment(Player1,MASK_EVIL)~ + ~Hanali Celanil, the elven goddess of love and beauty.~ + t4.contradiction 
+ ~OR(2) Race(Player1,ELF) Race(Player1,HALF_ELF) !Alignment(Player1,MASK_EVIL)~ + ~Hanali Celanil, the elven goddess of love and beauty.~ + t4.friendgod 
+ ~OR(2) Race(Player1,ELF) Race(Player1,HALF_ELF) Alignment(Player1,MASK_EVIL)~ + ~Labelas Enoreth, the elven Sage at Sunset.~ + t4.contradiction 
+ ~OR(2) Race(Player1,ELF) Race(Player1,HALF_ELF) !Alignment(Player1,MASK_EVIL)~ + ~Labelas Enoreth, the elven Sage at Sunset.~ + t4.goodgod 
+ ~OR(2) Race(Player1,ELF) Race(Player1,HALF_ELF) Alignment(Player1,MASK_EVIL)~ + ~Rillifane Rallathil, the elven Leaf Lord.~ + t4.contradiction 
+ ~OR(2) Race(Player1,ELF) Race(Player1,HALF_ELF) !Alignment(Player1,MASK_EVIL)~ + ~Rillifane Rallathil, the elven Leaf Lord.~ + t4.goodgod 
+ ~OR(2) Race(Player1,ELF) Race(Player1,HALF_ELF) Alignment(Player1,MASK_EVIL)~ + ~Sehanine Moonbow, the elven goddess of the moon and stars, and of dreams.~ + t4.contradiction 
+ ~OR(2) Race(Player1,ELF) Race(Player1,HALF_ELF) !Alignment(Player1,MASK_EVIL)~ + ~Sehanine Moonbow, the elven goddess of the moon and stars, and of dreams.~ + t4.friendgod 
+ ~OR(2) Race(Player1,ELF) Race(Player1,HALF_ELF)~ + ~Shevarash, the elven god of vengeance.~ + t4.neutralgod 
+ ~OR(2) Race(Player1,ELF) Race(Player1,HALF_ELF) Alignment(Player1,MASK_EVIL)~ + ~Solonor Thelandira, the elven god of archery.~ + t4.contradiction 
+ ~OR(2) Race(Player1,ELF) Race(Player1,HALF_ELF) !Alignment(Player1,MASK_EVIL)~ + ~Solonor Thelandira, the elven god of archery.~ + t4.goodgod 
+ ~Race(Player1,DWARF) Alignment(Player1,MASK_EVIL)~ + ~Abbathor, the dwarven god of wealth... or greed.~ + t4.evilgod 
+ ~Race(Player1,DWARF) Alignment(Player1,MASK_EVIL)~ + ~Berronar Truesilver, the dwarven goddess of the home.~ + t4.contradiction 
+ ~Race(Player1,DWARF) !Alignment(Player1,MASK_EVIL)~ + ~Berronar Truesilver, the dwarven goddess of the home.~ + t4.goodgod 
+ ~Race(Player1,DWARF) Alignment(Player1,MASK_EVIL)~ + ~Clanggedin Silverbeard, the dwarven god of battle.~ + t4.contradiction 
+ ~Race(Player1,DWARF) !Alignment(Player1,MASK_EVIL)~ + ~Clanggedin Silverbeard, the dwarven god of battle.~ + t4.goodgod 
+ ~Race(Player1,DWARF) Alignment(Player1,MASK_EVIL)~ + ~Dugmaren Brightmantle, the dwarven god of invention.~ + t4.contradiction 
+ ~Race(Player1,DWARF) !Alignment(Player1,MASK_EVIL)~ + ~Dugmaren Brightmantle, the dwarven god of invention.~ + t4.goodgod 
+ ~Race(Player1,DWARF)~ + ~Dumathoin, the dwarven god of mining.~ + t4.neutralgod 
+ ~Race(Player1,DWARF) Alignment(Player1,MASK_EVIL)~ + ~Haela Brightaxe, the dwarven goddess of luck in battle.~ + t4.contradiction 
+ ~Race(Player1,DWARF) !Alignment(Player1,MASK_EVIL)~ + ~Haela Brightaxe, the dwarven goddess of luck in battle.~ + t4.goodgod 
+ ~Race(Player1,DWARF) Alignment(Player1,MASK_EVIL)~ + ~Moradin, the dwarven god of smithing and creation.~ + t4.contradiction 
+ ~Race(Player1,DWARF) !Alignment(Player1,MASK_EVIL)~ + ~Moradin, the dwarven god of smithing and creation.~ + t4.goodgod 
+ ~Race(Player1,DWARF) Alignment(Player1,MASK_EVIL)~ + ~Vergadain, the dwarven god of luck.~ + t4.contradiction 
+ ~Race(Player1,DWARF) !Alignment(Player1,MASK_EVIL)~ + ~Vergadain, the dwarven god of luck.~ + t4.goodgod 
+ ~Race(Player1,GNOME) Alignment(Player1,MASK_EVIL)~ + ~Baravar Cloakshadow, the gnomish god of illusions.~ + t4.evilgod 
+ ~Race(Player1,GNOME) Alignment(Player1,MASK_EVIL)~ + ~Baervan Wildwanderer, the gnomish god of nature.~ + t4.contradiction 
+ ~Race(Player1,GNOME) !Alignment(Player1,MASK_EVIL)~ + ~Baervan Wildwanderer, the gnomish god of nature.~ + t4.goodgod 
+ ~Race(Player1,GNOME)~ + ~Callarduran Smoothhands, the gnomish god of stone.~ + t4.neutralgod 
+ ~Race(Player1,GNOME) Alignment(Player1,MASK_EVIL)~ + ~Flandar Steelskin, the gnomish Master of Metal.~ + t4.contradiction 
+ ~Race(Player1,GNOME) !Alignment(Player1,MASK_EVIL)~ + ~Flandar Steelskin, the gnomish Master of Metal.~ + t4.goodgod 
+ ~Race(Player1,GNOME) Alignment(Player1,MASK_EVIL)~ + ~Gaerdal Ironhand, the gnomish god of vigilance.~ + t4.contradiction 
+ ~Race(Player1,GNOME) !Alignment(Player1,MASK_EVIL)~ + ~Gaerdal Ironhand, the gnomish god of vigilance.~ + t4.goodgod 
+ ~Race(Player1,GNOME) Alignment(Player1,MASK_EVIL)~ + ~Garl Glittergold, the gnomish god of gems.~ + t4.contradiction 
+ ~Race(Player1,GNOME) !Alignment(Player1,MASK_EVIL)~ + ~Garl Glittergold, the gnomish god of gems.~ + t4.goodgod 
+ ~Race(Player1,GNOME) Alignment(Player1,MASK_EVIL)~ + ~Segojan Earthcaller, the gnomish Lord of the Burrow.~ + t4.contradiction 
+ ~Race(Player1,GNOME) !Alignment(Player1,MASK_EVIL)~ + ~Segojan Earthcaller, the gnomish Lord of the Burrow.~ + t4.goodgod 
+ ~Race(Player1,GNOME) Alignment(Player1,MASK_EVIL)~ + ~Urdlen, the gnomish Crawler Below.~ + t4.evilgod 
+ ~Race(Player1,HALFLING) Alignment(Player1,MASK_EVIL)~ + ~Avoreen, the halfling god of defense.~ + t4.contradiction 
+ ~Race(Player1,HALFLING) !Alignment(Player1,MASK_EVIL)~ + ~Avoreen, the halfling god of defense.~ + t4.goodgod 
+ ~Race(Player1,HALFLING)~ + ~Brandobaris, the hafling god of stealth and adventure.~ + t4.neutralgod 
+ ~Race(Player1,HALFLING) Alignment(Player1,MASK_EVIL)~ + ~Cyrrollalee, the halfling goddess of friendship and the home.~ + t4.contradiction 
+ ~Race(Player1,HALFLING) !Alignment(Player1,MASK_EVIL)~ + ~Cyrrollalee, the halfling goddess of friendship and the home.~ + t4.goodgod 
+ ~Race(Player1,HALFLING) Alignment(Player1,MASK_EVIL)~ + ~Sheela Peryroyl, the halfling goddess of nature.~ + t4.contradiction 
+ ~Race(Player1,HALFLING) !Alignment(Player1,MASK_EVIL)~ + ~Sheela Peryroyl, the halfling goddess of nature.~ + t4.goodgod 
+ ~Race(Player1,HALFLING)~ + ~Urogalan, the hafling god of the earth.~ + t4.neutralgod 
+ ~Race(Player1,HALFLING) Alignment(Player1,MASK_EVIL)~ + ~Yondalla, the halfling Protector and Provider.~ + t4.contradiction 
+ ~Race(Player1,HALFLING) !Alignment(Player1,MASK_EVIL)~ + ~Yondalla, the halfling Protector and Provider.~ + t4.friendgod 
+ ~Alignment(Player1,MASK_EVIL)~ + ~Bane, the Black Hand of Tyranny.~ + t4.evilgod 
+ ~Alignment(Player1,MASK_EVIL)~ + ~Chauntea, goddess of farmers.~ + t4.contradiction  
+ ~!Alignment(Player1,MASK_EVIL)~ + ~Chauntea, goddess of farmers.~ + t4.friendgod 
+ ~Alignment(Player1,MASK_EVIL)~ + ~Cyric, Lord of Chaos.~ + t4.evilgod 
++ ~Kelemvor, god of the dead.~ + t4.neutralgod 
+ ~!Alignment(Player1,MASK_EVIL)~ + ~I worship Lathander, too.~ + t4.lathander 
+ ~Alignment(Player1,MASK_EVIL)~ + ~I worship Lathander, too.~ + t4.contradiction 
+ ~Alignment(Player1,MASK_EVIL)~ + ~Mystra, goddess of magic.~ + t4.contradiction  
+ ~!Alignment(Player1,MASK_EVIL)~ + ~Mystra, goddess of magic.~ + t4.goodgod 
++ ~Oghma, god of knowledge and bards.~ + t4.friendgod 
+ ~Alignment(Player1,MASK_EVIL)~ + ~Selûne, goddess of the moon and stars.~ + t4.contradiction  
+ ~!Alignment(Player1,MASK_EVIL)~ + ~Selûne, goddess of the moon and stars.~ + t4.friendgod 
+ ~Alignment(Player1,MASK_EVIL)~ + ~Shar, the goddess of loss.~ + t4.evilgod 
++ ~Silvanus, god of wild nature.~ + t4.neutralgod 
+ ~Alignment(Player1,MASK_EVIL)~ + ~Sune, goddess of beauty.~ + t4.contradiction  
+ ~!Alignment(Player1,MASK_EVIL)~ + ~Sune, goddess of beauty.~ + t4.friendgod 
+ ~Alignment(Player1,MASK_EVIL)~ + ~Talos, Lord of Destruction.~ + t4.evilgod 
++ ~Tempus, God of Battle.~ + t4.neutralgod 
+ ~Alignment(Player1,MASK_EVIL)~ + ~Torm, god of duty.~ + t4.contradiction  
+ ~!Alignment(Player1,MASK_EVIL)~ + ~Torm, god of duty.~ + t4.friendgod 
+ ~Alignment(Player1,MASK_EVIL)~ + ~Tyr, the Evenhanded.~ + t4.contradiction  
+ ~!Alignment(Player1,MASK_EVIL)~ + ~Tyr, the Evenhanded.~ + t4.friendgod 
++ ~Ubtao, god of creation.~ + t4.neutralgod 
+ ~Alignment(Player1,MASK_EVIL)~ + ~Auril, goddess of winter.~ + t4.evilgod 
+ ~Alignment(Player1,MASK_EVIL)~ + ~Mask, god of thieves.~ + t4.evilgod 
+ ~Alignment(Player1,MASK_EVIL)~ + ~Beshaba, the Mistress of Misfortune.~ + t4.evilgod 
++ ~Gond, the Wonderbringer.~ + t4.friendgod 
++ ~Helm, the Vigilant One.~ + t4.neutralgod 
+ ~Alignment(Player1,MASK_EVIL)~ + ~Ilmater, the Crying God.~ + t4.contradiction  
+ ~!Alignment(Player1,MASK_EVIL)~ + ~Ilmater, the Crying God.~ + t4.friendgod 
+ ~Alignment(Player1,MASK_EVIL)~ + ~Loviatar, the Mistress of Pain.~ + t4.evilgod 
+ ~Alignment(Player1,MASK_EVIL)~ + ~Mielikki, the Forest Queen.~ + t4.contradiction  
+ ~!Alignment(Player1,MASK_EVIL)~ + ~Mielikki, the Forest Queen.~ + t4.friendgod 
+ ~Alignment(Player1,MASK_EVIL)~ + ~Tymora, the Lady Who Smiles.~ + t4.contradiction  
+ ~!Alignment(Player1,MASK_EVIL)~ + ~Tymora, the Lady Who Smiles.~ + t4.friendgod 
+ ~Alignment(Player1,MASK_EVIL)~ + ~Umberlee, the Queen of the Depths.~ + t4.evilgod 
++ ~Waukeen, the Merchant's Friend, though Lliira watches after her faithful now.~ + t4.neutralgod 
++ ~Azuth, god of mages.~ + t4.neutralgod 
++ ~Deneir, the Scribe of Oghma.~ + t4.neutralgod 
+ ~Alignment(Player1,MASK_EVIL)~ + ~Eldath of the Singing Waters.~ + t4.contradiction  
+ ~!Alignment(Player1,MASK_EVIL)~ + ~Eldath of the Singing Waters.~ + t4.goodgod 
+ ~Alignment(Player1,MASK_EVIL)~ + ~Lliira, goddess of joy.~ + t4.contradiction  
+ ~!Alignment(Player1,MASK_EVIL)~ + ~Lliira, goddess of joy.~ + t4.goodgod 
+ ~Alignment(Player1,MASK_EVIL)~ + ~Malar, the Beastlord.~ + t4.evilgod 
+ ~Alignment(Player1,MASK_EVIL)~ + ~Milil, Lord of Song.~ + t4.contradiction  
+ ~!Alignment(Player1,MASK_EVIL)~ + ~Milil, Lord of Song.~ + t4.goodgod 
++ ~Shaundakul, the Wanderer.~ + t4.neutralgod 
+ ~Alignment(Player1,MASK_EVIL)~ + ~Talona, the Lady of Poison.~ + t4.evilgod 
+ ~Alignment(Player1,MASK_EVIL)~ + ~Garagos, Master of All Weapons.~ + t4.evilgod 
++ ~Hoar, god of just retrubution.~ + t4.neutralgod 
++ ~The Red Knight, Lady of Strategy.~ + t4.neutralgod 
++ ~Savras, god of Divination.~ + t4.neutralgod 
++ ~Sharess, goddess of pleasure.~ + t4.neutralgod 
+ ~Alignment(Player1,MASK_EVIL)~ + ~Velsharoon, the Necromancer.~ + t4.evilgod 
++ ~I am Faithless.~ + t4.faithless 
END

IF ~~ t4.faithless 
SAY ~You walk a dangerous path, <CHARNAME>! Death can come at any time, even for those who are not adventurers. Do you want to spend eternity trapped in the Wall of the Faithless?~ 
++ ~What is the Wall of the Faithless, exactly?~ + t4.wall 
++ ~Good point. Maybe I need to think some more about my faith.~ + t4.faith 
++ ~I just haven't found a god whose nature suits me.~ + t4.faith 
++ ~I'll take my chances.~ + t4.faith 
++ ~Faith is a personal thing, Gavin. You can't advise me.~ + t4.faith 
++ ~You have no right to tell me what I should or should not believe.~ + t4.nosey 
END 

IF ~~ t4.wall 
SAY ~When mortals die, their souls go to Kelemvor, the god of the dead, on the Fugue Plane. There, the avatars of their gods claim them and take the souls of the deceased to reside on their deities' home planes.~ 
= ~When a mortal has no god, whether by choice or because his god has died, Kelemvor consigns his soul to the Wall of the Faithless. The souls are trapped in an unbreakable web of slime and mold.~ 
= ~Over time, the trapped souls lose any sense of identity, and eventually, they dissolve into the wall itself and cease to be.~ 
= ~Lemurs, lesser demons, prey upon souls trapped in the wall, stealing them away and taking them back to the Abyss to suffer eternal torment.~ 
= ~This is the fate that awaits you, <CHARNAME>, if you die without a patron.~ 
++ ~That doesn't seem fair!~ + t4.fair 
++ ~So all I have to do is declare a patron and I'm saved?~ + t4.false 
++ ~I guess I need to give some thought to finding a patron.~ + t4.faith 
++ ~I'll take my chances.~ + t4.faith 
++ ~Oblivion isn't so bad. It's certainly better than slavishly following the decrees of some god.~ + t4.choice 
++ ~Honestly, Gavin, this is none of your business.~ + t4.nosey 
END 

IF ~~ t4.faith 
SAY ~I can't tell you what to believe. All I can do is urge you to think about it. I know it seems foolish to waste time and effort pondering the merits of different faiths, but eternity is a long time to regret your decision now.~ 
IF ~~ THEN + t4.9 
END 

IF ~~ t4.nosey 
SAY ~Perhaps I am being intrusive, but I am only concerned about the future wellbeing of your soul. I will desist, though, since I can see this is not something you want to talk about.~ 
IF ~~ THEN + t4.9 
END 

IF ~~ t4.fair 
SAY ~Fairness is a mortal concept, not a godly one. We can't even hope to understand the ways of the gods, let alone judge the equity of their decisions.~ 
IF ~~ THEN + t4.faith 
END 

IF ~~ t4.false 
SAY ~Paying lip-service to the gods is not enough. Those who declare a faith but don't embrace it suffer the same fate as the Faithless.~ 
IF ~~ THEN + t4.faith 
END 

IF ~~ t4.choice 
SAY ~If that is your choice, so be it, but eternity is a long time to regret decisions you make now.~ 
IF ~~ THEN + t4.9 
END 

IF ~~ t4.seldarine 
SAY ~Yes, I understand that is not unusual among elves. As a human I find the concept of choosing more than one god as a patron strange, but then, perhaps you find human customs odd, as well.~ 
IF ~~ THEN + t4.9 
END 

IF ~~ t4.contradiction 
SAY ~No offense, <CHARNAME>, but isn't that a bit of a contradiction, based on your... er... personal values?~ 
++ ~People can change, Gavin, and a desire to better oneself is only natural. Is it wrong to aspire toward an ideal?~ + t4.convert 
++ ~Ironic, isn't it?~ + t4.irony 
++ ~My beliefs are my affair.~ + t4.nosey 
+ ~!Race(Player1,HUMAN)~ + ~Non-human pantheons are not as diverse as human ones. I don't have a lot of options.~ + t4.nonhuman 
END 

IF ~~ t4.convert 
SAY ~Since you do seek to better yourself, would you ever consider converting? Leaving selfishness and deceit behind and embracing a more benevolent outlook?~ 
+ ~!Global("B!GavT4Love","LOCALS",1)~ + ~I'd consider it, yes.~ DO ~SetGlobal("B!GavT4Love","LOCALS",1) 
      IncrementGlobal("B!GavLove","GLOBAL",1) 
      IncrementGlobal("B!GavChange","GLOBAL",1)~ + t4.glad 
+ ~Global("B!GavT4Love","LOCALS",1)~ + ~I'd consider it, yes.~ DO ~IncrementGlobal("B!GavChange","GLOBAL",1)~ + t4.glad 
++ ~I would need to think about it more.~ + t4.think 
++ ~No, I don't think I can change that much.~ + t4.nochange 
END 

IF ~~ t4.irony 
SAY ~Not if you mean it. Since you put your faith in a benevolent deity, might you not take that as a sign that you are meant to better yourself? Leave selfishness and deceit behind and completely embrace your deity's teachings?~ 
+ ~!Global("B!GavT4Love","LOCALS",1)~ + ~I'd consider it, yes.~ DO ~SetGlobal("B!GavT4Love","LOCALS",1) 
      IncrementGlobal("B!GavLove","GLOBAL",1) 
      IncrementGlobal("B!GavChange","GLOBAL",1)~ + t4.glad 
+ ~Global("B!GavT4Love","LOCALS",1)~ + ~I'd consider it, yes.~ DO ~IncrementGlobal("B!GavChange","GLOBAL",1)~ + t4.glad 
++ ~I would need to think about it more.~ + t4.think 
++ ~No, I don't think I can change that much.~ + t4.nochange 
END 

IF ~~ t4.nonhuman 
SAY ~You always have options. Since you have found your faith, could you not take that as a sign that you are meant to better yourself? Leave selfishness and deceit behind and completely embrace your deity's teachings?~ 
+ ~!Global("B!GavT4Love","LOCALS",1)~ + ~I'd consider it, yes.~ DO ~SetGlobal("B!GavT4Love","LOCALS",1) 
      IncrementGlobal("B!GavLove","GLOBAL",1) 
      IncrementGlobal("B!GavChange","GLOBAL",1)~ + t4.glad 
+ ~Global("B!GavT4Love","LOCALS",1)~ + ~I'd consider it, yes.~ DO ~IncrementGlobal("B!GavChange","GLOBAL",1)~ + t4.glad 
++ ~I would need to think about it more.~ + t4.think 
++ ~No, I don't think I can change that much.~ + t4.nochange 
END 

IF ~~ t4.glad 
SAY ~Well, that's good to hear!~ 
IF ~~ THEN EXIT 
END 

IF ~~ t4.nochange 
SAY ~Still, I won't stop hoping. There's always another morning.~ 
IF ~~ THEN + t4.9 
END 

IF ~~ t4.friendgod 
SAY ~That is fortunate! Our faiths are allied with each other. I hope our causes will be, too.~ 
+ ~!Global("B!GavT4Love","LOCALS",1)~ + ~I hope so, too.~ DO ~SetGlobal("B!GavT4Love","LOCALS",1) 
      IncrementGlobal("B!GavLove","GLOBAL",1)~ + t4.good  
+ ~Global("B!GavT4Love","LOCALS",1)~ + ~I hope so, too.~ + t4.good  
+ ~!Global("B!GavT4Love","LOCALS",1)~ + ~They seem to be, so far.~ DO ~SetGlobal("B!GavT4Love","LOCALS",1) 
      IncrementGlobal("B!GavLove","GLOBAL",1)~ + t4.good  
+ ~Global("B!GavT4Love","LOCALS",1)~ + ~They seem to be, so far.~ + t4.good  
++ ~Time will tell.~ + t4.nopromises 
++ ~There are no guarantees we will get along just because our gods are friends.~ + t4.nopromises 
END 

IF ~~ t4.lathander 
SAY ~That is fortunate! We share the same faith, so it's likely we'll share the same causes, too.~ 
+ ~!Global("B!GavT4Love","LOCALS",1)~ + ~I hope so.~ DO ~SetGlobal("B!GavT4Love","LOCALS",1) 
      IncrementGlobal("B!GavLove","GLOBAL",1)~ + t4.good  
+ ~Global("B!GavT4Love","LOCALS",1)~ + ~I hope so.~ + t4.good  
+ ~!Global("B!GavT4Love","LOCALS",1)~ + ~It seems that way, so far.~ DO ~SetGlobal("B!GavT4Love","LOCALS",1) 
      IncrementGlobal("B!GavLove","GLOBAL",1)~ + t4.good  
+ ~Global("B!GavT4Love","LOCALS",1)~ + ~It seems that way, so far.~ + t4.good  
++ ~Time will tell.~ + t4.nopromises 
++ ~There are no guarantees we will get along just because we worship the same god.~ + t4.nopromises 
END 

IF ~~ t4.good 
SAY ~It bodes well for our future.~ 
IF ~~ THEN + t4.9 
END 

IF ~~ t4.nopromises 
SAY ~Still, I am optimistic. People who hold similar beliefs often get along quite well. It bodes well for the future.~ 
IF ~~ THEN + t4.9 
END 

IF ~~ t4.bad 
SAY ~Still, I will not give up all hope. We might yet find some common ground between us.~ 
IF ~~ THEN + t4.9 
END 

IF ~~ t4.evil 
SAY ~That bodes well for our future, but I have to ask. Would you ever consider finding a new patron? If you aspire to better things, would it not make sense to see if there is some other god whose nature suits you better?~ 
+ ~Class(Player1,CLERIC_ALL)~ + ~That would present some problems, wouldn't you say? I am a cleric, after all.~ + t4.evilcleric 
++ ~I need to think about it.~ + t4.think 
++ ~I've been considering that myself.~ + t4.convert 
++ ~No, I think not.~ + t4.bad 
END 

IF ~~ t4.evilcleric 
SAY ~That does present some problems, doesn't it?~ 
IF ~~ THEN + t4.bad 
END 

IF ~~ t4.think 
SAY ~That would probably be a good idea. If your values have changed, it would serve you well to consider all possibilities.~ 
IF ~~ THEN + t4.9 
END 

IF ~~ t4.goodgod 
SAY ~Our faiths, at least, are in accord. I hope our causes will be, too.~ 
+ ~!Global("B!GavT4Love","LOCALS",1)~ + ~I hope so, too.~ DO ~SetGlobal("B!GavT4Love","LOCALS",1) 
      IncrementGlobal("B!GavLove","GLOBAL",1)~ + t4.good  
+ ~Global("B!GavT4Love","LOCALS",1)~ + ~I hope so, too.~ + t4.good  
+ ~!Global("B!GavT4Love","LOCALS",1)~ + ~They seem to be, so far.~ DO ~SetGlobal("B!GavT4Love","LOCALS",1) 
      IncrementGlobal("B!GavLove","GLOBAL",1)~ + t4.good  
+ ~Global("B!GavT4Love","LOCALS",1)~ + ~They seem to be, so far.~ + t4.good  
++ ~Time will tell.~ + t4.nopromises 
++ ~There are no guarantees we will get along just because our gods are both benevolent deities.~ + t4.nopromises 
END 

IF ~~ t4.neutralgod 
SAY ~Well, at least our faiths are not at odds with each other. I hope our causes will be in accord.~ 
+ ~!Global("B!GavT4Love","LOCALS",1)~ + ~I hope so, too.~ DO ~SetGlobal("B!GavT4Love","LOCALS",1) 
      IncrementGlobal("B!GavLove","GLOBAL",1)~ + t4.good  
+ ~Global("B!GavT4Love","LOCALS",1)~ + ~I hope so, too.~ + t4.good  
+ ~!Global("B!GavT4Love","LOCALS",1)~ + ~They seem to be, so far.~ DO ~SetGlobal("B!GavT4Love","LOCALS",1) 
      IncrementGlobal("B!GavLove","GLOBAL",1)~ + t4.good  
+ ~Global("B!GavT4Love","LOCALS",1)~ + ~They seem to be, so far.~ + t4.good  
++ ~Time will tell.~ + t4.nopromises 
++ ~There are no guarantees we will get along just because our gods are not enemies.~ + t4.bad 
END 

IF ~~ t4.evilgod 
SAY ~Hmm. That's unfortunate. I only hope we'll be able to get along, even if our faiths are at odds with each other.~ 
+ ~!Global("B!GavT4Love","LOCALS",1)~ + ~I hope so, too.~ DO ~SetGlobal("B!GavT4Love","LOCALS",1) 
      IncrementGlobal("B!GavLove","GLOBAL",1)~ + t4.evil  
+ ~Global("B!GavT4Love","LOCALS",1)~ + ~I hope so, too.~ + t4.evil  
+ ~!Global("B!GavT4Love","LOCALS",1)~ + ~They seem to be, so far.~ DO ~SetGlobal("B!GavT4Love","LOCALS",1) 
      IncrementGlobal("B!GavLove","GLOBAL",1)~ + t4.evil  
+ ~Global("B!GavT4Love","LOCALS",1)~ + ~They seem to be, so far.~ + t4.evil  
++ ~Time will tell.~ + t4.bad 
++ ~I wouldn't count on it, if I were you.~ + t4.bad 
END 

IF ~~ t4.4 
SAY ~I could have been asking you whether you believe in things beyond your perception. Do you?~ 
++ ~No. If I can see it and I can touch it, it's real.~ + t4.reality 
+ ~!Global("B!GavLT4Love","LOCALS",1)~ + ~Emotions are intangible, but I know they exist, so yes, I guess so.~ DO ~SetGlobal("B!GavLT4Love","GLOBAL",1) 
      IncrementGlobal("B!GavLove","GLOBAL",1)~ + t4.emotion 
+ ~Global("B!GavLT4Love","LOCALS",1)~ + ~Emotions are intangible, but I know they exist, so yes, I guess so.~ + t4.emotion 
+ ~!Global("B!GavLT4Love","LOCALS",1)~ + ~It's a big world, Gavin. We can't sense all of it, but that doesn't mean it doesn't exist.~ DO ~SetGlobal("B!GavLT4Love","GLOBAL",1) 
      IncrementGlobal("B!GavLove","GLOBAL",1)~ + t4.wise 
+ ~Global("B!GavLT4Love","LOCALS",1)~ + ~It's a big world, Gavin. We can't sense all of it, but that doesn't mean it doesn't exist.~ + t4.wise 
++ ~Are you playing games with me?~ + t4.games 
++ ~I try not to think about too many abstract ideas. It tends to slow my reflexes.~ + t4.deflect 
END 

IF ~~ t4.reality 
SAY ~If I cover this coin with my hand, does it cease to exist? You can't see it or touch it.~ 
++ ~No good. I still know it's there.~ + t4.memory 
++ ~I can't see it or touch it, but you can.~ + t4.others 
++ ~Point taken.~ + t4.mystery 
++ ~That's an overly simple analogy, don't you think?~ + t4.simple 
END 

IF ~~ t4.memory 
SAY ~So, it exists because you remember it. But what of the coin in my pouch? You've never seen it. Does it exist?~ 
IF ~~ THEN + t4.madepoint 
END 

IF ~~ t4.madepoint 
SAY ~But that doesn't matter. I've made my point. There are a lot of things we have to take on faith, and a lot more is possible than we ever dreamed could be.~ 
IF ~~ THEN + t4.9 
END 

IF ~~ t4.others 
SAY ~So, you'll take my word for it because I can see and touch it. But what of the coin in my pouch? For all I know, it fell out days ago. Does that exist?~ 
IF ~~ THEN + t4.madepoint 
END 

IF ~~ t4.mystery 
SAY ~Yes, there are a lot of things we have to take on faith. More is possible than we ever dreamed could be.~ 
IF ~~ THEN + t4.9 
END 

IF ~~ t4.simple 
SAY ~Is it? It's hard to get more simple than a thing's existence, but even that is by no means certain. Consider the coin in my pouch. You've never seen it, or heard me mention it before now. Does it exist?~ 
IF ~~ THEN + t4.madepoint 
END 

IF ~~ t4.emotion 
SAY ~The reality of emotion as proof of the intangible. I like that. It's a lot deeper than it seems on the surface, because emotions can be so easily misconstrued. Is it disappointment, or is it boredom? An observer might not be able to tell, but that makes it no less real.~ 
IF ~~ THEN + t4.wise 
END 

IF ~~ t4.wise 
SAY ~You've got more wisdom than many, to understand that.~ 
IF ~~ THEN + t4.9 
END 

IF ~~ t4.games 
SAY ~No games, <CHARNAME>, though perhaps you tire of this conversation. Let's catch up with the others, then.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t4.deflect 
SAY ~It also tends to deflect the question. Nevermind. I'll leave you be.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t4.5 
SAY ~I'd like to believe that, too.~ 
IF ~Alignment(Player1,MASK_EVIL)~ THEN + t4.5evil 
IF ~!Alignment(Player1,MASK_EVIL)~ THEN + t4.5good 
END 

IF ~~ t4.5evil 
SAY ~I'm a little surprised to hear you say it, though.~ 
+ ~!Global("B!GavFT4Love","LOCALS",1)~ + ~I haven't had a normal life, Gavin. If things had been different, I'm sure I wouldn't have turned out the way I did.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1) 
      SetGlobal("B!GavFT4Love","LOCALS",1) 
      IncrementGlobal("B!GavChange","GLOBAL",1)~ + t4.nottoolate 
+ ~Global("B!GavFT4Love","LOCALS",1)~ + ~I haven't had a normal life, Gavin. If things had been different, I'm sure I wouldn't have turned out the way I did.~ DO ~IncrementGlobal("B!GavChange","GLOBAL",1)~ + t4.nottoolate 
+ ~!Global("B!GavFT4Love","LOCALS",1)~ + ~I think I *am* a good person, deep down. My actions haven't always been good, and I'm ashamed of that, but I've always intended to do the right thing.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1) 
      SetGlobal("B!GavFT4Love","LOCALS",1) 
      IncrementGlobal("B!GavChange","GLOBAL",1)~ + t4.nottoolate 
+ ~Global("B!GavFT4Love","LOCALS",1)~ + ~I think I *am* a good person, deep down. My actions haven't always been good, and I'm ashamed of that, but I've always intended to do the right thing.~ DO ~IncrementGlobal("B!GavChange","GLOBAL",1)~ + t4.nottoolate 
++ ~There are bound to be exceptions. I'm one.~ + t4.unrepentant 
++ ~If people weren't good by nature, they wouldn't be such easy targets for the rest of us.~ + t4.unrepentant 
END 

IF ~~ t4.nottoolate 
SAY ~I'm glad to hear you say that, <CHARNAME>. It gives me great hope for the future.~ 
= ~It's never too late to change, and even the oldest wound can be persuaded to heal, with the right medicine. You just have to believe it's possible.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t4.unrepentant 
SAY ~Oh, <CHARNAME>, why must you say these things? But I can't give up hope. I must not.~ 
IF ~~ THEN + t4.9 
END 

IF ~~ t4.5good  
SAY ~I'm not surprised to hear you say that, but it's good to hear, nonetheless.~ 
+ ~!Global("B!GavFT4Love","LOCALS",1)~ + ~I had a lot of love and support while I was growing up, though. Some people didn't, and if they turned out worse, I wouldn't blame them for it.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1) 
      SetGlobal("B!GavFT4Love","LOCALS",1)~ + t4.environment 
+ ~Global("B!GavFT4Love","LOCALS",1)~ + ~I had a lot of love and support while I was growing up, though. Some people didn't, and if they turned out worse, I wouldn't blame them for it.~ + t4.environment 
+ ~!Global("B!GavFT4Love","LOCALS",1)~ + ~Even good people make mistakes, though. Maybe there are some that just keep making them, even though they may want to do better.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1) 
      SetGlobal("B!GavFT4Love","LOCALS",1)~ + t4.environment 
+ ~Global("B!GavFT4Love","LOCALS",1)~ + ~Even good people make mistakes, though. Maybe there are some that just keep making them, even though they may want to do better.~ + t4.environment 
++ ~There are bound to be exceptions, though. Some people are just plain bad.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t4.unrepentant 
++ ~It's a pity, though, because it just makes us easy targets for those with less scruples.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t4.unrepentant 
END 

IF ~~ t4.environment 
SAY ~We have to keep hoping, <CHARNAME>. Even those that did not have the benefit of a loving home or who have made mistakes can be redeemed. I feel it in my soul.~ 
IF ~~ THEN + t4.9 
END 

IF ~~ t4.6 
SAY ~Do you really believe that, despite things that others have done for you, with no hope of reward? Do you really think people are evil by nature?~ 
+ ~Alignment(Player1,MASK_EVIL)~ + ~I do.~ + t4.badtothebone 
+ ~!Alignment(Player1,MASK_EVIL)~ + ~I do.~ + t4.exception 
++ ~No, not really.~ + t4.5 
END 

IF ~~ t4.badtothebone 
SAY ~How disappointing. I had hoped you would not be so cynical.~ 
+ ~!Global("B!GavFT4Love","LOCALS",1)~ + ~I haven't had a normal life, Gavin. If things had been different, I'm sure I wouldn't have turned out the way I did.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1) 
      SetGlobal("B!GavFT4Love","LOCALS",1) 
      IncrementGlobal("B!GavChange","GLOBAL",1)~ + t4.nottoolate 
+ ~Global("B!GavFT4Love","LOCALS",1)~ + ~I haven't had a normal life, Gavin. If things had been different, I'm sure I wouldn't have turned out the way I did.~ DO ~IncrementGlobal("B!GavChange","GLOBAL",1)~ + t4.nottoolate 
+ ~!Global("B!GavFT4Love","LOCALS",1)~ + ~I've tried to be better. My actions haven't always been good, and I'm ashamed of that, but I've always intended to do the right thing.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1) 
      SetGlobal("B!GavFT4Love","LOCALS",1) 
      IncrementGlobal("B!GavChange","GLOBAL",1)~ + t4.nottoolate 
+ ~Global("B!GavFT4Love","LOCALS",1)~ + ~I've tried to be better. My actions haven't always been good, and I'm ashamed of that, but I've always intended to do the right thing.~ DO ~IncrementGlobal("B!GavChange","GLOBAL",1)~ + t4.nottoolate 
++ ~Wishing won't change a person's nature.~ + t4.unrepentant 
++ ~I wouldn't mind if people were more gullible. They would be easier targets for the rest of us.~ + t4.unrepentant 
END 

IF ~~ t4.exception 
SAY ~So are you the lone exception?~ 
+ ~!Global("B!GavFT4Love","LOCALS",1)~ + ~I had a lot of love and support while I was growing up, though. Most didn't, and if they turned out worse, I wouldn't blame them for it.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1) 
      SetGlobal("B!GavFT4Love","LOCALS",1)~ + t4.environment 
+ ~Global("B!GavFT4Love","LOCALS",1)~ + ~I had a lot of love and support while I was growing up, though. Most didn't, and if they turned out worse, I wouldn't blame them for it.~ + t4.environment 
+ ~!Global("B!GavFT4Love","LOCALS",1)~ + ~Everyone makes mistakes. Maybe there are some that just keep making them, even if they want to do better.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1) 
      SetGlobal("B!GavFT4Love","LOCALS",1)~ + t4.environment 
+ ~Global("B!GavFT4Love","LOCALS",1)~ + ~Everyone makes mistakes. Maybe there are some that just keep making them, even if they want to do better.~ + t4.environment 
++ ~I wouldn't say I'm the only exception, but most people are just plain bad.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t4.unrepentant 
++ ~It would be nice if there were more exceptions. It would make them easier targets.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t4.unrepentant 
END 

IF ~~ t4.7 
SAY ~It's always possible, but will you humor me and answer the question? What do you believe?~ 
++ ~Maybe you're asking me about my god, or maybe about some higher power.~ DO ~SetGlobal("B!GavReligion","LOCALS",1)~ + t4.3 
++ ~Maybe you're asking me whether I believe more than what my eyes and ears tell me.~ DO ~SetGlobal("B!GavRealist","LOCALS",1)~ + t4.4 
++ ~Are you asking me about my opinion of a person's basic nature?~ DO ~SetGlobal("B!GavHumanNature","LOCALS",1)~ + t4.8 
++ ~No, Gavin, I don't want to answer.~ + t4.11 
END 

IF ~~ t4.8 
SAY ~If you like.~ 
++ ~I think people are basically good.~ + t4.5 
++ ~I think people are interested only in themselves.~ + t4.6 
END 

IF ~~ t4.9 
SAY ~Anything else?~ 
+ ~!Global("B!GavReligion","LOCALS",1)~ + ~Maybe you're asking me about my god, or maybe about some higher power.~ DO ~SetGlobal("B!GavReligion","LOCALS",1)~ + t4.3 
+ ~!Global("B!GavRealist","LOCALS",1)~ + ~Maybe you're asking me whether I believe more than what my eyes and ears tell me.~ DO ~SetGlobal("B!GavRealist","LOCALS",1)~ + t4.4 
++ ~Are you asking me about my opinion of a person's basic nature?~ DO ~SetGlobal("B!GavHumanNature","LOCALS",1)~ + t4.8 
++ ~That about covers it.~ + t4.10  
END 

IF ~~ t4.10 
SAY ~Thank you for indulging my curiosity.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t4.11 
SAY ~Then I won't trouble you more about it.~ 
IF ~~ THEN EXIT 
END 
END 

/* Talk 5 "Let me go," aka Gavin talks about ressurrection, with addendum to provide for Lanie */ 

CHAIN
IF ~Global("B!GavTalk","GLOBAL",10)~ THEN ~B!GAVJ~ t5.1
~<CHARNAME>, I've got something I need to talk to you about, and I doubt it's going to be a comfortable conversation for either of us.~ [bgav108] 
DO ~SetGlobal("B!GavTalk","GLOBAL",11) RealSetGlobalTimer("B!GavT","GLOBAL",GAV_TIME)~
END
++ ~An ominous beginning, but go on.~ EXTERN ~B!GavJ~ t5.2 
++ ~Then we shouldn't discuss it.~ EXTERN ~B!GavJ~ t5.3 
++ ~Maybe another time would be better?~ EXTERN ~B!GavJ~ t5.4 
APPEND ~B!GavJ~ 

IF ~~ t5.2 
SAY ~I'm mortal, <CHARNAME>, and like all things mortal, I will die.~ 
= ~I would rather this happen after your quest is completed, and after Lanie is grown and settled, but we can't name the hour of our death.~ 
= ~When this happens, I need you to promise you won't try to raise me.~ 
++ ~I'll do nothing of the kind! The gods bestow the power to raise the dead for a reason.~ + t5.5 
++ ~Why would you ask such a thing of me?~ + t5.6 
++ ~Nothing will happen to you, if I have any say in the matter.~ + t5.7 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~But what of us? What of our love?~ + t5.8 
++ ~I know this is important to you. I will do as you ask.~ + t5.9 
++ ~I can't make you that promise.~ + t5.10 
END 

IF ~~ t5.3 
SAY ~We have to discuss it. I'm sorry, but it isn't something we can ignore.~ 
IF ~~ THEN + t5.2 
END 

IF ~~ t5.4 
SAY ~There is no better time than the present. I hope it will not take long.~ 
IF ~~ THEN + t5.2 
END 

IF ~~ t5.5 
SAY ~The gods bestow the power to raise the dead for a number of reasons, but... let me explain.~ 
IF ~~ THEN + t5.6 
END 

IF ~~ t5.6 
SAY ~We who follow Lathander believe that the souls of the faithful return to Lathander. We consider it coming home to our god. We dwell with him for a time, then are returned to the mortal world in the bodies of newborns, completing the Great Cycle that begins and ends with birth.~ 
= ~Raising interrupts that cycle, returning the soul to the world of the living without the solace of a homecoming.~ 
= ~The only time this is condoned is if the deceased has unfinished business here on Toril.~ 
++ ~So, if you have 'unfinished business,' you could be raised?~ + t5.11 
++ ~And who decides that you have left work undone?~ + t5.12 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~But what of our love? Isn't that reason enough to come back?~ + t5.13 
++ ~I understand. I'll do as you ask.~ + t5.9 
++ ~I'm sorry, Gavin. I can't make any promises. I'd like to follow your wishes, but if I still need you, I'm going to have to attempt to raise you.~ + t5.14 
++ ~No. I won't agree to anything so foolish.~ + t5.14 
++ ~That spares me some guilt, at least. Now I just have to find a convenient way for you to die.~ + t5.15 
END 

IF ~~ t5.7 
SAY ~I'm glad you're looking out for me, but I leave all in Lathander's hands. If it's his will that I should return to him, there is no force on Toril that could prevent it, and if it is his will that I remain here, then I have nothing to worry about.~ 
++ ~And if it's his will that you be raised, you would accept that as readily?~ + t5.6 
++ ~Alright, but why are you determined not to be raised?~ + t5.6 
++ ~I know this is important to you, so I will do as you ask.~ + t5.9 
++ ~I can't make you any promises.~ + t5.10 
END 

IF ~~ t5.8 
SAY ~<CHARNAME>, beloved, please do not ask me to choose between you and my faith! Maybe I should explain.~ 
IF ~~ THEN + t5.6 
END 

IF ~~ t5.9 
SAY ~I am relieved, though I understand that if my time comes while I am with you, new questions might arise. If that happens, you'll get answers from High Mornmaster Arval at the Temple in Athkatla.~ 
IF ~~ THEN + t5.16 
END 

IF ~~ t5.10 
SAY ~All I can ask is that you consider my wishes, should I fall in your service. If that happens, you can seek the advice of High Mornmaster Arval at the Temple in Athkatla. He may be able to explain things in a way you find easier to understand.~ 
IF ~~ THEN + t5.16 
END

IF ~~ t5.11 
SAY ~Perhaps, though if I've fallen in battle, I would be in no position to say whether I had work left to do.~ 
IF ~~ THEN + t5.12 
END 

IF ~~ t5.12 
SAY ~I would consider my death as a sign that my work on Toril was done... though I am not arrogant enough to say whether Lathander would agree or disagree.~ 
= ~It is hard, <CHARNAME>. Since Lathander does permit resurrection, who am I to say whether death is a final reward or a test of faith?~ 
= ~Under the circumstances, I would prefer to leave the decision in the hands of those better schooled in my faith than I. High Mornmaster Arval would be able to answer these questions that I cannot.~ 
IF ~~ THEN + t5.16 
END 

IF ~~ t5.13 
SAY ~(sigh) I would want it, though my faith itself forbade it... though perhaps I am not the one who should make that decision.~ 
IF ~~ THEN + t5.12 
END 

IF ~~ t5.14 
SAY ~<CHARNAME>... please...~ 
IF ~~ THEN + t5.10 
END 

IF ~~ t5.15 
SAY ~Ha! You always were a clever one, <CHARNAME>, and always ready with a good joke...~ 
= ~That was a joke, wasn't it?~ 
IF ~~ THEN + t5.10 
END 

IF ~~ t5.16 
SAY ~There is one other matter, and it is more important than my continued existence on Toril.~ 
= ~Lanie resides at the Temple of Oghma in the Docks. Should I fall, please tell the priest of Oghma. He will break the news to Lanie, and notify my family in Ulgoth's Beard and Mornmaster Ormlyr at the Song of the Morning.~ 
++ ~What will happen to Lanie if you die?~ + t5.17 
++ ~If you die, I'll tell him.~ + t5.18 
++ ~We'll see.~ + t5.19 
++ ~If I even remember.~ + t5.19 
END 

IF ~~ t5.17 
SAY ~She will finish her studies and then she will go to my brother Gordon in Ulgoth's Beard. He has a family of his own, and I know that he and his wife will love Lanie as if she were their daughter.~ 
IF ~~ THEN + t5.18 
END 

IF ~~ t5.18 
SAY ~Thank you for agreeing to do this for me.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t5.19 
SAY ~Please, <CHARNAME>, this is no time for jest, assuming it is a jest. This is a child's life we're talking about.~ 
= ~Please... you're in Athkatla all the time. It isn't too much to ask.~ 
IF ~~ THEN EXIT 
END 
END 

/* Talk 6 "My brother's burden," aka Gavin discusses slavery, legal and otherwise (what can I say, he's got a huge soft spot for children and prostitutes) */ 

CHAIN
IF ~Global("B!GavTalk","GLOBAL",12)~ THEN ~B!GAVJ~ t6.1
~<CHARNAME>, have you ever seen something you've wanted to forget, but couldn't?~ [bgav109] 
DO ~SetGlobal("B!GavTalk","GLOBAL",13) RealSetGlobalTimer("B!GavT","GLOBAL",GAV_TIME)~
END
+ ~Gender(Player1,MALE)~ + ~Yes, that time you decided to sluice off in that stream. Some things are better left unseen.~ EXTERN ~B!GavJ~ t6.2 
+ ~Gender(Player1,FEMALE) !Global("B!GavRA","GLOBAL",2) !Global("B!GavRA","GLOBAL",4)~ + ~Yes, that time you decided to sluice off in that stream. Some things are better left unseen.~ EXTERN ~B!GavJ~ t6.3a 
+ ~Gender(Player1,FEMALE) Global("B!GavRA","GLOBAL",2) !Global("B!GavSex","GLOBAL",1)~ + ~Yes, that time you decided to sluice off in that stream. Some things are better left unseen.~ EXTERN ~B!GavJ~ t6.3b 
+ ~Gender(Player1,FEMALE) Global("B!GavRA","GLOBAL",2) Global("B!GavSex","GLOBAL",1)~ + ~Yes, that time you decided to sluice off in that stream. Some things are better left unseen.~ EXTERN ~B!GavJ~ t6.3d 
+ ~Gender(Player1,FEMALE) Global("B!GavRA","GLOBAL",4) !Global("B!GavSex","GLOBAL",1)~ + ~Yes, that time you decided to sluice off in that stream. Some things are better left unseen.~ EXTERN ~B!GavJ~ t6.3c 
+ ~Gender(Player1,FEMALE) Global("B!GavRA","GLOBAL",4) Global("B!GavSex","GLOBAL",1)~ + ~Yes, that time you decided to sluice off in that stream. Some things are better left unseen.~ EXTERN ~B!GavJ~ t6.3e 
++ ~How can you even ask that, knowing what I've been through?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1) 
      SetGlobal("B!GavT6Love","LOCALS",1)~ EXTERN ~B!GavJ~ t6.4 
++ ~I'll worry more when I can see horrors and forget them.~ EXTERN ~B!GavJ~ t6.5 
++ ~Not really. Bad things happen, even monstrous things. It doesn't do you any good to dwell on them.~ EXTERN ~B!GavJ~ t6.6 
++ ~Would it help to talk about it?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1) 
      SetGlobal("B!GavT6Love","LOCALS",1)~ EXTERN ~B!GavJ~ t6.7 
++ ~Here we go again. Gavin cries tears of blood for some fool too stupid to stay out of trouble. You should have been a priest of Ilmater.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1) 
      SetGlobal("B!GavT6Love","LOCALS",1)~ EXTERN ~B!GavJ~ t6.8 

APPEND ~B!GavJ~ 

IF ~~ t6.2 
SAY ~Heh. I didn't realize anyone could see me. Sorry about that.~ 
IF ~~ THEN + t6.9  
END 

IF ~~ t6.3a 
SAY ~Ilmater's blood, I didn't realize anyone could see me. I'm sorry.~ 
+ ~Global("B!GavRA","GLOBAL",1)~ + ~Don't apologize. I liked what I saw. It's just that the memory is rather distracting.~ + t6.3a1 
+ ~Global("B!GavRA","GLOBAL",3) Global("B!GavRomBreak","GLOBAL",1)~ + ~Don't apologize. I liked what I saw. It's just that with the way things are between us...~ + t6.3a2 
+ ~Global("B!GavRA","GLOBAL",3) Global("B!GavRomBreak","GLOBAL",2)~ + ~Don't apologize. I liked what I saw. It's just that with the way things are between us...~ + t6.3a3 
++ ~Next time, you might want to look around before you take your clothes off.~ + t6.3a4 
++ ~It isn't fair to show me things like that when I'm supposed to have my mind on someone else.~ + t6.3a5 
++ ~So how did you get that scar on your back?~ + t6.3a6 
++ ~There's something about you that I find repellent.~ + t6.3a7 
++ ~No offense. I prefer women.~ + t6.3a7 
END 

IF ~~ t6.3a1 
SAY ~You did? I mean... er... yes, but it's the principle of the thing...~ 
= ~Ahem.~ 
IF ~~ THEN + t6.9 
END 

IF ~~ t6.3a2 
SAY ~Nothing is broken beyond all mending, but we can talk about that later, if you like.~ 
IF ~~ THEN + t6.9 
END 

IF ~~ t6.3a3 
SAY ~Yes, some things are broken beyond all mending.~ 
IF ~~ THEN + t6.9 
END 

IF ~~ t6.3a4 
SAY ~I thought I did.~ 
IF ~~ THEN + t6.9 
END 

IF ~~ t6.3a5 
SAY ~Er... yes.~ 
IF ~~ THEN DO ~SetGlobal("B!GavRA","GLOBAL",3) 
      SetGlobal("B!GavRomBreak","GLOBAL",1) 
      IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t6.9 
END 

IF ~~ t6.3a6 
SAY ~When we were boys, Calahan and my brother were pretending to be Hurgan Stoneblade and throwing axes. Calahan missed.~ 
IF ~~ THEN + t6.9 
END 

IF ~~ t6.3a7 
SAY ~Good to know... I guess.~ 
IF ~~ THEN DO ~SetGlobal("B!GavRA","GLOBAL",3) 
      SetGlobal("B!GavRomBreak","GLOBAL",1) 
      IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t6.9 
END 

IF ~~ t6.3b 
SAY ~Oh, no. Do you... did you find the sight repulsive?~ 
++ ~Not at all! It's just that seeing you that way has made it a bit hard for me to think about other things, like my quest.~ + t6.3b1 
++ ~It does make me wonder what you'd look like if the water weren't so cold.~ + t6.3b2 
++ ~No, it's just that I thought we were saving that until after we're married. Now you've gone and spoiled the surprise.~ + t6.3b3 
++ ~Let's just say that when the time comes, we'll be blowing out all the lamps.~ + t6.3b4 
END 

IF ~~ t6.3b1 
SAY ~And we can't be having that, now, can we, love?~ 
IF ~~ THEN + t6.9 
END 

IF ~~ t6.3b2 
SAY ~Much different. Much, much different. Ahem.~ 
IF ~~ THEN + t6.9 
END 

IF ~~ t6.3b3 
SAY ~Oh, love, I'm sorry. Honestly, I didn't realize you could see me.~ 
IF ~~ THEN + t6.9 
END 

IF ~~ t6.3b4 
SAY ~Wonderful.~ 
IF ~~ THEN DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t6.9 
END 

IF ~~ t6.3c 
SAY ~Beshaba's breath. There's only one thing I've got that you'll accept, and you can't stand the sight of me?~ 
++ ~Not at all! It's just that seeing you that way has made it a bit hard for me to think about other things, like my quest.~ + t6.3c1 
++ ~It does make me wonder what you'd look like if the water weren't so cold.~ + t6.3b2 
++ ~I thought you'd be more manly. Your chest is as hairless as a babe's.~ + t6.3c2 
++ ~In the dark, all cats are gray.~ + t6.3b4 
END 

IF ~~ t6.3c1 
SAY ~Just give the word when you want me to come to you, then.~ 
IF ~~ THEN + t6.9 
END 

IF ~~ t6.3c2 
SAY ~I spend years of my life making sure my body is fit and strong, and she complains because I haven't got a pelt.~ 
IF ~~ THEN DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t6.9 
END 

IF ~~ t6.3d 
SAY ~Ilmater's blood, I thought...~ 
++ ~Oh, no! I enjoyed the view. It's just that seeing you that way has made it a bit hard for me to think about other things, like my quest.~ + t6.3d1 
++ ~(giggle) Don't worry. I know it was just the cold water.~ + t6.3d2 
++ ~If I saw you, anybody else could have, too. I thought that you only showed off for me.~ + t6.3d3 
++ ~There's a good reason I like it better when the lamps are out.~ + t6.3b4 
END 

IF ~~ t6.3d1 
SAY ~Is that so? Maybe we'll have to do something about that later, yes?~ 
IF ~~ THEN + t6.9 
END 

IF ~~ t6.3d2 
SAY ~That's right... cold water.~ 
IF ~~ THEN + t6.9 
END 

IF ~~ t6.3d3 
SAY ~I do... well, not showing off, exactly...~ 
= ~<CHARNAME>, love, I was filthy. I really needed a bath. There was really nothing more to it than that.~ 
IF ~~ THEN + t6.9 
END 

IF ~~ t6.3e 
SAY ~You've never complained before.~ 
++ ~I'm not complaining now! It's just that seeing you that way has made it a bit hard for me to think about other things, like my quest.~ + t6.3e1 
++ ~(giggle) Don't worry. I know it was just the cold water.~ + t6.3d2 
++ ~Usually, the only time I see you naked is before you come to bed. Seeing you out in the open like that, all pale and hairless, well...~ + t6.3c2 
++ ~In the dark, all cats are gray.~ + t6.3b4 
END 

IF ~~ t6.3e1 
SAY ~If you want me to come to you when you retire, say so, and I'll be there.~ 
IF ~~ THEN + t6.9 
END 

IF ~~ t6.4 
SAY ~I... I'm sorry. After everything you've been through, for me to make such a stupid remark... I'm sorry.~ 
IF ~~ THEN + t6.10 
END 

IF ~~ t6.5 
SAY ~And you have, too.~ 
IF ~~ THEN + t6.4 
END 

IF ~~ t6.6 
SAY ~But sometimes, you can't help it... but you've seen worse than I. And I'm an idiot.~ 
IF ~~ THEN + t6.4 
END 

IF ~~ t6.7 
SAY ~When I left your company, not long after we met, Lanie and I went to the Temple of Oghma. On the way, I saw a group of ruffians assaulting a prostitute, laughing while they beat her. She was crying, begging for help, and no one paid her any heed.~ 
= ~I did nothing to help her. I just picked Lanie up and carried her past, hiding her face so she wouldn't see what was happening. But she had to have heard it.~ 
= ~When we finally got to the temple and I put her down, she just looked at me, silent and grave. 'You saw and you did nothing,' her eyes said to me, and I had no answer.~ 
= ~I don't know what haunts me more, the viciousness of the attack, the indifference of the passers-by, or the accusation in my child's eyes.~ 
++ ~What could you have done? You couldn't have left Lanie alone to help the girl. Someone would have stolen her away.~ + t6.7a 
++ ~You made a mistake. You should have gone back once you saw that Lanie was safe.~ + t6.7b 
++ ~You could have called the guard, at least.~ + t6.7c 
++ ~What's done is done. Guilt will only drive you mad.~ + t6.7d 
++ ~This is Athkatla, Gavin. People see worse every day.~ + t6.7e 
++ ~What do you care what happens to some whore?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t6.7f 
END 

IF ~~ t6.7a 
SAY ~That was my fear, as well. Unattended children are not safe in Athkatla.~ 
IF ~~ THEN + t6.11 
END 

IF ~~ t6.7b 
SAY ~I tried going back to see if the woman was all right, but by the time I found a monk to watch Lanie for a moment, the fight was over. She was gone, and there was nothing but blood on the paving stones to show that any wrong had ever been done. I asked where she went, or if she was even alive, but no one would answer. No one seemed to care.~ 
IF ~~ THEN + t6.11 
END 

IF ~~ t6.7c 
SAY ~What guard? I saw none from the moment I entered the Docks.~ 
IF ~~ THEN + t6.7b 
END 

IF ~~ t6.7d 
SAY ~It may, and it should. I felt helpless.~ 
IF ~~ THEN + t6.7b 
END 

IF ~~ t6.7e 
SAY ~And that's the worst part. They see worse and do nothing. When I finally found a monk to watch Lanie for a moment, I went back, but the fight was over, and no one would tell me where the woman went or even if she was still alive. No one seemed to care.~ 
IF ~~ THEN + t6.11 
END 

IF ~~ t6.7f 
SAY ~Someone has to care, because it doesn't seem like anyone else will. When I finally found a monk to watch Lanie for a moment, I went back, but the fight was over, and no one would tell me where the woman went or even if she was still alive. It was like nothing had ever happened.~ 
IF ~~ THEN + t6.11 
END 

IF ~~ t6.8 
SAY ~Are you indifferent to the suffering of others, or are you just mocking my sympathetic nature?~ 
+ ~!Alignment(Player1,MASK_EVIL) 
      !Global("B!GavRA","GLOBAL",0) 
      !Global("B!GavRA","GLOBAL",3)~ + ~You get upset about things no sane person would think twice about. You have to toughen up, Gavin, because the world is too harsh a place for tender fools like you.~ DO ~SetGlobal("B!GavRA","GLOBAL",3) 
            SetGlobal("B!GavRomBreak","GLOBAL",2) 
            IncrementGlobal("B!GavLove","GLOBAL",-1) 
            IncrementGlobal("B!GavOffend","GLOBAL",1)~ + t6.8a 
+ ~!Alignment(Player1,MASK_EVIL) 
      OR(2) 
          Global("B!GavRA","GLOBAL",0) 
          Global("B!GavRA","GLOBAL",3)~ + ~You get upset about things no sane person would think twice about. You have to toughen up, Gavin, because the world is too harsh a place for tender fools like you.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1) 
            IncrementGlobal("B!GavOffend","GLOBAL",1)~ + t6.8a 
+ ~Alignment(Player1,MASK_EVIL) 
      !Global("B!GavRA","GLOBAL",0) 
      !Global("B!GavRA","GLOBAL",3)~ + ~You get upset about things no sane person would think twice about. You have to toughen up, Gavin, because the world is too harsh a place for tender fools like you.~ DO ~IncrementGlobal("B!GavChange","GLOBAL",-1) 
            SetGlobal("B!GavRA","GLOBAL",3) 
            SetGlobal("B!GavRomBreak","GLOBAL",2) 
            IncrementGlobal("B!GavLove","GLOBAL",-1) 
            IncrementGlobal("B!GavOffend","GLOBAL",1)~ + t6.8a 
+ ~Alignment(Player1,MASK_EVIL) 
      OR(2) 
          Global("B!GavRA","GLOBAL",0) 
          Global("B!GavRA","GLOBAL",3)~ + ~You get upset about things no sane person would think twice about. You have to toughen up, Gavin, because the world is too harsh a place for tender fools like you.~ DO ~IncrementGlobal("B!GavChange","GLOBAL",-1) 
            IncrementGlobal("B!GavLove","GLOBAL",-1) 
            IncrementGlobal("B!GavOffend","GLOBAL",1)~ + t6.8a 
++ ~I'm only saying this for your own good. You let things bother you, and they shouldn't. You can't change the world, Gavin, so you're going to have to steel yourself against some of its injustices.~ + t6.8b 
+ ~!Alignment(Player1,MASK_EVIL)~ + ~I'm not doing either. I know you want to help everyone, and maybe you even think you can. I envy your optimism, but I don't want to see you get hurt.~ + t6.8c  
+ ~Alignment(Player1,MASK_EVIL)~ + ~I'm not doing either. I know you want to help everyone, and maybe you even think you can. I envy your optimism, but I don't want to see you get hurt.~ DO ~IncrementGlobal("B!GavChange","GLOBAL",1)~ + t6.8c 
+ ~!Alignment(Player1,MASK_EVIL) 
      !Global("B!GavRA","GLOBAL",0) 
      !Global("B!GavRA","GLOBAL",3)~ + ~Now why would you think I'm mocking you? Could it be because you never open your mouth except to spout some preachy bilge about the rights of the downtrodden?~ DO ~SetGlobal("B!GavRA","GLOBAL",3) 
            SetGlobal("B!GavRomBreak","GLOBAL",2) 
            IncrementGlobal("B!GavLove","GLOBAL",-1) 
            IncrementGlobal("B!GavOffend","GLOBAL",1)~ + t6.8a 
+ ~!Alignment(Player1,MASK_EVIL) 
      OR(2) 
          Global("B!GavRA","GLOBAL",0) 
          Global("B!GavRA","GLOBAL",3)~ + ~Now why would you think I'm mocking you? Could it be because you never open your mouth except to spout some preachy bilge about the rights of the downtrodden?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1) 
            IncrementGlobal("B!GavOffend","GLOBAL",1)~ + t6.8a 
+ ~Alignment(Player1,MASK_EVIL) 
      !Global("B!GavRA","GLOBAL",0) 
      !Global("B!GavRA","GLOBAL",3)~ + ~Now why would you think I'm mocking you? Could it be because you never open your mouth except to spout some preachy bilge about the rights of the downtrodden?~ DO ~IncrementGlobal("B!GavChange","GLOBAL",-1) 
            SetGlobal("B!GavRA","GLOBAL",3) 
            SetGlobal("B!GavRomBreak","GLOBAL",2) 
            IncrementGlobal("B!GavLove","GLOBAL",-1) 
            IncrementGlobal("B!GavOffend","GLOBAL",1)~ + t6.8a 
+ ~Alignment(Player1,MASK_EVIL) 
      OR(2) 
          Global("B!GavRA","GLOBAL",0) 
          Global("B!GavRA","GLOBAL",3)~ + ~Now why would you think I'm mocking you? Could it be because you never open your mouth except to spout some preachy bilge about the rights of the downtrodden?~ DO ~IncrementGlobal("B!GavChange","GLOBAL",-1) 
            IncrementGlobal("B!GavLove","GLOBAL",-1) 
            IncrementGlobal("B!GavOffend","GLOBAL",1)~ + t6.8a 
END 

IF ~~ t6.8a
SAY ~This conversation is over.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t6.8b 
SAY ~I can't do that. I won't do that.~ 
IF ~~ THEN + t6.7 
END 

IF ~~ t6.8c 
SAY ~People get hurt every day, and so must I.~ 
IF ~~ THEN + t6.7 
END 

IF ~~ t6.9 
SAY ~Anyway, I've had this one memory in my head that keeps surfacing to haunt me, and it isn't getting any easier to live with it.~ 
++ ~Do you want to talk about it?~ + t6.7 
++ ~I know you see things that bother you, Gavin, but you're going to have to learn to live with them.~ + t6.9a 
++ ~We're working toward a greater goal, and we can't afford to lose sight of that.~ + t6.9b 
++ ~Don't go to pieces on me now, Gavin. I need you focused on *my* plans, not worrying about what you may have done or said in a past life.~ + t6.9c 
+ ~!Alignment(Player1,MASK_EVIL) 
      !Global("B!GavRA","GLOBAL",0) 
      !Global("B!GavRA","GLOBAL",3)~ + ~You're going to have to find a way, because I haven't got time to hold your hand through the rough patches.~ DO ~SetGlobal("B!GavRA","GLOBAL",3) 
            SetGlobal("B!GavRomBreak","GLOBAL",2) 
            IncrementGlobal("B!GavLove","GLOBAL",-1) 
            IncrementGlobal("B!GavOffend","GLOBAL",1)~  + t6.9d 
+ ~!Alignment(Player1,MASK_EVIL) 
      OR(2) 
          Global("B!GavRA","GLOBAL",0) 
          Global("B!GavRA","GLOBAL",3)~ + ~You're going to have to find a way, because I haven't got time to hold your hand through the rough patches.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1) 
            IncrementGlobal("B!GavOffend","GLOBAL",1)~  + t6.9d 
+ ~Alignment(Player1,MASK_EVIL) 
      !Global("B!GavRA","GLOBAL",0) 
      !Global("B!GavRA","GLOBAL",3)~ + ~You're going to have to find a way, because I haven't got time to hold your hand through the rough patches.~ DO ~IncrementGlobal("B!GavChange","GLOBAL",-1) 
            SetGlobal("B!GavRA","GLOBAL",3) 
            SetGlobal("B!GavRomBreak","GLOBAL",2) 
            IncrementGlobal("B!GavLove","GLOBAL",-1) 
            IncrementGlobal("B!GavOffend","GLOBAL",1)~  + t6.9d 
+ ~Alignment(Player1,MASK_EVIL) 
      OR(2) 
          Global("B!GavRA","GLOBAL",0) 
          Global("B!GavRA","GLOBAL",3)~ + ~You're going to have to find a way, because I haven't got time to hold your hand through the rough patches.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1) 
            IncrementGlobal("B!GavOffend","GLOBAL",1)~  + t6.9d 
END 

IF ~~ t6.9a 
SAY ~I'm not sure I can.~ 
IF ~~ THEN + t6.7 
END 

IF ~~ t6.9b 
SAY ~I don't know if I can.~ 
IF ~~ THEN + t6.7 
END 

IF ~~ t6.9c 
SAY ~We can't afford to ignore the plight of individuals, either.~ 
IF ~~ THEN + t6.7 
END 

IF ~~ t6.9d 
SAY ~Then there's nothing left to say.~ 
IF ~~ THEN EXIT  
END 

IF ~~ t6.10 
SAY ~But for all that, I haven't lived the life you've lived, or experienced the nightmares that plague you. So, when memories surface to haunt me, I have no way to shut them out.~ 
++ ~Do you want to talk about it?~ + t6.7 
++ ~I know you see things that bother you, Gavin, but you're going to have to learn to live with them.~ + t6.9a 
++ ~We're working toward a greater goal, and we can't afford to lose sight of that.~ + t6.9b 
++ ~Don't go to pieces on me now, Gavin. I need you focused on *my* plans, not worrying about what you may have done or said in a past life.~ + t6.9c 
+ ~!Alignment(Player1,MASK_EVIL) 
      !Global("B!GavRA","GLOBAL",0) 
      !Global("B!GavRA","GLOBAL",3)~ + ~You're going to have to find a way, because I haven't got time to hold your hand through the rough patches.~ DO ~SetGlobal("B!GavRA","GLOBAL",3) 
            SetGlobal("B!GavRomBreak","GLOBAL",2) 
            IncrementGlobal("B!GavLove","GLOBAL",-1) 
            IncrementGlobal("B!GavOffend","GLOBAL",1)~  + t6.9d 
+ ~!Alignment(Player1,MASK_EVIL) 
      OR(2) 
          Global("B!GavRA","GLOBAL",0) 
          Global("B!GavRA","GLOBAL",3)~ + ~You're going to have to find a way, because I haven't got time to hold your hand through the rough patches.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1) 
            IncrementGlobal("B!GavOffend","GLOBAL",1)~  + t6.9d 
+ ~Alignment(Player1,MASK_EVIL) 
      !Global("B!GavRA","GLOBAL",0) 
      !Global("B!GavRA","GLOBAL",3)~ + ~You're going to have to find a way, because I haven't got time to hold your hand through the rough patches.~ DO ~IncrementGlobal("B!GavChange","GLOBAL",-1) 
            SetGlobal("B!GavRA","GLOBAL",3) 
            SetGlobal("B!GavRomBreak","GLOBAL",2) 
            IncrementGlobal("B!GavLove","GLOBAL",-1) 
            IncrementGlobal("B!GavOffend","GLOBAL",1)~  + t6.9d 
+ ~Alignment(Player1,MASK_EVIL) 
      OR(2) 
          Global("B!GavRA","GLOBAL",0) 
          Global("B!GavRA","GLOBAL",3)~ + ~You're going to have to find a way, because I haven't got time to hold your hand through the rough patches.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1) 
            IncrementGlobal("B!GavOffend","GLOBAL",1)~  + t6.9d 
END 

IF ~~ t6.11 
SAY ~It's all some kind of slavery. Children are stolen, or bought and sold, prostitutes are treated like property, and everyone just goes on about their lives like nothing's wrong. Some of it is even legal, and that's what really makes me sick.~ 
++ ~So what are you going to do about it?~ + t6.11a 
+ ~!Global("B!GavT6Love","LOCALS",1)~ + ~I know, Gavin. It upsets me, too. We can fight the slavers, at least.~ DO ~IncrementGlobal("B!GavT6Love","GLOBAL",1)~ + t6.11b 
+ ~Global("B!GavT6Love","LOCALS",1)~ + ~I know, Gavin. It upsets me, too. We can fight the slavers, at least.~ + t6.11b 
+ ~Alignment(Player1,MASK_LAWFUL)~ + ~I'm sorry you're so upset, but the system works. Some sacrifices must be made to uphold order.~+ t6.11c 
+ ~Alignment(Player1,MASK_CHAOTIC)~ + ~I'm telling you, Gavin, the problem is that there are too many rules. If people were left to sort it all out themselves, they wouldn't have the problems they have now.~ + t6.11d 
+ ~Alignment(Player1,LAWFUL_EVIL)~ + ~If something is wrong, it isn't the legal system. The strong thrive, the weak do their bidding. This is natural and right.~ + t6.8a 
++ ~Has anyone ever told you that you think too much?~ + t6.11e 
+ ~!Global("B!GavT6Love","LOCALS",1)~ + ~Thank you for telling me what's been bothering you, Gavin. I wish I had the answers, but I don't.~ DO ~IncrementGlobal("B!GavT6Love","GLOBAL",1)~ + t6.11f 
+ ~Global("B!GavT6Love","LOCALS",1)~ + ~Thank you for telling me what's been bothering you, Gavin. I wish I had the answers, but I don't.~ + t6.11f 
END 

IF ~~ t6.11a 
SAY ~There's nothing I can do. Not now.~ 
IF ~~ THEN + t6.11g  
END 

IF ~~ t6.11b 
SAY ~And if we beat them back, more will come to take their place.~ 
IF ~~ THEN + t6.11g  
END 

IF ~~ t6.11c 
SAY ~<CHARNAME>, a woman may have been beaten to death on the street. There is no order.~ 
IF ~~ THEN + t6.11g 
END 

IF ~~ t6.11d 
SAY ~It hasn't been working too well, so far, but there's always hope, always another tomorrow.~ 
IF ~~ THEN + t6.11g  
END 

IF ~~ t6.11e 
SAY ~With some regularity.~ 
IF ~~ THEN + t6.11g  
END 

IF ~~ t6.11f 
SAY ~I don't either, but there's always hope.~ 
IF ~~ THEN + t6.11g  
END 

IF ~~ t6.11g 
SAY ~If there's ever going to be change, it will be because peoples' attitudes have changed, the way they think. Making laws won't work, breaking them won't help. Every person has to believe that better things are possible and that all creatures deserve the chance to grow and prosper.~ 
= ~We can guide, but if the change is going to mean anything, it has to come from within.~ 
IF ~~ THEN EXIT 
END 
END 

/* Talk 7 "Old friends" miss 'em? */ 

CHAIN
IF ~Global("B!GavTalk","GLOBAL",14)~ THEN ~B!GAVJ~ t7.1
~Do you ever think about the friends you left behind?~ [bgav110] 
DO ~SetGlobal("B!GavTalk","GLOBAL",15) RealSetGlobalTimer("B!GavT","GLOBAL",GAV_TIME)~
END
++ ~Which? The ones I had back at Candlekeep or those I met adventuring?~ EXTERN ~B!GavJ~ t7.2 
++ ~Who doesn't? Sometimes, I miss them, but life moves on, and I must, too.~ EXTERN ~B!GavJ~ t7.3 
++ ~My life is so hectic that I don't have time or energy enough to think about the friends I have now!~ EXTERN ~B!GavJ~ t7.4 
++ ~I don't really have a lot of friends.~ EXTERN ~B!GavJ~ t7.7 
+ ~Alignment(Player1,MASK_EVIL)~ + ~I don't have any friends. Only minions.~ EXTERN ~B!GavJ~ t7.5 
+ ~!Alignment(Player1,MASK_EVIL)~ + ~I don't have any friends. Only minions.~ EXTERN ~B!GavJ~ t7.6 

APPEND ~B!GavJ~ 

IF ~~ t7.2 
SAY ~Either. People you befriended in your past who are no longer with you.~ 
++ ~I miss them sometimes.~ + t7.3 
++ ~With all that's going on in my life, I can't give too much thought to reminiscences.~ + t7.4 
++ ~I don't have a lot of friends.~ + t7.7 
++ ~The only friends I have are traveling with me now.~ + t7.8 
END 

IF ~~ t7.3 
SAY ~I understand how that goes. You wonder how they're faring, what has changed in their lives since you last parted company, or whether you'd even know them again.~ 
IF ~~ THEN + t7.9 
END 

IF ~~ t7.4 
SAY ~I understand how that goes. Simply surviving from one day to the next takes it out of you.~ 
IF ~~ THEN + t7.9 
END 

IF ~~ t7.5 
SAY ~I never know whether you're serious when you talk like that. For my own sanity, I'm going to assume you're not. In any case, I was talking about how people need something in their lives that they can rely on.~ 
IF ~~ THEN + t7.9 
END 

IF ~~ t7.6 
SAY ~Ha! Careful, <CHARNAME>, or I'll start thinking you've been letting nefarious forces influence you. Kidding aside, everyone needs someone, some constant in their lives.~ 
IF ~~ THEN + t7.9 
END 

IF ~~ t7.7 
SAY ~That's a pity.~ 
IF ~~ THEN + t7.9 
END 

IF ~~ t7.8 
SAY ~I'm glad to be counted in that company, then. But in a way, it's unfortunate, because we're all affected by the things that affect you.~ 
IF ~~ THEN + t7.9 
END 

IF ~~ t7.9 
SAY ~People need a touchstone, something in their lives that will always be the same, no matter how much their own lives change.~ 
++ ~That was always Imoen, for me. I could always count on her.~ + t7.10 
++ ~Gorion was that for me, but he's gone.~ + t7.11 
+ ~Global("B!GavRA","GLOBAL",0)~ + ~I've got you for that. Nothing ever changes your ways.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t7.12a 
+ ~Global("B!GavRA","GLOBAL",1)~ + ~You're here, and you won't change, will you?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t7.12b 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~You'll always be there for me, won't you?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t7.12c 
+ ~Global("B!GavRA","GLOBAL",3) 
      Global("B!GavRomBreak","GLOBAL",1)~ + ~I've got you for that. Nothing ever changes your ways.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t7.12d 
+ ~Global("B!GavRA","GLOBAL",3) 
      Global("B!GavRomBreak","GLOBAL",1)~ + ~I've got you for that. Nothing ever changes your ways.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t7.12e 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~I've got you for that. Nothing ever changes your ways.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t7.12f 
+ ~Alignment(Player1,MASK_EVIL)~ + ~I don't know if I need someone for that. I've got my own beliefs, and that's good enough for me.~ DO ~IncrementGlobal("B!GavChange","GLOBAL",-1) 
      IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t7.13a 
+ ~!Alignment(Player1,MASK_EVIL)~ + ~I don't know if I need someone for that. I've got my own beliefs, and that's good enough for me.~ + t7.13b 
+ ~Alignment(Player1,MASK_EVIL)~ + ~I don't need that. I don't want anything tying me to my past.~ DO ~IncrementGlobal("B!GavChange","GLOBAL",1) 
      IncrementGlobal("B!GavLove","GLOBAL",1)~ + t7.14a 
+ ~!Alignment(Player1,MASK_EVIL)~ + ~I don't need that. I don't want anything tying me to my past.~ + t7.14b 
++ ~That's very sentimental of you.~ + t7.15 
END 

IF ~~ t7.10 
SAY ~You had someone. That's the important thing.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t7.11 
SAY ~Your foster father? He lives on in your memory, though. His constancy will stay with you throughout your life.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t7.12a 
SAY ~Not if I can possibly help it, but your regard means a lot.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t7.12b 
SAY ~No, I won't, and I'm pleased to hear you say you consider me a constant in your life.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t7.12c 
SAY ~As long as I live, my love.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t7.12d 
SAY ~Not if I can help it. I'm pleased that you still consider me a constant in your life.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t7.12e 
SAY ~No, nothing does.~ 
IF ~~ THEN EXIT  
END 

IF ~~ t7.12f 
SAY ~You did. But that's another matter.~ 
IF ~~ THEN EXIT  
END 

IF ~~ t7.13a 
SAY ~I'll be honest with you, <CHARNAME>. You hold some beliefs that I hope and pray might one day change.~ 
IF ~~ THEN EXIT  
END 

IF ~~ t7.13b 
SAY ~They've kept you from harm so far.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t7.14a 
SAY ~That makes me hopeful, somehow.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t7.14b 
SAY ~You know best, I suppose, but to me, it seems like you've turned out all right, despite your past.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t7.15 
SAY ~I get that way, sometimes.~ 
IF ~~ THEN EXIT 
END 
END 

/* Talk 8 "What do you want to do with your life?" or now that you know it better, how are you doing with the Bhaal taint */ 

CHAIN
IF ~Global("B!GavTalk","GLOBAL",16)~ THEN ~B!GAVJ~ t8.0
~How are you holding up, <CHARNAME>?~ [bgav111] 
DO ~SetGlobal("B!GavTalk","GLOBAL",17) RealSetGlobalTimer("B!GavT","GLOBAL",GAV_TIME)~
END
+ ~Global("B!GavBhaal","GLOBAL",1)~ + ~Why do you keep asking me that?~ EXTERN ~B!GavJ~ t8.1 
+ ~!Global("B!GavBhaal","GLOBAL",1)~ + ~Why do you keep asking me that?~ EXTERN ~B!GavJ~ t8.2 
+ ~Global("B!GavBhaal","GLOBAL",1)~ + ~There are good days and bad.~ EXTERN ~B!GavJ~ t8.1 
+ ~!Global("B!GavBhaal","GLOBAL",1)~ + ~There are good days and bad.~ EXTERN ~B!GavJ~ t8.2 
+ ~Global("B!GavBhaal","GLOBAL",1) 
      Alignment(Player1,MASK_EVIL) 
      GlobalGT("B!GavChange","GLOBAL",4)~ + ~Never better, why?~ EXTERN ~B!GavJ~ t8.5 
+ ~Global("B!GavBhaal","GLOBAL",1) 
      Alignment(Player1,MASK_EVIL) 
      !GlobalGT("B!GavChange","GLOBAL",4)~ + ~Never better, why?~ EXTERN ~B!GavJ~ t8.6 
+ ~!Global("B!GavBhaal","GLOBAL",1) 
      Alignment(Player1,MASK_EVIL) 
      GlobalGT("B!GavChange","GLOBAL",4)~ + ~Never better, why?~ EXTERN ~B!GavJ~ t8.7 
+ ~!Global("B!GavBhaal","GLOBAL",1) 
      Alignment(Player1,MASK_EVIL) 
      !GlobalGT("B!GavChange","GLOBAL",4)~ + ~Never better, why?~ EXTERN ~B!GavJ~ t8.8 
+ ~Global("B!GavBhaal","GLOBAL",1) 
      !Alignment(Player1,MASK_EVIL)~ + ~Never better, why?~ EXTERN ~B!GavJ~ t8.9 
+ ~!Global("B!GavBhaal","GLOBAL",1) 
      !Alignment(Player1,MASK_EVIL)~ + ~Never better, why?~ EXTERN ~B!GavJ~ t8.10  
+ ~Global("B!GavBhaal","GLOBAL",1)~ + ~Stop asking me that, already. You worry more than a mother hen.~ EXTERN ~B!GavJ~ t8.11 
+ ~!Global("B!GavBhaal","GLOBAL",1)~ + ~Stop asking me that, already. You worry more than a mother hen.~ EXTERN ~B!GavJ~ t8.12 
++ ~I'm tired, my head hurts, and your feet stink.~ EXTERN ~B!GavJ~ t8.13 

APPEND ~B!GavJ~ 

IF ~~ t8.1 
SAY ~Adventuring isn't easy.~ 
IF ~~ THEN + t8.14 
END 

IF ~~ t8.2 
SAY ~Adventuring isn't easy.~ 
IF ~~ THEN + t8.15 
END 

/* deleted t8.3 */ 

/* t8.4 */ 

IF ~~ t8.5 
SAY ~You do seem to be holding it all together, somehow.~ 
IF ~~ THEN + t8.14 
END 

IF ~~ t8.6 
SAY ~I don't know if I can agree with that. There are times when you seem to have trouble holding it all together.~ 
IF ~~ THEN + t8.14 
END 

IF ~~ t8.7 
SAY ~You do seem to be holding it all together, somehow.~ 
IF ~~ THEN + t8.15 
END 

IF ~~ t8.8 
SAY ~I don't know if I can agree with that. There are times when you seem to have trouble holding it all together.~ 
IF ~~ THEN + t8.15 
END 

IF ~~ t8.9 
SAY ~You're holding together all right, but I know adventuring isn't easy.~ 
IF ~~ THEN + t8.14 
END 

IF ~~ t8.10 
SAY ~You're holding together all right, but I know adventuring isn't easy.~ 
IF ~~ THEN + t8.15 
END 

IF ~~ t8.11 
SAY ~As a healer and as a companion, I think I've got the right to worry a bit.~ 
IF ~~ THEN + t8.14 
END 

IF ~~ t8.12 
SAY ~As a healer and as a companion, I think I've got the right to worry a bit.~ 
IF ~~ THEN + t8.15 
END 

IF ~~ t8.13 
SAY ~My feet stink?~ 
++ ~Like cheese left outside on a hot day.~ + t8.16 
++ ~A bit.~ + t8.16 
++ ~So do mine, probably.~ + t8.16 
END 

IF ~~ t8.14 
SAY ~And you're the child of Bhaal... that must make things tough, sometimes.~ 
+ ~OR(2) ReputationLT(Player1,9) 
      GlobalLT("B!GavLove","GLOBAL",4)~ + ~I'm the master of my own destiny, Gavin. My blood does not rule me.~ + t8.17 
+ ~!ReputationLT(Player1,9) 
      !GlobalLT("B!GavLove","GLOBAL",4)~ + ~I'm the master of my own destiny, Gavin. My blood does not rule me.~ + t8.18 
++ ~You make much of my taint, but I don't think I'm much different than anyone else.~ + t8.19 
++ ~I can feel it, sometimes, like there's this dark core of energy inside me. All that potential, all that power, all waiting for me to find a way to tap it.~ + t8.20 
++ ~All anyone ever wants to talk about is my heritage. I'm getting tired of it.~ + t8.21 
END 

IF ~~ t8.15 
SAY ~And there's something about you... I can't quite identify what it is. It's as if your destiny is greater than the rest of ours, or as if you have powers the rest of us don't.~ 
+ ~OR(2) ReputationLT(Player1,9) 
      GlobalLT("B!GavLove","GLOBAL",4)~ + ~I'm the master of my own destiny, Gavin. Whatever power I may have, I'm the one who decides what to do with it.~ + t8.17 
+ ~!ReputationLT(Player1,9) 
      !GlobalLT("B!GavLove","GLOBAL",4)~ + ~I'm the master of my own destiny, Gavin. Whatever power I may have, I'm the one who decides what to do with it.~ + t8.18 
++ ~I don't feel any different than anyone else.~ + t8.19 
++ ~I can feel it, sometimes, like there's this dark core of energy inside me. All that potential, all that power, all waiting for me to find a way to tap it.~ + t8.20 
++ ~I'm the child of Bhaal, Gavin.~ + t8.22 
END 

IF ~~ t8.16 
SAY ~Right. I guess I know what I'm doing tonight. Now, about that head... the pressure must really be getting to you.~ 
IF ~Global("B!GavBhaal","GLOBAL",1)~ THEN + t8.14 
IF ~!Global("B!GavBhaal","GLOBAL",1)~ THEN + t8.15 
END 

IF ~~ t8.17 
SAY ~(sigh) I guess there's still time for improvement.~ 
IF ~~ THEN + t8.23 
END 

IF ~~ t8.18 
SAY ~Good for you! Good for all of us.~ 
IF ~~ THEN + t8.23 
END 

IF ~~ t8.19 
SAY ~How would you know?~ 
= ~Er... that came out wrong. My point is that you have no reference for comparison. You've never been any other way.~  
IF ~~ THEN + t8.23 
END 

IF ~~ t8.20 
SAY ~That does NOT sound healthy. Resist it, <CHARNAME>... please.~ 
IF ~~ THEN + t8.23 
END 

IF ~~ t8.21 
SAY ~It certainly sets you apart. Is it so strange that others would be curious about it?~ 
IF ~~ THEN + t8.23 
END 

IF ~~ t8.22 
SAY ~I'm sorry, I don't think I heard you right. I thought you just said you're a child of Bhaal.~ 
++ ~I'm sorry, Gavin. I should have told you sooner.~ DO ~SetGlobal("B!GavBhaal","GLOBAL",1)~ + t8.22a 
++ ~That's what I said. I'm a Bhaalspawn.~ DO ~SetGlobal("B!GavBhaal","GLOBAL",1)~ + t8.22a 
+ ~GlobalGT("GaalJob","GLOBAL",0)~ + ~You need to clean the wax out of your ears. I said I'm the child of Gaal.~ + t8.22b 
+ ~!GlobalGT("GaalJob","GLOBAL",0)~ + ~You need to clean the wax out of your ears. I said I'm the child of Paal.~ + t8.22c 
END 

IF ~~ t8.22a 
SAY ~Sorry, <CHARNAME>, this is a lot to take in all at once. Why didn't you tell me sooner?~ 
++ ~Because I knew you would treat me differently. As soon as anyone finds out, they treat me like a monster... or worse, a specimen to be studied.~ + t8.22d 
++ ~It never came up in conversation.~ + t8.22e 
++ ~It isn't really the kind of thing you announce.~ + t8.22f 
END 

IF ~~ t8.22b 
SAY ~The lunatic in the Temple District?~ 
IF ~~ THEN + t8.22g  
END 

IF ~~ t8.22c 
SAY ~Never heard of him.~ 
++ ~He was a very prominent wizard around here once, known for unorthodox experimentation on prisoners.~ DO ~SetGlobal("B!GavInventiveLie","LOCALS",1)~ + t8.22g 
++ ~He was involved in some unusually ruthless business dealings a while back. He's dead, but I don't think his victims would mind revenging themselves upon his kin.~ DO ~SetGlobal("B!GavInventiveLie","LOCALS",1)~ + t8.22g 
++ ~You're one of the few, then.~ + t8.22h 
++ ~He invented the spoon. I never tell anyone for fear that I'll be swarmed by admirers.~ + t8.22i 
END 

IF ~~ t8.22d 
SAY ~I can understand that.~ 
IF ~~ THEN + t8.22j  
END 

IF ~~ t8.22e 
SAY ~I would have thought you might have found a reason to bring it up... or maybe not.~ 
IF ~~ THEN + t8.22j  
END 

IF ~~ t8.22f 
SAY ~No, I imagine not.~ 
IF ~~ THEN + t8.22j 
END 

IF ~~ t8.22g 
SAY ~In that case, I can understand your desire to keep your ancestry secret.~ 
IF ~~ THEN + t8.22j 
END 

IF ~~ t8.22h 
SAY ~I'll count myself fortunate, I guess. Your father must have been notorious, if you won't even say what he did.~ 
IF ~~ THEN + t8.22j 
END 

IF ~~ t8.22i 
SAY ~Heh. Fine, keep your secrets.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t8.22j 
SAY ~If my reaction was typical, I can only imagine how difficult it must have been for you to find acceptance anywhere.~ 
IF ~~ THEN + t8.23 
END 

IF ~~ t8.23 
SAY ~So, what are your plans, going forward?~ 
+ ~Alignment(Player1,MASK_EVIL)~ + ~Do whatever good I can... or at least do as little ill as possible.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1) 
      IncrementGlobal("B!GavChange","GLOBAL",1)~ + t8.24 
+ ~!Alignment(Player1,MASK_EVIL)~ + ~Do whatever good I can... or at least do as little ill as possible.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t8.24 
+ ~Alignment(Player1,MASK_EVIL)~ + ~Survive, be strong, and take each day as it comes. Tomorrow has to be better than today.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1) 
      IncrementGlobal("B!GavChange","GLOBAL",1)~ + t8.24 
+ ~!Alignment(Player1,MASK_EVIL)~ + ~Survive, be strong, and take each day as it comes. Tomorrow has to be better than today.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t8.24 
+ ~Alignment(Player1,MASK_EVIL)~ + ~Learn to harness this power, and turn it to my advantage.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1) 
      IncrementGlobal("B!GavChange","GLOBAL",-1)~ + t8.25 
+ ~!Alignment(Player1,MASK_EVIL)~ + ~Learn to harness this power, and turn it to my advantage.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t8.25 
++ ~I have no idea.~ + t8.26 
END 

IF ~~ t8.24 
SAY ~We can do this. I know we can.~ 
IF ~~ THEN EXIT  
END 

IF ~~ t8.25 
SAY ~Oh, no. There are just so many ways that can go wrong... for yourself as much as everyone else.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t8.26 
SAY ~Neither do I.~ 
IF ~~ THEN EXIT 
END 
END 

/* Talk 9 "Why do I hang out with you, anyway?" Gavin's in a snit, very grumpy, picking a fight. Ride it out. */ 

CHAIN
IF ~Global("B!GavTalk","GLOBAL",18)~ THEN ~B!GAVJ~ t9.0
~Where in the nine hells is my shaving mirror?~ [bgav112] 
DO ~SetGlobal("B!GavTalk","GLOBAL",19) RealSetGlobalTimer("B!GavT","GLOBAL",GAV_TIME)~
END
++ ~Where did you have it last?~ EXTERN ~B!GavJ~ t9.1 
+ ~Gender(Player1,MALE)~ + ~I borrowed it. Here.~ EXTERN ~B!GavJ~ t9.2 
+ ~Gender(Player1,FEMALE)~ + ~I borrowed it. Here.~ EXTERN ~B!GavJ~ t9.3 
++ ~How should I know?~ EXTERN ~B!GavJ~ t9.4 
++ ~Have you ever thought that just maybe you should grow a beard?~ EXTERN ~B!GavJ~ t9.e1 
++ ~Just a moment, Gavin, and I'll help you look for it.~ EXTERN ~B!GavJ~ t9.5 
++ ~If it was up your ass you'd know it.~ EXTERN ~B!GavJ~ t9.6 

APPEND ~B!GavJ~ 

IF ~~ t9.e1 
SAY ~What kind of an answer is that? I'm looking for my mirror, not grooming tips.~ 
IF ~~ THEN + t9.7  
END 

IF ~~ t9.1 
SAY ~If I knew that, I wouldn't be looking for it now, would I?~ 
IF ~~ THEN + t9.7  
END 

IF ~~ t9.2 
SAY ~You borrowed it. That's just great. How do you shave when you can't take someone else's things?~ 
IF ~~ THEN + t9.8  
END 

IF ~~ t9.3 
SAY ~You borrowed it? Why? You don't need to shave. Oh, that's right. Check the hair, check the face, and have I got anything stuck in my teeth? Women. And what do you do when you can't take someone else's things?~ 
IF ~~ THEN + t9.8  
END 

IF ~~ t9.4 
SAY ~Well, somebody must, because I sure don't!~ 
IF ~~ THEN + t9.7  
END 

IF ~~ t9.5 
SAY ~I don't see what good that will do. I've already looked everywhere.~ 
IF ~~ THEN + t9.7  
END 

IF ~~ t9.6 
SAY ~And I suppose you think that's clever. Wise-ass remarks are the last thing I need.~ 
IF ~~ THEN + t9.7  
END 

IF ~~ t9.7 
SAY ~And here it is, right on top of your pack. So, did you think you'd just open up my pack, root around a while, and pull out the first thing I'd miss just to jest with me? Or did you just assume you could take anything you like without bothering to ask?~ 
IF ~~ THEN + t9.8  
END 

IF ~~ t9.8 
SAY ~That's the problem with you, and with everyone else, it seems. 'There's old Gavin. He's such a sport. He won't mind a little bit of fun.' Or 'He's such a pushover. He won't be fussed if I just help myself to whatever he's got.' Hmf!~ 
++ ~This really isn't like you, Gavin. Is something wrong?~ + t9.9 
++ ~Whoa! Who put salt in your coffee?~ + t9.10 
+ ~!Global("B!GavRA","GLOBAL",0)~ + ~Gavin, you're scaring me. I've never seen you like this before.~ + t9.11 
++ ~It was just a mirror!~ + t9.12 
++ ~Oh, that's right! I found it on the ground last night and put it there for safekeeping. I meant to give it back, but I must have forgotten.~ + t9.13 
END 

IF ~~ t9.9 
SAY ~Aye, something's wrong!~ 
IF ~~ THEN + t9.14  
END 

IF ~~ t9.10 
SAY ~Aye, blame it all on me! If there's a problem, it must be my fault!~ 
IF ~~ THEN + t9.14  
END 

IF ~~ t9.11 
SAY ~Well, it's about time I stood up for myself.~ 
IF ~~ THEN + t9.14  
END 

IF ~~ t9.12 
SAY ~Aye, it's just a mirror. But it's MY mirror.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t9.13 
SAY ~Pft! If you expect me to believe that, you must think me gullible beyond all measure.~ 
IF ~~ THEN + t9.14  
END 

IF ~~ t9.14 
SAY ~That's the problem around here. I get no respect. I give and I give, and for what? So everybody can take me for granted.~ 
++ ~I don't take you for granted, Gavin. You're a valuable member of this group.~ + t9.15 
++ ~You're making too much of this.~ + t9.16 
++ ~I'm sorry you're so upset, but this is really no way to behave.~ + t9.17 
+ ~Global("B!GavRA","GLOBAL",1)~ + ~I'm starting to think that getting involved with you is a bad idea.~ DO ~SetGlobal("B!GavLT9Dump","LOCALS",1)~ + t9.18 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~I'm starting to think that our engagement may be a bad idea.~ DO ~SetGlobal("B!GavLT9Dump","LOCALS",1)~ + t9.19 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~I'm starting to think that getting involved with you is a bad idea.~ DO ~SetGlobal("B!GavLT9Dump","LOCALS",1)~ + t9.20 
++ ~You're right. You don't get any respect, and the reason you don't is because you throw tantrums like this!~ + t9.21 
++ ~I'm going to walk away now, and I don't want to talk to you again until you've calmed down.~ + t9.22 
++ ~Just shut up. Right now.~ + t9.22 
END 

IF ~~ t9.15 
SAY ~As long as I do everything you say and never complain. Bah.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t9.16 
SAY ~What? Just because I finally decide to stand up for myself, for a change? Forget it, <CHARNAME>.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t9.17 
SAY ~I'll behave any damn way I want.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t9.18 
SAY ~Yeah? Well, maybe I am, too.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t9.19 
SAY ~My thoughts exactly.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t9.20 
SAY ~You can say that again. I never should have agreed to it in the first place.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t9.21 
SAY ~This isn't a tantrum! Maybe you don't want to hear what I'm saying, but I should have said it a long time ago.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t9.22 
SAY ~Hmf!~ 
IF ~~ THEN EXIT 
END 
END 

/* Talk 10 "You know what? I'm an asshole." (Evil PC shot at redemption #5: forgiveness) */ 

CHAIN
IF ~Global("B!GavTalk","GLOBAL",20)~ THEN ~B!GAVJ~ t10.0
~<CHARNAME>, I need to apologize for my outburst earlier. I know I said some terrible things, and I'm sorry, but I couldn't seem to stop.~ [bgav113] 
DO ~SetGlobal("B!GavTalk","GLOBAL",21) RealSetGlobalTimer("B!GavT","GLOBAL",GAV_TIME)~
END
++ ~We all have bad days.~ EXTERN ~B!GavJ~ t10.1 
+ ~Alignment(Player1,MASK_EVIL)~ + ~I understand, and I forgive you.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1) 
      IncrementGlobal("B!GavChange","GLOBAL",1)~ EXTERN ~B!GavJ~ t10.2a 
+ ~!Alignment(Player1,MASK_EVIL)~ + ~I understand, and I forgive you.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ EXTERN ~B!GavJ~ t10.2b 
++ ~That's what happens when you keep everything bottled up. Sooner or later, you're going to blow.~ EXTERN ~B!GavJ~ t10.3 
++ ~I don't know, Gavin. You said some terrible things.~ EXTERN ~B!GavJ~ t10.4 
+ ~Global("B!GavLT9Dump","LOCALS",1)~ + ~You might regret it now, but what is said can never be unsaid.~ EXTERN ~B!GavJ~ t10.5 
+ ~!Global("B!GavLT9Dump","LOCALS",1)~ + ~You might regret it now, but what is said can never be unsaid.~ EXTERN ~B!GavJ~ t10.6 
+ ~Global("B!GavLT9Dump","LOCALS",1)~ + ~It's too late for apologies now.~ EXTERN ~B!GavJ~ t10.5 
+ ~!Global("B!GavLT9Dump","LOCALS",1)~ + ~It's too late for apologies now.~ EXTERN ~B!GavJ~ t10.6 
+ ~Alignment(Player1,MASK_EVIL)~ + ~So, you're not just rude, you're spineless, too. 'Sorry' is for the weak.~ EXTERN ~B!GavJ~ t10.9 
+ ~!Alignment(Player1,MASK_EVIL)~ + ~So, you're not just rude, you're spineless, too. 'Sorry' is for the weak.~ EXTERN ~B!GavJ~ t10.10 

APPEND ~B!GavJ~ 

IF ~~ t10.1 
SAY ~Maybe, but not everyone makes a capital offense of a misplaced mirror.~ 
IF ~~ THEN  + t10.11 
END 

IF ~~ t10.2a 
SAY ~Thank you, <CHARNAME>.~ 
IF ~~ THEN DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t10.12 
END 

IF ~~ t10.2b 
SAY ~Thank you, <CHARNAME>.~ 
IF ~~ THEN DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~  + t10.12 
END 

IF ~~ t10.3 
SAY ~Well, that's certainly what I did earlier.~ 
IF ~~ THEN  + t10.11 
END 

IF ~~ t10.4 
SAY ~I did, and I should have had better self-control than that.~ 
IF ~~ THEN  + t10.11 
END 

IF ~~ t10.5 
SAY ~Does that mean...~ 
+ ~Global("B!GavRA","GLOBAL",1)~ + ~It means that I don't think as highly of you as I once did, and no longer welcome your attention.~ DO ~SetGlobal("B!GavRA","GLOBAL",3) 
      SetGlobal("B!GavRomBreak","GLOBAL",1) 
      IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t10.14 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~It means that I no longer want to marry you.~ DO ~SetGlobal("B!GavRA","GLOBAL",3) 
      SetGlobal("B!GavRomBreak","GLOBAL",1) 
      IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t10.14 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~It means that I won't be asking you to my bed any time soon, or ever again, for that matter.~ DO ~SetGlobal("B!GavRA","GLOBAL",3) 
      SetGlobal("B!GavRomBreak","GLOBAL",2) 
      IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t10.15 
++ ~I'll get over it, but give me some time, alright?~ DO ~SetGlobal("B!GavNoFlirt","GLOBAL",1)~ + t10.16 
++ ~Oh, I forgive you, but no more outbursts, please.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t10.12 
END 

IF ~~ t10.6 
SAY ~I know...~ 
IF ~~ THEN  + t10.11 
END 

/* t10.7 and t10.8 deleted */ 

IF ~~ t10.9 
SAY ~Hardly. Do you have any idea how difficult it is to apologize? But never mind. I suppose forgiveness isn't in your nature, either.~ 
++ ~It might be. I've never really thought about it.~ + t10.17 
++ ~No, it isn't.~ + t10.18 
END 

IF ~~ t10.10 
SAY ~I'm surprised to hear you say such a thing. We all need forgiveness, sometimes, but I understand if you aren't quite ready to forgive me yet. I'll just keep hoping that you can soon.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t10.11 
SAY ~Well... thing is...~ 
= ~Ah, hells. Can you ever forgive me?~ 
+ ~Global("B!GavRA","GLOBAL",0)~ + ~I think so. Shake hands?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t10.19 
+ ~Global("B!GavRA","GLOBAL",1)~ + ~I think so. Shall we kiss and make up?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t10.21 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~I think so. Shall we kiss and make up?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t10.22 
+ ~Global("B!GavRA","GLOBAL",3) 
      Global("B!GavRomBreak","GLOBAL",1)~ + ~I think so. Shall we kiss and make up?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t10.23 
+ ~Global("B!GavRA","GLOBAL",3) 
      Global("B!GavRomBreak","GLOBAL",2)~ + ~I think so. Shall we kiss and make up?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t10.24 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~I think so. Shall we kiss and make up?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t10.25 
+ ~!Global("B!GavRA","GLOBAL",0) 
      !Global("B!GavRA","GLOBAL",3)~ + ~I need some more time.~ DO ~SetGlobal("B!GavNoFlirt","GLOBAL",1)~ + t10.26 
+ ~OR(2) Global("B!GavRA","GLOBAL",0) 
      Global("B!GavRA","GLOBAL",3)~ + ~I need some more time.~ + t10.26 
+ ~!Global("B!GavRA","GLOBAL",0) 
      !Global("B!GavRA","GLOBAL",3) 
      !Global("B!GavRA","GLOBAL",4)~ + ~Not this time.~ DO ~SetGlobal("B!GavRA","GLOBAL",3) 
            SetGlobal("B!GavRomBreak","GLOBAL",1) 
            IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t10.14 
+ ~OR(2) Global("B!GavRA","GLOBAL",0) 
      Global("B!GavRA","GLOBAL",3)~ + ~Not this time.~ + t10.18 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~Not this time.~ DO ~SetGlobal("B!GavRA","GLOBAL",3) 
            SetGlobal("B!GavRomBreak","GLOBAL",2) 
            IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t10.15 
END 

IF ~~ t10.12 
SAY ~Forgiveness is a powerful healer, and I'm grateful.~ 
IF ~~ THEN + t10.27 
END 

/* t10.13 deleted */ 

IF ~~ t10.14 
SAY ~One ill-considered word, and it's all over?~ 
= ~I'm sorry, <CHARNAME>. I had no idea...~ 
= ~No... I'm sorry.~
IF ~~ THEN EXIT 
END 

IF ~~ t10.15 
SAY ~Ah, well, I had hoped it wouldn't be like this, but all things must end.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t10.16 
SAY ~Yes... of course.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t10.17 
SAY ~Well, do so, please. And I'm not just saying that because I want you to forgive me. You'll feel better about yourself, too.~ 
++ ~Alright, I forgive you.~ + t10.12 
++ ~No, I'm not ready for that.~ + t10.18 
END 

IF ~~ t10.18 
SAY ~Ah, well. I had to try.~ 
IF ~~ THEN  EXIT 
END 

IF ~~ t10.19 
SAY ~Gladly! Thank you, <CHARNAME>.~ 
IF ~~ THEN + t10.27 
END 

/* t10.20 deleted */

IF ~~ t10.21 
SAY ~Er... yes, of course.~ 
= ~(Gavin's lips barely graze yours before he retreats.)~ 
= ~I... I'm sorry, <CHARNAME>... I'm just not in the right frame of mind for this.~ 
IF ~~ THEN + t10.27 
END 

IF ~~ t10.22 
SAY ~Gladly!~ 
= ~(Gavin kisses you soundly, holding you in a close embrace.)~ 
IF ~~ THEN + t10.27 
END 

IF ~~ t10.23 
SAY ~Er... yes... if you like.~ 
= ~(Gavin's lips brush yours lightly, but he quickly steps away.)~ 
= ~Sorry, <CHARNAME>, I wasn't really prepared for a request like that.~ 
IF ~~ THEN + t10.27 
END 

IF ~~ t10.24 
SAY ~Er... no, I don't really think that would be appropriate, even under the circumstances.~ 
IF ~~ THEN + t10.27 
END 

IF ~~ t10.25 
SAY ~What the hells.~ 
= ~(Gavin leans in and kisses you soundly, if self-consciously.)~ 
IF ~~ THEN + t10.27 
END 

IF ~~ t10.26 
SAY ~Then time you shall have.~ 
IF ~~ THEN + t10.27 
END 

IF ~~ t10.27 
SAY ~Now that that's out of the way, could you help me find my socks?~ 
IF ~~ THEN EXIT 
END 
END 

/* Talk 11 "You've come a long way, baby" Gavin's observation on how much the PC has changed since day one, whenever it was (Evil PC "moment of truth", when a PC can say whether he wants to change or not - if appropriate. There's also a chance that Gavin will leave the group if an evil PC just hasn't changed, and shows no inclination for it) */ 

APPEND ~B!GavJ~ 

IF ~Global("B!GavTalk","GLOBAL",22)~ THEN BEGIN t11.1
SAY ~You're hardly the same person you were, when I first joined your company.~ [bgav114] 
++ ~Sadder but wiser?~ DO ~SetGlobal("B!GavTalk","GLOBAL",23) RealSetGlobalTimer("B!GavT","GLOBAL",GAV_TIME)~ + t11.mighty 
+ ~!Global("B!GavRA","GLOBAL",0)~ + ~I know we've been living under some pretty harsh conditions, but I'd hope I haven't grown ugly yet.~ DO ~SetGlobal("B!GavTalk","GLOBAL",23) RealSetGlobalTimer("B!GavT","GLOBAL",GAV_TIME)~ + t11.mighty 
++ ~Is that supposed to be a compliment?~ DO ~SetGlobal("B!GavTalk","GLOBAL",23) RealSetGlobalTimer("B!GavT","GLOBAL",GAV_TIME)~ + t11.mighty 
++ ~I certainly don't feel like the same person.~ DO ~SetGlobal("B!GavTalk","GLOBAL",23) RealSetGlobalTimer("B!GavT","GLOBAL",GAV_TIME)~ + t11.mighty 
++ ~You're imagining things. I'm still the same person I was.~ DO ~SetGlobal("B!GavTalk","GLOBAL",23) RealSetGlobalTimer("B!GavT","GLOBAL",GAV_TIME)~ + t11.hardly 
END 

IF ~~ THEN t11.hardly 
SAY ~Hardly!~ 
IF ~~ THEN + t11.mighty 
END 

IF ~~ t11.mighty 
SAY ~You're... mighty! You're more powerful than I would have thought possible, for one.~ 
++ ~That doesn't say much for your imagination.~ + t11.confidence 
+ ~Global("B!GavRA","GLOBAL",0)~ + ~I knew I could do it. You should have had more faith in me.~ + t11.confidence 
+ ~!Global("B!GavRA","GLOBAL",0)~ + ~I knew I could do it. Maybe you just don't believe in me.~ + t11.confidence 
+ ~Global("B!GavRA","GLOBAL",1)~ + ~Does that make you uncomfortable? Some men feel threatened by a powerful woman.~ + t11.powerful1 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~Does that make you uncomfortable? Some men feel threatened by a powerful woman.~ + t11.powerful2 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~Does that make you uncomfortable? Some men feel threatened by a powerful woman.~ + t11.powerful4 
++ ~I wouldn't have believed it, either.~ + t11.believe 
END 

IF ~~ t11.believe 
SAY ~Yet here you are.~ 
IF ~~ THEN + t11.better 
END 

IF ~~ t11.powerful1 
SAY ~Not at all! You were always better at everything than me. It's a bit of a thrill, being in the company of someone greater than me, and maybe even being found worthy of notice...~ 
++ ~You have your charms.~ + t11.charms 
++ ~So, you're thrilled at being in my company, eh? Does it excite you physically?~ + t11.excite1 
++ ~Er... right.~ + t11.awkward 
++ ~Don't flatter yourself.~ + t11.awkward 
END 

IF ~~ t11.powerful2 
SAY ~Not at all! You were always better at everything than me. It's a thrill, being loved by someone greater than me, or even being found worthy of notice...~ 
++ ~You have your charms.~ + t11.charms 
++ ~So, you're thrilled at being in my company, eh? Does it excite you physically?~ + t11.excite2 
++ ~Er... right.~ + t11.awkward 
++ ~Don't flatter yourself.~ + t11.awkward 
END 

IF ~~ t11.powerful4 
SAY ~You were always better at everything than me. It's a thrill, pleasuring someone greater than me, having once been found worthy of notice...~ 
++ ~You have your charms.~ + t11.charms 
++ ~So, you're physically excited by my power, eh?~ + t11.excite4 
++ ~Er... right.~ + t11.awkward 
++ ~Don't flatter yourself.~ + t11.awkward 
END 

IF ~~ t11.excite4 
SAY ~I'd have thought you'd have noticed... ahem.~ 
IF ~~ THEN + t11.charms 
END 

IF ~~ t11.excite2 
SAY ~You have no idea. Ahem.~ 
IF ~~ THEN + t11.charms 
END 

IF ~~ t11.awkward 
SAY ~Well, isn't this awkward. Let's go back to talking about you.~ 
IF ~~ THEN + t11.better 
END 

IF ~~ t11.excite1 
SAY ~Er... I'd better not answer that. Let's go back to talking about you. It's far safer.~ 
IF ~~ THEN + t11.better 
END 

IF ~~ t11.charms 
SAY ~Heh. Well, let's hope you continue to find clumsy priests amusing.~ 
++ ~You're also loyal, caring, and a good friend.~ + t11.blush 
++ ~You make me laugh. I like that.~ + t11.blush 
++ ~And you look good with your shirt off. Don't forget that.~ + t11.blush 
++ ~We'll see.~ + t11.ohno 
++ ~I'm hoping you grow out of this awkward phase.~ + t11.ohno 
END 

IF ~~ t11.blush 
SAY ~Now you're making me blush, so let's go back to talking about you.~ 
IF ~~ THEN DO ~IncrementGlobal("B!GavLove","GLOBAL",1) SetGlobal("B!GavT11Love","LOCALS",1)~ + t11.better 
END 

IF ~~ t11.ohno 
SAY ~I'm not sure I like the sound of that, so let's go back to talking about you.~ 
IF ~~ THEN + t11.better 
END 

IF ~~ t11.confidence 
SAY ~No, it isn't like that. It's more...~ 
IF ~~ THEN + t11.better 
END 

IF ~~ t11.better 
SAY ~You're more confident, you've become better at your profession, you can do things I wouldn't have thought possible. And while it's no slight on you, it doesn't say much for my own ambition.~ 
++ ~I've had to work hard to get where I am.~ + t11.work 
++ ~You could do more, if you just tried.~ + t11.try 
++ ~Sometimes, I wonder what the limits of my abilities even are.~ + t11.limits 
END 

IF ~~ t11.limits 
SAY ~That's hard to say.~ 
IF ~~ THEN + t11.longway 
END 

IF ~~ t11.try 
SAY ~I'm content with the gifts Lathander bestowed on me. He gave me the ability to help others and the desire to do so, so I do what I can. He did not see fit to burden me with pride, and I'm just as happy without it.~ 
++ ~Are you saying I'm arrogant?~ + t11.arrogant 
+ ~!Global("B!GavRA","GLOBAL",0) 
      !Global("B!GavRA","GLOBAL",3) 
      !Global("B!GavT11Love","LOCALS",1)~ + ~I'm happy with some of the other gifts Lathander gave you.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1) SetGlobal("B!GavT11Love","LOCALS",1)~ + t11.dirtymind 
+ ~!Global("B!GavRA","GLOBAL",0) 
      !Global("B!GavRA","GLOBAL",3) 
      Global("B!GavT11Love","LOCALS",1)~ + ~I'm happy with some of the other gifts Lathander gave you.~ + t11.dirtymind 
+ ~!Global("B!GavT11Love","LOCALS",1)~+ ~Your abilities have been an asset to this group.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1) SetGlobal("B!GavT11Love","LOCALS",1)~ + t11.glad 
+ ~Global("B!GavT11Love","LOCALS",1)~+ ~Your abilities have been an asset to this group.~ + t11.glad 
++ ~Whatever.~ + t11.help 
END 

IF ~~ t11.glad 
SAY ~I'm glad I was able to help.~ 
IF ~~ THEN + t11.help 
END 

IF ~~ t11.dirtymind 
SAY ~You'd better stop that, or the blushing will make me dizzy.~ 
IF ~~ THEN + t11.help 
END 

IF ~~ t11.help 
SAY ~But we were talking about you.~ 
IF ~~ THEN + t11.longway 
END 

IF ~~ t11.longway 
SAY ~You've come a long way, in the time I've known you.~ 
IF ~~ THEN + t11.work 
END 

IF ~~ t11.arrogant 
SAY ~No, not at all.~ 
IF ~~ THEN + t11.work 
END 

IF ~~ t11.work 
SAY ~I know the cost has been heavy for you.~ 
++ ~It seems like the more I can do, the more I'm expected to do.~ + t11.responsibility 
++ ~Too high. I've lost friends, family, any hope of stability, and for what? More responsibilities.~ + t11.nofair 
++ ~It's been worth it, though. Just think of all I can do!~ + t11.great 
++ ~I wouldn't have been able to do any of it without help from my friends.~ + t11.friends 
END 

IF ~~ t11.friends 
SAY ~We might have helped, but the guiding hand was yours. You paid the price, and you reaped the rewards.~ 
IF ~~ THEN + t11.great 
END 

IF ~~ t11.nofair 
SAY ~It isn't fair that you should have to suffer so much loss, but your sacrifice hasn't been in vain... even if your cares are greater now.~ 
IF ~~ THEN + t11.responsibility 
END 

IF ~~ t11.responsibility 
SAY ~That's just the way it goes.~ 
IF ~~ THEN + t11.great 
END 

IF ~~ t11.great 
SAY ~It's the way it goes. The more power you have, the more responsibilities you have. More people count on you.~ 
+ ~Gender(Player1,MALE)~ + ~So when do I get to be king?~ + t11.king 
+ ~Gender(Player1,FEMALE) 
      Global("B!GavRA","GLOBAL",0)~ + ~So when do I get to be queen?~ + t11.king
+ ~Global("B!GavRA","GLOBAL",1)~ + ~So when do I get to be empress?~ + t11.empress1 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~So when do I get to be empress?~ + t11.empress2 
+ ~Global("B!GavRA","GLOBAL",3)~ + ~So when do I get to be empress?~ + t11.empress3 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~So when do I get to be empress?~ + t11.empress4 
++ ~I don't remember ever being given a choice.~ + t11.choice 
+ ~!Alignment(Player1,MASK_EVIL) 
      !Global("B!GavT11Love","LOCALS",1)~ + ~I don't mind. At least I know I'm doing something worthwhile.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1) SetGlobal("B!GavT11Love","LOCALS",1)~ + t11.worthwhile1 
+ ~!Alignment(Player1,MASK_EVIL) 
      Global("B!GavT11Love","LOCALS",1)~ + ~I don't mind. At least I know I'm doing something worthwhile.~ + t11.worthwhile1 
+ ~Alignment(Player1,MASK_EVIL) 
      GlobalGT("B!GavChange","GLOBAL",2)~ + ~I don't mind. At least I know I'm doing something worthwhile.~ + t11.worthwhile2 
+ ~Alignment(Player1,MASK_EVIL) 
      !GlobalGT("B!GavChange","GLOBAL",2)~ + ~I don't mind. At least I know I'm doing something worthwhile.~ + t11.worthwhile3 
++ ~I never asked for it, and I don't want it.~ + t11.nochoice 
END 

IF ~~ t11.nochoice 
SAY ~No, you weren't ever given a choice, were you?~ 
IF ~~ THEN + t11.choice 
END 

IF ~~ t11.worthwhile1 
SAY ~That you are.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t11.worthwhile2 
SAY ~You are, and that's another thing I wanted to talk to you about.~ 
IF ~~ THEN + t11.redeem 
END 

IF ~~ t11.redeem 
SAY ~You've made so many changes in your life, you're hardly the <PRO_MANWOMAN> you were, and the change has been for the better. You've grown as a person, and you've become someone I'd be proud to call a friend.~ 
= ~It's time to break from the past, to be reborn. Are you ready?~ 
++ ~I'm ready. I want to be a better person.~ DO ~SetGlobal("B!GavRedeem","LOCALS",1)~ + t11.show 
++ ~What do you mean?~ + t11.meaning 
++ ~I need more time to think about it.~ DO ~SetGlobal("B!GavRedeem","LOCALS",1)~ + t11.time 
++ ~No, I can't change that much.~ DO ~SetGlobal("B!GavRedeem","LOCALS",1)~ + t11.nocando 
END 

IF ~~ t11.needtalk 
SAY ~There's something we need to talk about, though. You know what kind of man I am. I've stayed with you because I hoped that you would change. Maybe you're trying, but I just don't see it happening. I need to know where we stand.~ 
+ ~GlobalGT("B!GavChange","GLOBAL",2)~ + ~I want to change, I really do, but it's hard to do.~ DO ~IncrementGlobal("B!GavChange","GLOBAL",1)~ + t11.youareready 
+ ~!GlobalGT("B!GavChange","GLOBAL",2)~ + ~I want to change, I really do, but it's hard to do.~ DO ~IncrementGlobal("B!GavChange","GLOBAL",1)~ + t11.youarenotready 
++ ~I need more time to think about it.~ DO ~SetGlobal("B!GavRedeem","LOCALS",1)~ + t11.time 
++ ~No, I can't change that much.~ DO ~SetGlobal("B!GavRedeem","LOCALS",1)~ + t11.nocando 
END 

IF ~~ t11.youareready 
SAY ~Then I would have to say that you are ready, after all.~ 
IF ~~ THEN + t11.show 
END 

IF ~~ t11.youarenotready 
SAY ~I guess that you just aren't ready yet, though I hope that it may happen one day soon.~ 
IF ~!Global("B!GavRA","GLOBAL",0) !Global("B!GavRA","GLOBAL",3)~ THEN + t11.breakup 
IF ~OR(2) Global("B!GavRA","GLOBAL",0) Global("B!GavRA","GLOBAL",3)~ THEN EXIT 
END 

IF ~~ t11.show 
SAY ~I can't tell you how overjoyed I am that you've embraced this change.~ 
IF ~Alignment(Player1,LAWFUL_EVIL)~ THEN DO ~IncrementGlobal("B!GavLove","GLOBAL",1) SetGlobal("B!GavLERedeem","GLOBAL",1) ReputationInc(1) ~ EXIT 
IF ~Alignment(Player1,NEUTRAL_EVIL)~ THEN DO ~IncrementGlobal("B!GavLove","GLOBAL",1) SetGlobal("B!GavNERedeem","GLOBAL",1) ReputationInc(1) ~ EXIT 
IF ~Alignment(Player1,CHAOTIC_EVIL)~ THEN DO ~IncrementGlobal("B!GavLove","GLOBAL",1) SetGlobal("B!GavCERedeem","GLOBAL",1) ReputationInc(1) ~ EXIT 
END 

IF ~~ t11.meaning 
SAY ~If you accept the fact that you aren't the person you were, and choose to continue what you've started, you can become a better person. It really is that simple.~ 
++ ~I'm ready. I want to be a better person.~ DO ~SetGlobal("B!GavRedeem","LOCALS",1)~ + t11.show 
++ ~I need more time to think about it.~ DO ~SetGlobal("B!GavRedeem","LOCALS",1)~ + t11.time 
++ ~No, I can't change that much.~ DO ~SetGlobal("B!GavRedeem","LOCALS",1)~ + t11.nocando 
END 

IF ~~ t11.time 
SAY ~Then take the time you need.~ 
IF ~!Global("B!GavRA","GLOBAL",0) !Global("B!GavRA","GLOBAL",3)~ THEN + t11.breakup 
IF ~OR(2) Global("B!GavRA","GLOBAL",0) Global("B!GavRA","GLOBAL",3)~ THEN EXIT 
END 

IF ~~ t11.breakup 
SAY ~You know the man I am, though. Some things will have to change.~ 
IF ~~ THEN DO ~SetGlobal("B!GavRA","GLOBAL",3) 
      SetGlobal("B!GavRomBreak","GLOBAL",1) 
      IncrementGlobal("B!GavLove","GLOBAL",-2)~ EXIT 
END 

IF ~~ t11.nocando 
SAY ~Do you mean you're not ready yet, or do you mean that you never will be ready?~ 
++ ~I'm not ready yet.~ + t11.time 
+ ~GlobalGT("B!GavLove","GLOBAL",0) GlobalLT("B!GavOffend","GLOBAL",5)~ + ~I'm not ready, and I never will be.~ + t11.stay 
+ ~OR(2) !GlobalGT("B!GavLove","GLOBAL",0) !GlobalLT("B!GavOffend","GLOBAL",5)~ + ~I'm not ready, and I never will be.~ + t11.leave 
END 

IF ~~ t11.stay 
SAY ~(sigh) I hoped you wouldn't feel that way, but I'll remain in the party, and pray you change your mind.~ 
IF ~Global("B!GavRA","GLOBAL",1)~ THEN DO ~SetGlobal("B!GavRA","GLOBAL",3) 
      SetGlobal("B!GavRomBreak","GLOBAL",1) 
      IncrementGlobal("B!GavLove","GLOBAL",-2)~ EXIT 
IF ~!Global("B!GavRA","GLOBAL",1)~ THEN DO ~IncrementGlobal("B!GavLove","GLOBAL",-2)~ EXIT 
END 

IF ~~ t11.leave 
SAY ~(sigh) I'd really hoped that it wouldn't come down to this, but it has. I'm sorry, <CHARNAME>, but you knew what kind of man I am when I signed on. If I'm to follow my conscience, I can no longer continue in your company. Farewell.~ 
IF ~~ THEN DO ~SetGlobal("B!GavRA","GLOBAL",3) 
      SetGlobal("B!GavRomBreak","GLOBAL",2) 
      IncrementGlobal("B!GavLove","GLOBAL",-100) 
      IncrementGlobal("B!GavOffend","GLOBAL",20) 
      ActionOverride("b!lanie",DestroySelf()) 
      LeaveParty() 
      EscapeArea()~ EXIT 
END  

IF ~~ t11.worthwhile3 
SAY ~Sometimes... Maybe you want to do more. I just don't know. I wish I did, because then I wouldn't have to say what I know that I must.~ 
= ~If you need more time, take it, but some things are going to have to change.~ 
IF ~Global("B!GavRA","GLOBAL",1)~ THEN DO ~SetGlobal("B!GavRA","GLOBAL",3) 
      SetGlobal("B!GavRomBreak","GLOBAL",1) 
      IncrementGlobal("B!GavLove","GLOBAL",-1)~ EXIT 
IF ~!Global("B!GavRA","GLOBAL",1)~ THEN DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ EXIT 
END 

IF ~~ t11.choice 
SAY ~You never were. No one ever is. Though perhaps that's untrue.~ 
IF ~~ THEN + t11.selfish 
END 

IF ~~ t11.selfish
SAY ~You could have just turned your back on everyone who needed you and sought power for your own ends.~ 
IF ~Alignment(Player1,MASK_EVIL) GlobalGT("B!GavChange","GLOBAL",2)~ THEN + t11.else 
IF ~!Alignment(Player1,MASK_EVIL)~ THEN EXIT  
IF ~Alignment(Player1,MASK_EVIL) !GlobalGT("B!GavChange","GLOBAL",2)~ THEN + t11.needtalk  
END 

IF ~~ t11.king 
SAY ~When I find a vacant throne, I'll let you know.~ 
IF ~Alignment(Player1,MASK_EVIL) GlobalGT("B!GavChange","GLOBAL",2)~ THEN + t11.else 
IF ~!Alignment(Player1,MASK_EVIL)~ THEN EXIT  
IF ~Alignment(Player1,MASK_EVIL) !GlobalGT("B!GavChange","GLOBAL",2)~ THEN + t11.needtalk  
END 

IF ~~ t11.empress1 
SAY ~I don't know, but if you do, keep me in mind if you need a jester.~ 
IF ~Alignment(Player1,MASK_EVIL) GlobalGT("B!GavChange","GLOBAL",2)~ THEN + t11.else 
IF ~!Alignment(Player1,MASK_EVIL)~ THEN EXIT  
IF ~Alignment(Player1,MASK_EVIL) !GlobalGT("B!GavChange","GLOBAL",2)~ THEN + t11.needtalk  
END 

IF ~~ t11.empress2 
SAY ~You already are, to me.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t11.empress3 
SAY ~<CHARNAME> the Demigoddess, ruler of worlds. There's a sobering thought.~ 
IF ~Alignment(Player1,MASK_EVIL) GlobalGT("B!GavChange","GLOBAL",2)~ THEN + t11.else 
IF ~!Alignment(Player1,MASK_EVIL)~ THEN EXIT  
IF ~Alignment(Player1,MASK_EVIL) !GlobalGT("B!GavChange","GLOBAL",2)~ THEN + t11.needtalk  
END  

IF ~~ t11.empress4 
SAY ~You mean you're not? I thought you must be some kind of royalty, the way you've made me your fool.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t11.else 
SAY ~There's something else I wanted to talk to you about... your attitude is different now than it was when we first met.~ 
IF ~~ THEN + t11.redeem 
END 
END 

/* Talk 12 "Is it just me, or do we have a lot on our plates?" Balancing RL and "the job" */ 

APPEND ~B!GavJ~ 

IF ~Global("B!GavTalk","GLOBAL",24)~ THEN BEGIN t12.0 
SAY ~So, where are we off to now?~ [bgav115] 
++ ~Quests, quests, and more quests.~ DO ~SetGlobal("B!GavTalk","GLOBAL",25) RealSetGlobalTimer("B!GavT","GLOBAL",GAV_TIME)~ + t12.quests 
+ ~OR(27) 
    AreaCheck("AR0085") 
    AreaCheck("AR1100") 
    AreaCheck("AR1101") 
    AreaCheck("AR1102") 
    AreaCheck("AR1104") 
    AreaCheck("AR1105") 
    AreaCheck("AR1106") 
    AreaCheck("AR1107") 
    AreaCheck("AR1200") 
    AreaCheck("AR1204") 
    AreaCheck("AR1300") 
    AreaCheck("AR1304") 
    AreaCheck("AR1400") 
    AreaCheck("AR1404") 
    AreaCheck("AR1700") 
    AreaCheck("AR1800") 
    AreaCheck("AR1900") 
    AreaCheck("AR1901") 
    AreaCheck("AR1902") 
    AreaCheck("AR1904") 
    AreaCheck("AR1905") 
    AreaCheck("AR2500") 
    AreaCheck("AR2600") 
    AreaCheck("AR2602") 
    AreaCheck("AR2603")
    AreaCheck("AR2700") 
    AreaCheck("AR2800")~ + ~We're just finishing a few more things, and then we'll make camp.~ DO ~SetGlobal("B!GavTalk","GLOBAL",25) RealSetGlobalTimer("B!GavT","GLOBAL",GAV_TIME)~ + t12.quests 
+ ~!AreaCheck("AR0085") 
    !AreaCheck("AR1100") 
    !AreaCheck("AR1101") 
    !AreaCheck("AR1102") 
    !AreaCheck("AR1104") 
    !AreaCheck("AR1105") 
    !AreaCheck("AR1106") 
    !AreaCheck("AR1107") 
    !AreaCheck("AR1200") 
    !AreaCheck("AR1204") 
    !AreaCheck("AR1300") 
    !AreaCheck("AR1304") 
    !AreaCheck("AR1400") 
    !AreaCheck("AR1404") 
    !AreaCheck("AR1700") 
    !AreaCheck("AR1800") 
    !AreaCheck("AR1900") 
    !AreaCheck("AR1901") 
    !AreaCheck("AR1902") 
    !AreaCheck("AR1904") 
    !AreaCheck("AR1905") 
    !AreaCheck("AR2500") 
    !AreaCheck("AR2600") 
    !AreaCheck("AR2602") 
    !AreaCheck("AR2603")
    !AreaCheck("AR2700") 
    !AreaCheck("AR2800")~ + ~We're just finishing a few more things, and then we'll find an inn for the night.~ DO ~SetGlobal("B!GavTalk","GLOBAL",25) RealSetGlobalTimer("B!GavT","GLOBAL",GAV_TIME)~ + t12.quests 
++ ~I don't even know anymore.~ DO ~SetGlobal("B!GavTalk","GLOBAL",25) RealSetGlobalTimer("B!GavT","GLOBAL",GAV_TIME)~ + t12.quests 
END 

IF ~~ t12.quests 
SAY ~It never ends. Where's a person supposed to find time for a normal life?~ 
++ ~That would depend on your definition of normal. This is the only life I've known.~ + t12.normal 
++ ~Why would I even want a life like that? It sounds boring, if you ask me.~ + t12.boring 
++ ~It can't be helped, Gavin. We've got things we've got to do, and no one else will do them if we don't.~ + t12.gone 
END 

IF ~~ t12.boring 
SAY ~I don't know. It has its appeal.~ 
IF ~~ THEN + t12.rat 
END 

IF ~~ t12.normal 
SAY ~You get up, do whatever work you have to do, come home, kiss your lover, and maybe spend a bit of the evening mending socks or visiting friends.~ 
++ ~You mend socks?~ + t12.socks 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~Well, you're lucky, then. Your lover's right here.~ + t12.kiss 
++ ~I can kiss my lover anytime I want.~ + t12.lover 
++ ~So how is that different from our lives? Except for the 'going home' part, that's pretty much how we live our lives.~ + t12.rat 
++ ~I like to be different.~ + t12.different 
END 

IF ~~ t12.different 
SAY ~And you are, but that isn't the point.~ 
IF ~~ THEN + t12.rat 
END 

IF ~~ t12.lover 
SAY ~Well, that isn't really the point.~ 
IF ~~ THEN + t12.rat 
END 

IF ~~ t12.kiss 
SAY ~And I'm glad you are, but that isn't the point.~ 
IF ~~ THEN + t12.rat 
END 

IF ~~ t12.socks 
SAY ~Figuratively speaking.~ 
IF ~~ THEN + t12.rat 
END 

IF ~~ t12.rat 
SAY ~My point is that you don't spend the evening slogging through rat-infested dungeons. There were times, back in the old days, when I could go for weeks on end without ever seeing a rat, let alone a troll.~ 
++ ~Those days are gone forever, Gavin. You might as well get used to it.~ + t12.gone 
++ ~What? You don't like cold, dark corridors festooned with cobwebs?~ + t12.cobwebs 
++ ~There are times when I miss that, too, but what can we do? Give up and go home?~ + t12.gone 
++ ~But it has its good points. There's the treasure, for one.~ + t12.point  
END 

IF ~~ t12.cobwebs 
SAY ~Especially not the cobwebs.~ 
IF ~~ THEN EXIT  
END 

IF ~~ t12.gone 
SAY ~Alright, maybe we have to give up the idea of keeping normal hours, but can't we find some balance between what's personal and what's important?~ 
+ ~!Global("B!GavRA","GLOBAL",0) 
      !Global("B!GavRA","GLOBAL",3)~ + ~Of course we can. We can hold hands whenever we aren't actually in combat.~ + t12.point 
+ ~OR(2) Global("B!GavRA","GLOBAL",0) 
      Global("B!GavRA","GLOBAL",3)~ + ~Of course we can. I'll just hold hands with my lover whenever we aren't actually in combat.~ + t12.point 
++ ~Maybe we can. We can't just run away leaving everything unfinished, but maybe we can take some time off, go away for a while.~ +t12.fun 
++ ~Normal is boring. I want no part of it.~ + t12.point 
++ ~We can't think about 'personal' at all right now. There are too many lives depending on our decisions.~ + t12.rest 
END 

IF ~~ t12.point 
SAY ~I think you're missing the point.~ 
++ ~No, Gavin, I think you are. We've got a job to do, and we won't get any rest until it's done.~ + t12.rest 
++ ~That's pretty blunt.~ + t12.blunt 
++ ~Maybe we could get away for a little while.~ +t12.fun 
+ ~Global("B!GavRA","GLOBAL",1)~ + ~I think I know how to take your mind off things.~ + t12.wooboy1 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~I think I know how to take your mind off things.~ + t12.wooboy2 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~I think I know how to take your mind off things.~ + t12.wooboy4 
++ ~You just need to get laid.~ + t12.laid 
END 

IF ~~ t12.blunt 
SAY ~Sorry, I didn't intend offense. I know we've got a job to do. I just think we need some time to relax, too.~ 
++ ~We just haven't got time to relax. People are counting on us.~ + t12.rest 
++ ~Maybe we could get away for a little while.~ +t12.fun 
+ ~Global("B!GavRA","GLOBAL",1)~ + ~I think I know how to take your mind off things.~ + t12.wooboy1 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~I think I know how to take your mind off things.~ + t12.wooboy2 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~I think I know how to take your mind off things.~ + t12.wooboy4 
++ ~You just need to get laid.~ + t12.laid 
END 

IF ~~ t12.laid 
SAY ~I think I just swallowed my tongue.~ 
IF ~~ THEN + t12.complain 
END 

IF ~~ t12.wooboy1 
SAY ~With comments like that, you just did.~ 
IF ~~ THEN + t12.complain 
END 

IF ~~ t12.wooboy2 
SAY ~Well, that just got my undivided attention.~ 
IF ~~ THEN + t12.complain 
END 

IF ~~ t12.wooboy4 
SAY ~It might work for a little while, but the worries always come back.~ 
IF ~~ THEN + t12.complain 
END 

IF ~~ t12.rest 
SAY ~You're right. It isn't time to rest yet, but maybe we can go away for a bit, camp out for one night someplace remote and relatively peaceful.~ 
+ ~OR(27) 
    AreaCheck("AR0085") 
    AreaCheck("AR1100") 
    AreaCheck("AR1101") 
    AreaCheck("AR1102") 
    AreaCheck("AR1104") 
    AreaCheck("AR1105") 
    AreaCheck("AR1106") 
    AreaCheck("AR1107") 
    AreaCheck("AR1200") 
    AreaCheck("AR1204") 
    AreaCheck("AR1300") 
    AreaCheck("AR1304") 
    AreaCheck("AR1400") 
    AreaCheck("AR1404") 
    AreaCheck("AR1700") 
    AreaCheck("AR1800") 
    AreaCheck("AR1900") 
    AreaCheck("AR1901") 
    AreaCheck("AR1902") 
    AreaCheck("AR1904") 
    AreaCheck("AR1905") 
    AreaCheck("AR2500") 
    AreaCheck("AR2600") 
    AreaCheck("AR2602") 
    AreaCheck("AR2603")
    AreaCheck("AR2700") 
    AreaCheck("AR2800")~ + ~We're in the middle of the woods, Gavin. We'll be camping tonight whether you like it or not.~ +t12.fun 
+ ~!AreaCheck("AR0085") 
    !AreaCheck("AR1100") 
    !AreaCheck("AR1101") 
    !AreaCheck("AR1102") 
    !AreaCheck("AR1104") 
    !AreaCheck("AR1105") 
    !AreaCheck("AR1106") 
    !AreaCheck("AR1107") 
    !AreaCheck("AR1200") 
    !AreaCheck("AR1204") 
    !AreaCheck("AR1300") 
    !AreaCheck("AR1304") 
    !AreaCheck("AR1400") 
    !AreaCheck("AR1404") 
    !AreaCheck("AR1700") 
    !AreaCheck("AR1800") 
    !AreaCheck("AR1900") 
    !AreaCheck("AR1901") 
    !AreaCheck("AR1902") 
    !AreaCheck("AR1904") 
    !AreaCheck("AR1905") 
    !AreaCheck("AR2500") 
    !AreaCheck("AR2600") 
    !AreaCheck("AR2602") 
    !AreaCheck("AR2603")
    !AreaCheck("AR2700") 
    !AreaCheck("AR2800")~ + ~We're in the middle of something now, but we'll go camping next chance we get.~ +t12.fun 
++ ~I can't make any promises.~ + t12.understood 
++ ~We'll go where I say we go, understood?~ + t12.understood 
END 

IF ~~ t12.understood 
SAY ~Understood.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t12.fun 
SAY ~I think I'll like that.~ 
IF ~~ THEN + t12.complain 
END 

IF ~~ t12.complain 
SAY ~I'm complaining again, aren't I?~ 
++ ~A bit.~ + t12.yoursake 
++ ~Maybe, but you have a reason.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t12.yoursake 
++ ~No more than usual.~ + t12.yoursake 
++ ~No, I understand your point.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t12.yoursake 
END 

IF ~~ t12.yoursake 
SAY ~It's for your sake as well as mine. Spending a day or two in the wilds would do you good. You'll feel better after a restful night under the stars.~ 
IF ~~ THEN EXIT 
END 
END 

/* Talk 13 "Can't go back" talking about the past */ 

CHAIN
IF ~Global("B!GavTalk","GLOBAL",26)~ THEN ~B!GAVJ~ t13.0
~Do you remember Beregost?~ [bgav116] 
DO ~SetGlobal("B!GavTalk","GLOBAL",27) RealSetGlobalTimer("B!GavT","GLOBAL",GAV_TIME)~
END
++ ~Remember it? I only hope that one day I'll live to forget it!~ EXTERN ~B!GAVJ~ t13.1
++ ~It was the biggest town I had ever seen! Well, until I came to Baldur's Gate.~  EXTERN ~B!GAVJ~ t13.2
+ ~!Global("B!GavNoBG1","GLOBAL",1)~ + ~It was there that I met you. I'm not likely to forget it.~  EXTERN ~B!GAVJ~ t13.3
++ ~Only vaguely. I only passed through it a couple of times.~  EXTERN ~B!GAVJ~ t13.4
++ ~Not really. The past runs together, after a while, and it no longer seems so important.~  EXTERN ~B!GAVJ~ t13.5

APPEND ~B!GAVJ~

IF ~~ t13.1
SAY ~I don't remember it as being that unpleasant.~
++ ~It was a small town with muddy streets and bad ale.~ + t13.6
++ ~I don't like any city, really.~ + t13.7
++ ~It wasn't unpleasant, really, just small.~ + t13.2
++ ~We weren't in the city half a day before we got into our first fight. And then there was Marl. Why couldn't he have just left me alone?~ + t13.8
+ ~!Global("B!GavNoBG1","GLOBAL",1)~ + ~I was joking, Gavin. I met you there, so I'm bound to remember it.~ + t13.3
END

IF ~~ t13.2
SAY ~The whole world seemed a lot smaller then. We had fewer cares.~
+ ~Global("B!GavNoBG1","GLOBAL",1)~ + ~'We?' You weren't there.~ + t13.9
++ ~It sure didn't seem that way at the time.~ + t13.10
++ ~Do you think so? I remember being a lot more anxious then than I am now.~ + t13.11
++ ~I'm surprised to hear you speak of the place and the time so fondly, considering the life that you were running from.~ + t13.12
++ ~Nostalgia, Gavin?~ + t13.13
END

IF ~~ t13.3
SAY ~Ah, but will you remember it well or ill for the association?~
++ ~That all depends on how vexed I am with you at the moment.~ + t13.14
++ ~I thought you the most awkward-looking creature I had ever set eyes on.~ + t13.15
++ ~You were different then, more hesitant and insecure.~ + t13.15
++ ~I remember you tripping over the rut of a wagon wheel and knocking me into a mud puddle, if that's what you mean.~ + t13.17
+ ~Global("B!GavRA","GLOBAL",0)~ + ~Well, I think. You've always been a good friend.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t13.18a
+ ~!Global("B!GavRA","GLOBAL",0)~ + ~Beregost will always be dear to me for that.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t13.18
++ ~Are you sure you want to know?~ + t13.19
END

IF ~~ t13.4
SAY ~I remember it better, but I lived there for sixteen years, if you count the time before my ordination.~
++ ~(yawn) Is this going to be a long story?~ + t13.19
+ ~!Global("B!GavNoBG1","GLOBAL",1)~ + ~Well, I met you there, but that's about all I really remember about it.~ + t13.3
++ ~So what did I miss?~ + t13.21
++ ~Is there a reason you're thinking about this now?~ + t13.22
END

IF ~~ t13.5
SAY ~I know what you mean.~
IF ~~ THEN + t13.2
END

IF ~~ t13.6
SAY ~Bad ale? The Red Sheaf had the best ale on the Sword Coast!~
+ ~!Global("B!GavNoBG1","GLOBAL",1)~ + ~That's right, you did like that place, didn't you?~ + t13.23
++ ~This isn't about ale, though, is it?~ + t13.22
++ ~It was swill, Gavin. You were probably just too drunk to remember it clearly.~ + t13.24
++ ~About all I remember about the Red Sheaf was the dwarf that tried to kill me.~ + t13.25
END

IF ~~ t13.7
SAY ~No, you don't, do you? But it isn't really about Beregost.~
IF ~~ THEN + t13.22
END

IF ~~ t13.8
SAY ~Poor Marl. The death of his son hit him hard. He was never what you'd call cheerful. He could find the thundercloud behind any rainbow, but after his son died he gave up on life completely. I know the townspeople blamed you for his death, but I think he was just looking for a way to die.~
= ~But what else do you remember about the place?~
+ ~!Global("B!GavNoBG1","GLOBAL",1)~ + ~I met you there.~ + t13.3
++ ~Not much, really. I was only passing through.~ + t13.4
++ ~Apart from muddy streets and bad ale?~ + t13.6
+ ~Gender(Player1,FEMALE)~ + ~Garrick. He was such a sweet, silly boy, with his heart in his hand and his brain in his -~ + t13.26
+ ~Gender(Player1,MALE)~ + ~Garrick. He was a character, all right, with his heart in his hand and his brain in his -~ + t13.26
+ ~!Global("B!GavNoBG1","GLOBAL",1)~ + ~I remember you kissing some prostitutes outside Feldpost's.~ + t13.27a
++ ~How much else could there be to remember? The town wasn't very big.~ + t13.2
END

IF ~~ t13.9
SAY ~But I was, though you didn't know it. I lived there for seven years before I became a Dawnbringer and nine years after. It was time enough for me to get to know the place. But what do you remember about it?~
++ ~Apart from muddy streets and bad ale?~ + t13.6
+ ~Gender(Player1,FEMALE)~ + ~Garrick. He was such a sweet, silly boy, with his heart in his hand and his brain in his -~ + t13.26
+ ~Gender(Player1,MALE)~ + ~Garrick. He was character, all right, with his heart in his hand and his brain in his -~ + t13.26
++ ~How much else could there be to remember? The town wasn't very big.~ + t13.2
++ ~Is there a reason you're thinking about this now?~ + t13.22
END

IF ~~ t13.10
SAY ~It never does. You're stronger now than you were then, so it takes more to make you anxious.~
++ ~If you're saying that someday I'm going to look back on the present as a time of idyllic bliss, I don't want to think about it.~ + t13.27
++ ~Is there a reason you're thinking about this now?~ + t13.22
++ ~When does it end, Gavin? When do we get to look back on the past and think how much better things are now?~ + t13.28
++ ~Actually, I meant that I'm all right. I don't feel the pressure that I used to.~ + t13.11
END

IF ~~ t13.11
SAY ~That just goes to show that a person can get used to anything.~
++ ~Even you.~ + t13.29
++ ~I would rather not have had to learn that lesson.~ + t13.30
++ ~Or maybe I've just stopped caring.~ + t13.31
++ ~Stress is like pain. Something can only hurt so much before you become numb.~ + t13.31
++ ~How are you holding up?~ + t13.33
END

IF ~~ t13.12
SAY ~I wasn't running from anything... maybe I was. I wanted a second chance, an opportunity to leave the past behind and forge ahead with people who knew nothing of me or my problems. Needless to say, that didn't work. I could never abandon Lanie, in any case, but the lie of my silence got too heavy to bear.~
IF ~GlobalGT("B!GavinEngaged","GLOBAL",0)~ THEN + t13.12a
IF ~!GlobalGT("B!GavinEngaged","GLOBAL",0)~ THEN + t13.34
END 

IF ~~ t13.12a 
SAY ~And then there was you to think about. I couldn't hide my past from you and I found that I didn't want to try.~ 
IF ~~ THEN + t13.34 
END 

IF ~~ t13.13
SAY ~It feels like a lifetime ago, or like it happened to someone else. When I think about the petty things that used to keep me awake at night with worry... well, these days, I wish that was all we had to worry about.~
+ ~OR(2) Global("B!GavRA","GLOBAL",0) 
      Global("B!GavRA","GLOBAL",3)~ + ~I wouldn't have pegged you for a worrier.~ + t13.35
+ ~OR(2) Global("B!GavRA","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",4)~ + ~I wouldn't have pegged you for a worrier.~ + t13.35a
+ ~Global("B!GavRA","GLOBAL",2)~ + ~I wouldn't have pegged you for a worrier.~ + t13.35b
++ ~Me, too.~ + t13.22
+ ~!Global("B!GavNoBG1","GLOBAL",1)~ + ~You hid your concern well. From your snores, I never would have guessed that anxiety kept you awake.~ + t13.36
+ ~OR(4) !Global("B!GavRA","GLOBAL",1) 
          Global("B!GavRA","GLOBAL",0) 
          Global("B!GavRA","GLOBAL",1) 
          Global("B!GavRA","GLOBAL",3)~ + ~So what keeps you awake now?~ + t13.37
+ ~Global("B!GavSex","GLOBAL",1) 
      OR(2) 
          Global("B!GavRA","GLOBAL",2) 
          Global("B!GavRA","GLOBAL",4)~ + ~So what keeps you awake now?~ + t13.37a
++ ~You worry too much. Things aren't that bad, really.~ + t13.11
END

IF ~~ t13.14
SAY ~I'm a trial to you, I know. But that isn't what I was thinking about, at the moment.~
++ ~I'm not surprised. You never think about how much you irritate those around you.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t13.38
++ ~All right, what were you thinking about?~ + t13.22
++ ~I was teasing you, Gavin.~ + t13.22 
++ ~I hate to say it, but this isn't the best time for a conversation.~ + t13.39
END

IF ~~ t13.15
SAY ~And now?~
++ ~Some things never change.~ + t13.19
++ ~Oh, you're still a mess, but I wouldn't have it any other way.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t13.20
++ ~You're more confident these days, but you'll always be Gavin.~ + t13.40
++ ~As long as you're quick with the healing spells, you can stagger your way from here to Icewind Dale.~ + t13.19
++ ~Why are you so worried about what I think?~ + t13.16
+ ~Global("B!GavRA","GLOBAL",1)~ + ~Now I think you're pretty alright.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t13.18 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~I love you, Gavin. What more is there to say?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t13.18 
END

IF ~~ t13.16
SAY ~Well, I do value your opinion.~
++ ~You're fine the way you are.~ + t13.20
+ ~Global("B!GavRA","GLOBAL",2)~ + ~I love you just the way you are.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t13.18 
++ ~I've learned to expect very little.~ + t13.19
++ ~We all have our faults.~ + t13.19
++ ~I need you to think less about my opinion and more about your responsibilities in this party.~ + t13.19
END

IF ~~ t13.17
SAY ~Just my luck you'd have such a good memory. Regardless, that wasn't what I wanted to talk to you about.~ 
IF ~~ THEN + t13.22
END

IF ~~ t13.18
SAY ~It warms my heart to hear you say that, but that wasn't what I wanted to talk to you about.~ 
IF ~~ THEN + t13.22
END

IF ~~ t13.18a
SAY ~I thank you, but that wasn't what I wanted to talk to you about.~ 
IF ~~ THEN + t13.22
END

IF ~~ t13.19
SAY ~Wonderful. But that wasn't what I wanted to talk to you about.~
IF ~~ THEN + t13.22
END

IF ~~ t13.20
SAY ~You're still as charming as always... but that wasn't what I wanted to talk to you about.~ 
IF ~~ THEN + t13.22
END

IF ~~ t13.21
SAY ~Nothing, really. Nothing happens in Beregost. That's part of its charm. But that wasn't what I wanted to talk to you about.~ 
IF ~~ THEN + t13.22
END

IF ~~ t13.22
SAY ~I've been thinking a lot about the past lately.~
++ ~You? I thought Lathandrites lived for 'tomorrow,' not 'yesterday.'~ + t13.41
++ ~And what conclusion have you reached?~ + t13.41
++ ~I'd like you to think more about the present, especially where it concerns your doing your job in this party.~ + t13.42
++ ~And you said this wouldn't be a long story.~ + t13.39
++ ~I have, too. I'm looking for answers, but they're hard to find.~ + t13.43
END

IF ~~ t13.23
SAY ~I did. It was almost like a second home... or a first home, after Miranda and I fell out. But that wasn't what I wanted to talk to you about.~ 
IF ~~ THEN + t13.22
END

IF ~~ t13.24
SAY ~Perhaps... The Red Sheaf was almost like a second home... or a first home, after Miranda and I fell out. But that wasn't what I wanted to talk to you about.~
IF ~~ THEN + t13.22
END

IF ~~ t13.25
SAY ~One does tend to remember assassins... though you seem to have had more than your share of those. But that wasn't what I wanted to talk to you about.~ 
IF ~~ THEN + t13.22
END

IF ~~ t13.26
SAY ~Ahem... er.. yes, I believe I remember him. But that wasn't what I wanted to talk to you about.~ 
IF ~~ THEN + t13.22
END

IF ~~ t13.27
SAY ~True. I don't see how it could get much worse... though I hope that doesn't mean that I simply lack imagination. But that isn't what I wanted to talk to you about.~
IF ~~ THEN + t13.22
END 

IF ~~ t13.27a 
SAY ~It was only one prostitue, she kissed me, and she did it because I treated her like a human being instead of a trade item. But that isn't what I wanted to talk to you about.~ 
IF ~~ THEN + t13.22 
END 

IF ~~ t13.28
SAY ~Soon, I hope. But that isn't what I wanted to talk to you about.~
IF ~~ THEN + t13.22
END

IF ~~ t13.29
SAY ~So, you're used to me, eh? Be careful. That's one step shy of abhorrence. But that wasn't what I wanted to talk to you about.~
IF ~~ THEN + t13.22
END

IF ~~ t13.30
SAY ~After everything you have been through, do you still think you get to choose your lessons? But never mind. I had nothing so profound on my mind today, though I did wish to speak with you.~
IF ~~ THEN + t13.22
END

IF ~~ t13.31 /* stopped caring */ 
SAY ~Do you really mean that?~
++ ~No, not really. Sometimes, I wish I did, though.~ + t13.44
++ ~Yes, unfortunately. It's too much, Gavin. Too many people expect me to solve their problems for them.~ + t13.45
++ ~I don't know what to think, anymore. If I help this person, then that person must suffer. Too many choices.~ + t13.46
++ ~I don't want to talk about it. What were you going to say?~ + t13.32
END

IF ~~ t13.32
SAY ~You can't say something like that and expect me to let it drop.~
++ ~Look, I said I don't want to talk about it and I meant it.~ + t13.47
++ ~I was exaggerating, all right?~ + t13.48
++ ~I'm tired, Gavin. I've been fighting the good fight all this time, and I'm weary.~ + t13.46
++ ~Think about it. We slave away, risking our lives time and again, and for what? The chance at a shallow, unmarked grave? I'm done with being the hero.~ + t13.50
END

IF ~~ t13.33
SAY ~Me? My faith keeps me going, so I'll be fine.~
IF ~~ THEN + t13.34
END

IF ~~ t13.34
SAY ~Enough about me, though. There was something I wanted to talk to you about.~
IF ~~ THEN + t13.22
END

IF ~~ t13.35
SAY ~Usually, I'm not, but you face troubles that most people don't, and I can't help but be concerned. But that wasn't what I wanted to talk to you about, at least this time.~
IF ~~ THEN + t13.22
END

IF ~~ t13.35a 
SAY ~There are times... and you face troubles that most people don't, so I can't help but be concerned. But that wasn't what I wanted to talk to you about, at least this time.~
IF ~~ THEN + t13.22
END 

IF ~~ t13.35b 
SAY ~I am, where you're concerned. You face troubles that most people don't, and I worry that you'll be alright. But that wasn't what I wanted to talk to you about, at least this time.~
IF ~~ THEN + t13.22
END 

IF ~~ t13.36
SAY ~Perhaps I did. Never mind that, though.~
IF ~~ THEN + t13.22
END

IF ~~ t13.37
SAY ~Never mind about that, for the time being.~
IF ~~ THEN + t13.22
END

IF ~~ t13.37a
SAY ~You, if I'm lucky, but never mind about that, for the time being.~
IF ~~ THEN + t13.22
END

IF ~~ t13.38
SAY ~Would you like me to go?~
+ ~OR(2) Global("B!GavRA","GLOBAL",0) 
      Global("B!GavRA","GLOBAL",3)~ + ~No, you do have your uses.~ + t13.51
+ ~Global("B!GavRA","GLOBAL",1)~ + ~No, you do have your uses.~ + t13.51a 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~No, you do have your uses.~ + t13.51b 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~No, you do have your uses.~ + t13.51c 
++ ~If I ever make up my mind, you'll be the first to know.~ + t13.52
++ ~Perish the thought!~ + t13.53
++ ~It might be for the best.~ + t13.54
END

IF ~~ t13.39
SAY ~Never mind, then.~
IF ~~ THEN EXIT
END

IF ~~ t13.40
SAY ~It isn't as if I could be someone else if I tried.~
IF ~~ THEN + t13.34
END

IF ~~ t13.41
SAY ~I was remembering life before any of this, when the worst thing that I could expect at the end of any given day was to come home and find that Miranda had taken off again or that the crows had raided the garden.~
= ~Every morning, I'd go to the temple before dawn, celebrate the sunrise, then go do whatever work I had to do that day. At the end of it, if all was well at home, I'd put Lanie on my knee and we'd build castles out of twigs or tell each other stories until it was time for her to go to bed.~
= ~Sometimes, if Miranda was in for the night, I'd head over to the Red Sheaf for a quiet pint and a bit of gossip.~
= ~I never realized how much I would miss those days.~
++ ~I'd have been bored out of my skull.~ + t13.55
+ ~!Global("B!GavRA","GLOBAL",1) 
      !Global("B!GavRA","GLOBAL",2)~ + ~You could go back, you know. You'd be safe enough in Athkatla, if I wasn't there. Once Lanie was done with her studies, you could go back to Beregost and everything would be as it was.~ + t13.41a 
+ ~Global("B!GavRA","GLOBAL",1)~ + ~You could go back, you know. You'd be safe enough in Athkatla, if I wasn't there. Once Lanie was done with her studies, you could go back to Beregost and everything would be as it was.~ + t13.41b 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~You could go back, you know. You'd be safe enough in Athkatla, if I wasn't there. Once Lanie was done with her studies, you could go back to Beregost and everything would be as it was.~ + t13.41c 
++ ~I wouldn't mind that kind of a life, myself.~ + t13.56
++ ~Could you go back, though? After everything we have seen and done, would you be content with a life like that?~ + t13.57
END 

IF ~~ t13.41a
SAY ~I'm not about to leave with your quest still undone.~ 
IF ~~ THEN + t13.61 
END 

IF ~~ t13.41b 
SAY ~I wouldn't abandon you. Not now, with your quest still undone.~ 
IF ~~ THEN + t13.61 
END 


IF ~~ t13.41c 
SAY ~I wouldn't abandon you. Not now, not ever.~ 
IF ~~ THEN + t13.61 
END 


IF ~~ t13.42
SAY ~Do you think I am neglecting my duties?~
+ ~!Class(Player1,CLERIC_ALL) 
      !Global("B!GavRA","GLOBAL",0) 
      !Global("B!GavRA","GLOBAL",3)~ + ~I think you're spending too much time flirting with me and not enough time doing whatever it is clerics do.~ + t13.58
+ ~Class(Player1,CLERIC_ALL) 
      !Global("B!GavRA","GLOBAL",0) 
      !Global("B!GavRA","GLOBAL",3)~ + ~I think you're spending too much time flirting with me and not enough time doing... whatever else you're supposed to be doing.~ + t13.58
++ ~Let's just say that you're easily distracted.~ + t13.59
++ ~You're pulling your weight. That's all I ask.~ + t13.60
++ ~No, you're fine. I just don't want you to get side-tracked.~ + t13.60
++ ~Not at all! I appreciate your diligence. It's only that we all need to be careful and remain focused in order to survive.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t13.60a 
END

IF ~~ t13.43
SAY ~Very true.~ 
IF ~~ THEN + t13.46
END

IF ~~ t13.44
SAY ~I can understand that. If you didn't care about others, your life would be easier... and less dangerous. But you do care about others, thank the gods. Anyway...~
IF ~~ THEN + t13.22
END

IF ~~ t13.45
SAY ~Think about what you're saying, <CHARNAME>! Have you become so weary that you have given yourself over to evil?~
++ ~Maybe I just need a rest.~ + t13.63
++ ~No... I guess not.~ + t13.64 
+ ~OR(2) Alignment(Player1,MASK_EVIL) 
      ReputationLT(Player1,11)~ + ~I'm not exactly known for my good works.~ + t13.45a 
++ ~You make it sound like taking a little time for myself is akin to slaughtering a village.~DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t13.65
END 

IF ~~ t13.45a
SAY ~True, but I thought we were working on that.~ 
+ ~!Global("B!GavRA","GLOBAL",0) 
      !Global("B!GavRA","GLOBAL",3)~ + ~Give it up, Gavin. Nothing you say is ever going to change me.~ DO ~SetGlobal("B!GavRA","GLOBAL",3) 
            SetGlobal("B!GavRomBreak","GLOBAL",2)~ + t13.45b 
+ ~OR(2) Global("B!GavRA","GLOBAL",0) 
          Global("B!GavRA","GLOBAL",3)~ + ~Give it up, Gavin. Nothing you say is ever going to change me.~ + t13.45b 
++ ~We are, Gavin. I just need more time.~ + t13.45c 
++ ~I'm waiting for inspiration.~ + t13.45d 
END 

IF ~~ t13.45b 
SAY ~Unfortunate. I pray that you find the way to the light, but I know I cannot force you.~ 
IF ~~ THEN DO ~IncrementGlobal("B!GavLove","GLOBAL",-5)~ EXIT 
END 

IF ~~ t13.45c 
SAY ~Then time you shall have. As Lathander gives me strength, I will help you as long as hope remains.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t13.45d 
SAY ~I pray that you may find it... and soon.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t13.46
SAY ~I know, <CHARNAME>, I know. Everyone expects so much from you, it's no wonder you're feeling the strain. I wish there was something I could do to help.~
= ~But you've been through enough for one day. How about I carry your pack for a while and we stop soon? You can use some rest.~
++ ~That sounds like a good idea.~ + t13.66 
++ ~Do I look like some weakling, unable to carry my own pack?~ + t13.46a 
++ ~No, Gavin, I'm all right.~ + t13.49
END 

IF ~~ t13.46a 
SAY ~No, of course not. Just don't push yourself too hard.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t13.47
SAY ~Fine.~
IF ~~ THEN EXIT
END 

IF ~~ t13.48
SAY ~If you say so...~
IF ~~ THEN + t13.22
END

IF ~~ t13.49
SAY ~All right then. But don't be afraid to call a halt if you change your mind.~
IF ~~ THEN EXIT 
END

IF ~~ t13.50
SAY ~If you're serious, you and I have nothing further to say to each other.~
++ ~So be it.~ + t13.54
++ ~No, Gavin, wait! I didn't mean it like that. I'm tired, that's all.~ + t13.46
END

IF ~~ t13.51 
SAY ~Hmf. Well, that's something, I guess.~
IF ~~ THEN DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ EXIT
END

IF ~~ t13.51a
SAY ~I... I'm surprised to hear you say that.~
IF ~~ THEN DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ EXIT
END

IF ~~ t13.51b
SAY ~Hopefully, at least some of those involve making you happy.~
IF ~~ THEN DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ EXIT
END

IF ~~ t13.51c
SAY ~And we all know what those are.~
IF ~~ THEN DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ EXIT
END

IF ~~ t13.52
SAY ~Sometimes, I don't know what to make of you, <CHARNAME>.~
IF ~~ THEN EXIT
END

IF ~~ t13.53
SAY ~Well, that's certainly a relief!~
IF ~~ THEN EXIT
END

IF ~~ t13.54
SAY ~I'm sorry you feel that way. Farewell.~
IF ~!Global("B!GavRA","GLOBAL",0)~ THEN DO ~SetGlobal("B!GavJoin","GLOBAL",0) 
            SetGlobal("B!GavRA","GLOBAL",3)
            SetGlobal("B!GavRomBreak","GLOBAL",2) 
            ChangeAIScript("",DEFAULT)
            SetLeavePartyDialogFile()
            LeaveParty()
            EscapeAreaMove("AR0902",805,1053,10)
            AddJournalEntry(%Gavin at the Temple of Lathander. 

Gavin has left the group and has gone to the Temple of Lathander in the Temple District.%,QUEST)~ EXIT 
IF ~Global("B!GavRA","GLOBAL",0)~ THEN DO ~SetGlobal("B!GavJoin","GLOBAL",0) 
            ChangeAIScript("",DEFAULT)
            SetLeavePartyDialogFile()
            LeaveParty()
            EscapeAreaMove("AR0902",805,1053,10)
            AddJournalEntry(%Gavin at the Temple of Lathander. 

Gavin has left the group and has gone to the Temple of Lathander in the Temple District.%,QUEST)~ EXIT 
END

IF ~~ t13.55
SAY ~Everyone is different. I found that life fulfilling.~
IF ~~ THEN + t13.61
END

IF ~~ t13.56
SAY ~But if you had that kind of a life, would you like it?~
IF ~~ THEN + t13.61
END

IF ~~ t13.57
SAY ~That's the question I've been asking myself.~
IF ~~ THEN + t13.61
END

IF ~~ t13.58
SAY ~It won't happen again.~
IF ~~ THEN DO ~SetGlobal("B!GavRA","GLOBAL",3) 
      SetGlobal("B!GavRomBreak","GLOBAL",1) 
      IncrementGlobal("B!GavLove","GLOBAL",-1)~ EXIT
END

IF ~~ t13.59
SAY ~I'll work on it.~
IF ~~ THEN EXIT
END

IF ~~ t13.60
SAY ~I take the hint. Back to work.~
IF ~~ THEN EXIT
END

IF ~~ t13.60a
SAY ~I won't let you down.~
IF ~~ THEN EXIT
END

IF ~~ t13.61
SAY ~That life might well be closed forever to us, now, anyhow. I could live that life because I knew no other. Perhaps it was the same with you, in Candlekeep. But now, we've seen more of the world. How small would Beregost seem now, and how confining?~
++ ~It was too small and too dull then, so I can only imagine it would be doubly so now.~ + t13.68
++ ~I don't know. Maybe one day, we'll have a chance to find out.~ + t13.67
++ ~We'll figure that out if we survive.~ + t13.67
++ ~That does it. I need to find more for you to do so you don't start thinking about things like this anymore.~ + t13.62
END

IF ~~ t13.62
SAY ~Heh. Maybe I am thinking too much. Never mind.~
IF ~~ THEN EXIT
END

IF ~~ t13.63
SAY ~I'm sure that's all that's wrong. Maybe we can afford a day or two of rest, to let you recover some of your enthusiasm.~
IF ~~ THEN EXIT 
END

IF ~~ t13.64
SAY ~Well, that's a relief. But you've had a long <DAYNIGHT>, and the sooner we get moving, the sooner you'll be able to rest.~
IF ~~ THEN EXIT
END

IF ~~ t13.65
SAY ~Everyone needs rest, <CHARNAME>, and I'm not saying that you don't, but there's a difference between taking a day or two off and abandoning the innocent to death and torture. Rest, if you need it, but don't give up. Please.~
IF ~~ THEN EXIT
END

IF ~~ t13.66
SAY ~All right, then. Give me your pack, and just a little further, now.~
IF ~~ THEN EXIT
END

IF ~~ t13.67
SAY ~I guess we will. But I've bent your ear long enough for one <DAYNIGHT>. Let's move on.~
IF ~~ THEN EXIT
END

IF ~~ t13.68
SAY ~Probably. But I've bent your ear long enough for one <DAYNIGHT>. Let's move on.~
IF ~~ THEN EXIT
END 
END 

/* Talk 14 "I need focus," aka the importance of concentration */ 

APPEND ~B!GavJ~ 

IF ~Global("B!GavTalk","GLOBAL",28)~ THEN BEGIN t14.1
SAY ~It's no use. I've just read this journal entry four times, and I still don't remember what in the nine hells I just read.~ [bgav117] 
++ ~Maybe you're too tired?~ DO ~SetGlobal("B!GavTalk","GLOBAL",29) RealSetGlobalTimer("B!GavT","GLOBAL",GAV_TIME)~ + t14.tired 
++ ~Are you still hungry?~ DO ~SetGlobal("B!GavTalk","GLOBAL",29) RealSetGlobalTimer("B!GavT","GLOBAL",GAV_TIME)~ + t14.hungry 
++ ~Are you warm enough?~ DO ~SetGlobal("B!GavTalk","GLOBAL",29) RealSetGlobalTimer("B!GavT","GLOBAL",GAV_TIME)~ + t14.warm 
++ ~Do you have a headache?~ DO ~SetGlobal("B!GavTalk","GLOBAL",29) RealSetGlobalTimer("B!GavT","GLOBAL",GAV_TIME)~ + t14.headache 
++ ~So put the scroll down and go do something else.~ DO ~SetGlobal("B!GavTalk","GLOBAL",29) RealSetGlobalTimer("B!GavT","GLOBAL",GAV_TIME)~ + t14.else 
END 

IF ~~ t14.tired 
SAY ~No, I'm wide awake.~ 
IF ~~ THEN + t14.concentrate 
END 

IF ~~ t14.hungry 
SAY ~No, I had enough dinner.~ 
IF ~~ THEN + t14.concentrate 
END  

IF ~~ t14.warm 
SAY ~No, I'm warm enough.~ 
IF ~~ THEN + t14.concentrate  
END 

IF ~~ t14.headache 
SAY ~No, I feel fine.~ 
IF ~~ THEN + t14.concentrate 
END  

IF ~~ t14.else 
SAY ~No, I need to read it.~ 
IF ~~ THEN + t14.concentrate 
END  

IF ~~ t14.concentrate 
SAY ~I just can't seem to concentrate.~ 
++ ~Want to take a walk? Maybe getting away from it for a moment or two will help.~ + t14.walk 
++ ~We all have days like that. There isn't much you can do about it.~ + t14.gowalkies  
END 

IF ~~ t14.gowalkies 
SAY ~I think I need to get up and move around a bit. Would you like to join me?~ 
+ ~OR(27) 
    AreaCheck("AR0085") 
    AreaCheck("AR1100") 
    AreaCheck("AR1101") 
    AreaCheck("AR1102") 
    AreaCheck("AR1104") 
    AreaCheck("AR1105") 
    AreaCheck("AR1106") 
    AreaCheck("AR1107") 
    AreaCheck("AR1200") 
    AreaCheck("AR1204") 
    AreaCheck("AR1300") 
    AreaCheck("AR1304") 
    AreaCheck("AR1400") 
    AreaCheck("AR1404") 
    AreaCheck("AR1700") 
    AreaCheck("AR1800") 
    AreaCheck("AR1900") 
    AreaCheck("AR1901") 
    AreaCheck("AR1902") 
    AreaCheck("AR1904") 
    AreaCheck("AR1905") 
    AreaCheck("AR2500") 
    AreaCheck("AR2600") 
    AreaCheck("AR2602") 
    AreaCheck("AR2603")
    AreaCheck("AR2700") 
    AreaCheck("AR2800")~ + ~Sure.~ + t14.walkforest 
+ ~!AreaCheck("AR0085") 
    !AreaCheck("AR1100") 
    !AreaCheck("AR1101") 
    !AreaCheck("AR1102") 
    !AreaCheck("AR1104") 
    !AreaCheck("AR1105") 
    !AreaCheck("AR1106") 
    !AreaCheck("AR1107") 
    !AreaCheck("AR1200") 
    !AreaCheck("AR1204") 
    !AreaCheck("AR1300") 
    !AreaCheck("AR1304") 
    !AreaCheck("AR1400") 
    !AreaCheck("AR1404") 
    !AreaCheck("AR1700") 
    !AreaCheck("AR1800") 
    !AreaCheck("AR1900") 
    !AreaCheck("AR1901") 
    !AreaCheck("AR1902") 
    !AreaCheck("AR1904") 
    !AreaCheck("AR1905") 
    !AreaCheck("AR2500") 
    !AreaCheck("AR2600") 
    !AreaCheck("AR2602") 
    !AreaCheck("AR2603")
    !AreaCheck("AR2700") 
    !AreaCheck("AR2800")~ + ~Sure.~ + t14.walkcity 
++ ~No, thanks.~ + t14.backlater  
END 

IF ~~ t14.backlater 
SAY ~Ah well. I'll be back later.~ 
IF ~~ THEN DO ~RestParty()~ EXIT  
END 

IF ~~ t14.walk 
SAY ~That sounds like a good idea.~ 
IF ~OR(27) 
    AreaCheck("AR0085") 
    AreaCheck("AR1100") 
    AreaCheck("AR1101") 
    AreaCheck("AR1102") 
    AreaCheck("AR1104") 
    AreaCheck("AR1105") 
    AreaCheck("AR1106") 
    AreaCheck("AR1107") 
    AreaCheck("AR1200") 
    AreaCheck("AR1204") 
    AreaCheck("AR1300") 
    AreaCheck("AR1304") 
    AreaCheck("AR1400") 
    AreaCheck("AR1404") 
    AreaCheck("AR1700") 
    AreaCheck("AR1800") 
    AreaCheck("AR1900") 
    AreaCheck("AR1901") 
    AreaCheck("AR1902") 
    AreaCheck("AR1904") 
    AreaCheck("AR1905") 
    AreaCheck("AR2500") 
    AreaCheck("AR2600") 
    AreaCheck("AR2602") 
    AreaCheck("AR2603")
    AreaCheck("AR2700") 
    AreaCheck("AR2800") ~ + t14.walkforest 
IF ~!AreaCheck("AR0085") 
    !AreaCheck("AR1100") 
    !AreaCheck("AR1101") 
    !AreaCheck("AR1102") 
    !AreaCheck("AR1104") 
    !AreaCheck("AR1105") 
    !AreaCheck("AR1106") 
    !AreaCheck("AR1107") 
    !AreaCheck("AR1200") 
    !AreaCheck("AR1204") 
    !AreaCheck("AR1300") 
    !AreaCheck("AR1304") 
    !AreaCheck("AR1400") 
    !AreaCheck("AR1404") 
    !AreaCheck("AR1700") 
    !AreaCheck("AR1800") 
    !AreaCheck("AR1900") 
    !AreaCheck("AR1901") 
    !AreaCheck("AR1902") 
    !AreaCheck("AR1904") 
    !AreaCheck("AR1905") 
    !AreaCheck("AR2500") 
    !AreaCheck("AR2600") 
    !AreaCheck("AR2602") 
    !AreaCheck("AR2603")
    !AreaCheck("AR2700") 
    !AreaCheck("AR2800")~ + t14.walkcity 
END 

IF ~~ t14.walkforest 
SAY ~(You walk some distance away from the others, just out of earshot, though you could still see the camp, if the undergrowth were not so heavy.)~ 
IF ~~ THEN DO ~SetGlobal("B!GavT14Forest","LOCALS",1) 
      ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!cut14f")~ EXIT 
END 

IF ~~ THEN BEGIN t14.walkcity 
SAY ~(You walk out of the inn and into the city streets, no clear route in mind.)~ 
IF ~~ THEN DO ~SetGlobal("B!GavT14City","LOCALS",1) 
      ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!cut14c")~ EXIT 
END 

IF ~Global("B!GavT14Forest","LOCALS",1)~ THEN BEGIN t14.forest_arrived 
SAY ~This glade looks private enough.~ 
IF ~~ THEN DO ~SetGlobal("B!GavT14Forest","LOCALS",2)~ + t14.talk 
END 

IF ~Global("B!GavT14City","LOCALS",1)~ THEN BEGIN t14.city_arrived 
SAY ~This alley looks private enough.~ 
IF ~~ THEN DO ~SetGlobal("B!GavT14City","LOCALS",2)~ + t14.talk 
END 

IF ~~ t14.talk 
SAY ~I just don't know what's wrong with me. I haven't been able to concentrate on much of anything all day.~ 
++ ~Is something bothering you?~ + t14.ailsyou 
++ ~Everybody gets like that sometimes. It's nothing to worry about.~ + t14.worry 
++ ~You'd better pull yourself together, Gavin. I need everyone to be at their best.~ + t14.buckup 
++ ~Are you able to fulfil your duties to the group?~ + t14.duties 
++ ~Buck up, Gavin. I don't tolerate slackers.~ + t14.buckup 
END 

IF ~~ t14.ailsyou 
SAY ~Nothing ails me, but I'm useless, and that has me concerned.~ 
IF ~~ THEN + t14.distracted 
END 

IF ~~ t14.worry 
SAY ~I'm not worried, but I am concerned.~ 
IF ~~ THEN + t14.distracted 
END 

IF ~~ t14.buckup 
SAY ~I know, and that's why this is so irritating.~ 
IF ~~ THEN + t14.distracted 
END 

IF ~~ t14.duties 
SAY ~I can still pray, so I'm getting my spells, but that's about all I'm good for.~ 
IF ~~ THEN + t14.distracted 
END 

IF ~~ t14.distracted 
SAY ~I'm fine. There's nothing wrong with me, but I can't seem to focus on anything. I can't even read our journal and remember what it said.~ 
++ ~Good thing it isn't your job to remember it.~ + t14.besidethepoint 
++ ~You just need sleep. You've been run ragged over the last few days.~ + t14.noworse 
++ ~Don't be too hard on yourself. You don't need to remember everything.~ + t14.anything 
++ ~You've got one night to get your act together. If you don't snap out of it by morning, we're going to have words.~ + t14.pressure 
END 

IF ~~ t14.besidethepoint 
SAY ~That's besides the point.~ 
IF ~~ THEN + t14.focus 
END 

IF ~~ t14.noworse 
SAY ~You could say the same for any of us, but I don't see you staring at the lantern without a clear thought in your head.~ 
IF ~~ THEN + t14.focus 
END 

IF ~~ t14.anything 
SAY ~I never would, but I'd like to remember something, at least.~ 
IF ~~ THEN + t14.focus 
END 

IF ~~ t14.pressure 
SAY ~So, no pressure, then.~ 
IF ~~ THEN + t14.focus 
END 

IF ~~ t14.focus 
SAY ~I need to find some way to restore my concentration, or I'm as good as useless to you, and that's not a position I want to be in.~ 
++ ~Why don't you give your mind a rest for now. Sketch or something. You'll be better after some relaxation.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.nothing 
++ ~Have you tried meditation?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.nothing 
++ ~Just don't think about it. The more you worry, the harder it will be to concentrate.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.alone 
+ ~Global("B!GavRA","GLOBAL",0)~ + ~When was the last time you were with a woman?~ + t14.woman 
+ ~Global("B!GavRA","GLOBAL",1)~ + ~When was the last time you were with a woman?~ + t14.woman1 
+ ~Global("B!GavRA","GLOBAL",2) 
      Global("B!GavSex","GLOBAL",1)~ + ~Maybe you need some loving.~ + t14.woman2 
+ ~Global("B!GavRA","GLOBAL",2) 
      !Global("B!GavSex","GLOBAL",1)~ + ~Maybe you need some loving.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.woman2a 
+ ~Global("B!GavRA","GLOBAL",3) 
      Global("B!GavRomBreak","GLOBAL",1) 
      Global("B!GavSex","GLOBAL",1)~ + ~Maybe you need to be with a woman.~ + t14.woman3a 
+ ~Global("B!GavRA","GLOBAL",3) 
      Global("B!GavRomBreak","GLOBAL",2) 
      Global("B!GavSex","GLOBAL",1)~ + ~Maybe you need to be with a woman.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.woman3b 
+ ~Global("B!GavRA","GLOBAL",3) 
      !Global("B!GavSex","GLOBAL",1)~ + ~Maybe you need to be with a woman.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.woman3b 
+ ~Global("B!GavRA","GLOBAL",4) 
      Global("B!GavSex","GLOBAL",1)~ + ~Maybe you need some physical gratification.~ + t14.woman4 
+ ~Global("B!GavRA","GLOBAL",4) 
      !Global("B!GavSex","GLOBAL",1)~ + ~Maybe you need some physical gratification.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.woman4a 
++ ~Your problems are your own. Deal with them.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.thanksloads 
END 

IF ~~ t14.woman3a 
SAY ~What? For old times' sake?~ 
++ ~Why not?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.feelstrange 
++ ~Not me! Someone else.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.notexactly 
++ ~Right. Forget I said anything.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.alone 
END 

IF ~~ t14.notexactly 
SAY ~No, that isn't what I want.~ 
IF ~~ THEN + t14.alone 
END 

IF ~~ t14.feelstrange 
SAY ~Wouldn't it feel strange, with things as they stand between us?~ 
++ ~How badly do you want it?~ + t14.badenough 
++ ~I miss the lovemaking, to be honest. I don't miss the commitment, or your moodiness, or your snoring, but the sex was all right.~ DO ~SetGlobal("B!GavRA","GLOBAL",4)~ + t14.reset4 
++ ~I've been meaning to talk to you about that. I miss you, Gavin.~  DO ~SetGlobal("B!GavRA","GLOBAL",2)~ + t14.reset2 
++ ~Hmm. Yes, it probably would feel strange.~ + t14.alone 
END 

IF ~~ t14.reset2 
SAY ~I miss you, too. Do you want to try again? We could pick up right where we left off.~ 
++ ~I'd like that.~ + t14.reset2a 
++ ~How about if we went back to sleeping together, but left out the commitment.~  DO ~SetGlobal("B!GavRA","GLOBAL",4)~ + t14.reset4 
++ ~Maybe it would be better if we left things as they are.~ DO ~SetGlobal("B!GavRA","GLOBAL",3) 
      SetGlobal("B!GavRomBreak","GLOBAL",1)~ + t14.alone 
END 

IF ~~ t14.reset4 
SAY ~Are you sure that's what you want? I'll do it if I have to, but you have to understand that if there's another misunderstanding between us, or even if you send me away, that's it. Over and done with forever.~ 
++ ~I can live with that.~ + t14.reset4a 
++ ~Maybe it would be better if we left things as they are.~ DO ~SetGlobal("B!GavRA","GLOBAL",3) 
      SetGlobal("B!GavRomBreak","GLOBAL",1)~ + t14.alone 
END 

IF ~~ t14.reset4a 
SAY ~If that's the way you want it, fine.~ 
= ~Since you do enjoy the physical aspects of our relationship so much, I seem to have some rather pressing needs, at the moment...~ 
+ ~OR(2) PartyHasItem("b!cassil") 
      Global("B!GavCassil","LOCALS",4)~ + ~We'll just have to see what we can do about that, won't we?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1) 
            TakePartyItemNum("b!cassil",1)~ + t14.righthere4  
+ ~!PartyHasItem("b!cassil") 
      !Global("B!GavCassil","LOCALS",4)~ + ~We'll just have to see what we can do about that, won't we?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1) 
            TakePartyItemNum("b!cassil",1)~ + t14.unprepared4 
++ ~I'm sorry, but I'm not really in the mood tonight.~ + t14.frustrated4 
END 

IF ~~ t14.badenough 
SAY ~Badly enough that I'm having this conversation.~ 
++ ~Come on, then. You know what to do.~ + t14.righthere4 
++ ~How does it feel to want something you can't have?~ + t14.youbitch 
++ ~I'm sorry, Gavin. Our separation must be very hard on you.~ + t14.noidea 
END 

IF ~~ t14.noidea 
SAY ~You have no idea.~ 
IF ~~ THEN + t14.alone 
END 

IF ~~ t14.youbitch 
SAY ~You know, there are times that I'm sorry we aren't together any more. This isn't one of them.~ 
IF ~~ THEN + t14.thanksloads 
END 

IF ~~ t14.reset2a 
SAY ~I can't tell you how happy I am to hear that!~ 
++ ~Let's make love.~ + t14.righthere4 
++ ~I'm glad some good has come out of our walk.~ + t14.reset2b 
++ ~This doesn't mean I want to sleep with you right now, however.~ + t14.frustrated2 
END 

IF ~~ t14.reset2b 
SAY ~So... now that we're back together again, some needs do seem a bit pressing...~ 
+ ~OR(2) PartyHasItem("b!cassil") 
      Global("B!GavCassil","LOCALS",4)~ + ~We'll just have to see what we can do about that, won't we?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1) 
            TakePartyItemNum("b!cassil",1)~ + t14.righthere4  
+ ~!PartyHasItem("b!cassil") 
      !Global("B!GavCassil","LOCALS",4)~ + ~We'll just have to see what we can do about that, won't we?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1) 
            TakePartyItemNum("b!cassil",1)~ + t14.unprepared4 
++ ~I'm sorry, love. I'm not really in the mood tonight. Will you be alright?~ + t14.frustrated2 
END 

IF ~~ t14.thanksloads 
SAY ~I'm glad we had this chance to talk. We're wasting our time here. Let's just go back.~ 
IF ~GlobalGT("B!GavT14Forest","LOCALS",0)~ THEN DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!cut14r")~ EXIT 
IF ~GlobalGT("B!GavT14City","LOCALS",0)~ THEN DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!cut14i")~ EXIT 
END 
    
IF ~~ t14.woman2 
SAY ~Now that you mention it, love, the need really does seem a bit pressing.~   
+ ~OR(2) PartyHasItem("b!cassil") 
      Global("B!GavCassil","LOCALS",4)~ + ~We'll just have to see what we can do about that, won't we?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1) 
            TakePartyItemNum("b!cassil",1)~ + t14.righthere4  
+ ~!PartyHasItem("b!cassil") 
      !Global("B!GavCassil","LOCALS",4)~ + ~We'll just have to see what we can do about that, won't we?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1) 
            TakePartyItemNum("b!cassil",1)~ + t14.unprepared4 
++ ~I'm sorry, love. I'm not really in the mood tonight. Will you be alright?~ + t14.frustrated2 
END 

IF ~~ t14.frustrated2 
SAY ~It won't be easy forgoing the pleasure of your embrace, but I'll live.~ 
IF ~~ THEN + t14.gobackhorny2 
END 

IF ~~ t14.gobackhorny2 
SAY ~Now that we've identified the problem, though, it's probably best if we get back.~ 
IF ~~ THEN DO ~SetGlobal("B!GavT14RA","LOCALS",2) 
      ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!cut14e")~ EXIT 
END 

IF ~~ t14.woman4 
SAY ~Perhaps I do.~ 
+ ~OR(2) PartyHasItem("b!cassil") 
      Global("B!GavCassil","LOCALS",4)~ + ~We'll just have to see what we can do about that, won't we?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1) 
            TakePartyItemNum("b!cassil",1)~ + t14.righthere4  
+ ~!PartyHasItem("b!cassil") 
      !Global("B!GavCassil","LOCALS",4)~ + ~We'll just have to see what we can do about that, won't we?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1) 
            TakePartyItemNum("b!cassil",1)~ + t14.unprepared4 
++ ~I don't know. I'm not really in the mood tonight. A little frustration never hurt anyone.~ + t14.frustrated4  
END 
      
IF ~~ t14.unprepared4 
SAY ~That's going to present a problem. We're completely unprepared.~ 
+ ~Global("B!GavExplicit","GLOBAL",1)~ + ~There's more than one way to satisfy you, Gavin.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.droptrou4 
+ ~Global("B!GavExplicit","GLOBAL",1)~ + ~Let your leggings down, and I'll see what I can do for you.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.impendingbj4 
+ ~!Global("B!GavExplicit","GLOBAL",1)~ + ~There's more than one way to satisfy you, Gavin.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.teen 
+ ~!Global("B!GavExplicit","GLOBAL",1)~ + ~Let your leggings down, and I'll see what I can do for you.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.teen 
++ ~Then we'll just have to wait until we get back and the others are asleep. With more privacy, we'll have more options.~ DO ~SetGlobal("B!GavPCWantsIt","LOCALS",1)~ + t14.gobackhorny4 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~Then you'll just have to do without.~ + t14.frustrated4 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~That is unfortunate. Will you be alright if you have to do without?~ + t14.frustrated2 
END 

IF ~~ t14.righthere4 
SAY ~You mean right here?~ 
+ ~GlobalGT("B!GavT14Forest","LOCALS",0)  
      Global("B!GavExplicit","GLOBAL",1)~ + ~Why not? We seem to be alone.~ + t14.woods4 
+ ~GlobalGT("B!GavT14City","LOCALS",0) 
      Global("B!GavExplicit","GLOBAL",1)~ + ~Why not? We seem to be alone.~ + t14.alley4 
+ ~!Global("B!GavExplicit","GLOBAL",1) 
    GlobalGT("B!GavT14Forest","LOCALS",0)~ + ~Why not? We seem to be alone.~ + t14.teen 
+ ~GlobalGT("B!GavT14City","LOCALS",0) 
      !Global("B!GavExplicit","GLOBAL",1)~ + ~Why not? We seem to be alone.~ + t14.teen 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~No, when we get back. Or don't you think you can wait that long?~ + t14.canwait4 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~No, when we get back. Unless the risk of discovery excites you.~ + t14.canwait4 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~Hmm. Do I give Gavin what he wants, or do I make him wait? Decisions, decisions.~ + t14.waffle4 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~Hmm. Do I give Gavin what he wants, or do I make him wait? Decisions, decisions.~ + t14.waffle2 
+ ~OR(2) Global("B!GavRA","GLOBAL",4) 
      Global("B!GavRA","GLOBAL",3)~ + ~On second thought, this doesn't seem like such a good idea.~ + t14.frustrated4 
END 

IF ~~ t14.waffle2 
SAY ~You are such a tease!~ 
+ ~Global("B!GavExplicit","GLOBAL",1) 
      GlobalGT("B!GavT14Forest","LOCALS",0)~ + ~I think you'll get your wish.~ + t14.woods4 
+ ~GlobalGT("B!GavT14City","LOCALS",0) 
      Global("B!GavExplicit","GLOBAL",1)~ + ~I think you'll get your wish.~ + t14.alley4 
+ ~!Global("B!GavExplicit","GLOBAL",1) 
    GlobalGT("B!GavT14Forest","LOCALS",0)~ + ~I think you'll get your wish.~ + t14.teen 
+ ~GlobalGT("B!GavT14City","LOCALS",0) 
      !Global("B!GavExplicit","GLOBAL",1)~ + ~I think you'll get your wish.~ + t14.teen 
++ ~Wait, I think, but just until the others are asleep.~ DO ~SetGlobal("B!GavPCWantsIt","LOCALS",1)~ + t14.lateritis2 
++ ~Such impatience! For that, my dear, you'll have to wait.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.frustrated2 
END 

IF ~~ t14.lateritis2 
SAY ~Very well, my darling. I'll come to you when the others are asleep.~ 
IF ~~ THEN + t14.gobackhorny2 
END 

IF ~~ t14.waffle4 
SAY ~(sigh) Well, at least now I know why I feel so distracted.~ 
IF ~~ THEN  + t14.gobackhorny4 
END 

IF ~~ t14.canwait4 
SAY ~Well, I did go nine years without any relief, so I can probably wait until the others are asleep.~ 
++ ~You don't sound so sure about that.~ + t14.wantnow4 
++ ~Since we've identified the problem, do you want to go back now?~ DO ~SetGlobal("B!GavPCWantsIt","LOCALS",1)~ + t14.wanttogo4 
++ ~You're going to have to wait a bit longer than that. I'm not in the mood.~ + t14.frustrated4 
END 

IF ~~ t14.wanttogo4 
SAY ~Very much. Let's go.~ 
IF ~Global("B!GavRA","GLOBAL",2)~ THEN DO ~SetGlobal("B!GavT14RA","LOCALS",2) 
      ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!cut14e")~ EXIT 
IF ~Global("B!GavRA","GLOBAL",4)~ THEN DO ~SetGlobal("B!GavT14RA","LOCALS",4) 
      ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!cut14e")~ EXIT 
END 

IF ~~ t14.wantnow4 
SAY ~Let's just say that the suggestion has really piqued my interest.~ 
+ ~GlobalGT("B!GavT14Forest","LOCALS",0)~ + ~We don't want you to be unhappy, now, do we?~ + t14.woods4 
+ ~GlobalGT("B!GavT14City","LOCALS",0)
      Global("B!GavExplicit","GLOBAL",1)~ + ~We don't want you to be unhappy, now, do we?~ + t14.alley4 
+ ~!Global("B!GavExplicit","GLOBAL",1) 
    GlobalGT("B!GavT14Forest","LOCALS",0)~ + ~We don't want you to be unhappy, now, do we?~ + t14.teen 
+ ~GlobalGT("B!GavT14City","LOCALS",0) 
      !Global("B!GavExplicit","GLOBAL",1)~ + ~We don't want you to be unhappy, now, do we?~ + t14.teen 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~Then let's go back now and start acting sleepy.~ DO ~SetGlobal("B!GavPCWantsIt","LOCALS",1)~ + t14.lateritis 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~Then let's go back now and start acting sleepy.~ DO ~SetGlobal("B!GavPCWantsIt","LOCALS",1)~ + t14.lateritis2 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~Poor Gavin. You are really out of luck tonight, because I'm just not in the mood.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.frustrated4 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~Poor Gavin. You are really out of luck tonight, because I'm just not in the mood.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.frustrated2 
END 

IF ~~ t14.teen 
SAY ~Let's make ourselves comfortable, then!~ 
++ ~Let's.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.teensex 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~Hmm. Maybe it would be better if we waited until later.~ DO ~SetGlobal("B!GavPCWantsIt","LOCALS",1)~ + t14.lateritis 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~Hmm. Maybe it would be better if we waited until later.~ DO ~SetGlobal("B!GavPCWantsIt","LOCALS",1)~ + t14.lateritis2 
END 

IF ~~ t14.teensex 
SAY ~(Your world condenses until it contains only you, Gavin, and the pleasure you find in each other's embrace.)~ 
IF ~GlobalGT("B!GavT14Forest","LOCALS",0)~ THEN DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!cut14r")~ EXIT 
IF ~GlobalGT("B!GavT14City","LOCALS",0)~ THEN DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!cut14i")~ EXIT 
END 

IF ~~ t14.woods4 
SAY ~If you don't mind being on top, I can sit on that log over there.~ 
++ ~Sounds good.~ + t14.kiss4 
++ ~I don't know. We're a little too exposed for that. Just let your leggings down and I'll see what I can do for you.~ + t14.droptrou4 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~Hmm. Maybe it would be better if we waited until later.~ DO ~SetGlobal("B!GavPCWantsIt","LOCALS",1)~ + t14.lateritis 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~Hmm. Maybe it would be better if we waited until later.~ DO ~SetGlobal("B!GavPCWantsIt","LOCALS",1)~ + t14.lateritis2 
+ ~OR(2) Global("B!GavRA","GLOBAL",4) 
      Global("B!GavRA","GLOBAL",3)~ + ~On second thought, this doesn't seem like such a good idea.~ + t14.frustrated4 
END 

IF ~~ t14.alley4 
SAY ~If you don't mind being on top, I can sit on that crate over there.~ 
++ ~Sounds good.~ + t14.kiss4 
++ ~I don't know. We're a little too exposed for that. Just let your leggings down and I'll see what I can do for you.~ + t14.droptrou4 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~Hmm. Maybe it would be better if we waited until later.~ DO ~SetGlobal("B!GavPCWantsIt","LOCALS",1)~ + t14.lateritis 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~Hmm. Maybe it would be better if we waited until later.~ DO ~SetGlobal("B!GavPCWantsIt","LOCALS",1)~ + t14.lateritis2 
+ ~OR(2) Global("B!GavRA","GLOBAL",4) 
      Global("B!GavRA","GLOBAL",3)~ + ~On second thought, this doesn't seem like such a good idea.~ + t14.frustrated4 
END 

IF ~~ t14.kiss4 
SAY ~(He waits for you to settle yourself on his lap, then kisses you passionately. His hands move over your breasts, then around to your back and down to your hips. He pulls you forward until you feel yourself pressing against the bulge in his leggings.)~ 
++ ~(You rock back and forth with him, grinding yourself against him.)~ + t14.grind4 
++ ~We need to get rid of some of this clothing.~ + t14.strip4 
+ ~OR(2) Global("B!GavRA","GLOBAL",4) 
      Global("B!GavRA","GLOBAL",3)~ + ~You are excited now, aren't you. Too bad you aren't getting any tonight.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.frustrated4 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~You are excited now, aren't you. Too bad you aren't getting any tonight.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.frustrated2 
+ ~OR(2) Global("B!GavRA","GLOBAL",4) 
      Global("B!GavRA","GLOBAL",3)~ + ~I'm having second thoughts about this. We don't have a lot of privacy.~ + t14.gobackhorny4 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~I'm having second thoughts about this. We don't have a lot of privacy.~ + t14.frustrated2 
END 

IF ~~ t14.grind4 
SAY ~Should we loosen some of this clothing?~ 
++ ~Definitely.~ + t14.strip4 
++ ~No, I think we should leave the clothing on.~ + t14.dry4 
+ ~OR(2) Global("B!GavRA","GLOBAL",4) 
      Global("B!GavRA","GLOBAL",3)~ + ~Maybe we'd better just go back.~ + t14.gobackhorny4 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~Maybe we'd better just go back.~ + t14.frustrated2 
END 

IF ~~ t14.dry4 
SAY ~If that's what you want.~ 
= ~(He leans back so you can rub yourself against him.)~ 
+ ~OR(2) Global("B!GavRA","GLOBAL",4) 
      Global("B!GavRA","GLOBAL",3)~ + ~(You reposition yourself to bring your groin in closer contact with his and begin moving with him.)~ + t14.dryquickie4 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~(You reposition yourself to bring your groin in closer contact with his and begin moving with him.)~ + t14.dryquickie2 
+ ~OR(2) Global("B!GavRA","GLOBAL",4) 
      Global("B!GavRA","GLOBAL",3)~ + ~(You concentrate on pleasing yourself, moving in whatever way brings you the most satisfaction.)~ + t14.dryquickie4 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~(You concentrate on pleasing yourself, moving in whatever way brings you the most satisfaction.)~ + t14.dryquickie2 
+ ~OR(2) Global("B!GavRA","GLOBAL",4) 
      Global("B!GavRA","GLOBAL",3)~ + ~Maybe we'd better just go back.~ + t14.gobackhorny4 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~Maybe we'd better just go back.~ + t14.frustrated2 
END 

IF ~~ t14.dryquickie2 
SAY ~(If Gavin is disappointed by your decision to have a less intimate encounter, he gives no sign. His eyes quickly close, and his grip on your hips tightens.~ 
= ~(He arches his back, and his breathing changes, deepening and becoming more ragged.)~ 
++ ~(You continue moving against him until you are satisfied.)~ + t14.dryo4 
++ ~Easy, Gavin, we don't want you finishing too soon, do we?~ + t14.drynochoice 
++ ~We need to stop right now.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.frustrated2 
END 

IF ~~ t14.dryquickie4 
SAY ~(At first, Gavin seems disappointed that you decided on a less intimate encounter. His expression borders on boredom, rather than desire, but after a few moments, his eyes close and his grip on your hips tightens.~ 
= ~(He arches his back, and his breathing changes, deepening and becoming more ragged.)~ 
++ ~(You continue moving against him until you are satisfied.)~ + t14.dryo4 
++ ~Easy, Gavin, we don't want you finishing too soon, do we?~ + t14.drynochoice 
++ ~(You surrender to your own pleasure, and then get up off of him.)~ + t14.vicious4 
++ ~We need to stop right now.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.frustrated4 
END 

IF ~~ t14.drynochoice 
SAY ~Not a lot of choices... what rubs you rubs me. Ohno...~ 
IF ~~ THEN + t14.dryo4 
END 

IF ~~ t14.dryo4 
SAY ~(Finally, with one last thrust upwards and a convulsive shudder, he is done. He puts his arms around your back again, pulls you close, and buries his face in your hair.)~ 
++ ~You look like you needed that.~ + t14.muchneeded4 
++ ~Ow, think you might have been a bit too rough, towards the end.~ + t14.sorryboutthat 
++ ~I think we might have a real mess on our hands.~ + t14.wash4 
++ ~Think you'll be able to concentrate now?~ + t14.muchbetter4 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~I hope this doesn't mean you won't be able to rise to the occasion later.~ + t14.days4 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~I hope this doesn't mean you won't be able to rise to the occasion later.~ + t14.insatiable2 
END 

IF ~~ t14.insatiable2 
SAY ~My appetite for you is insatiable.~
IF ~~ THEN + t14.satisfied2 
END 

IF ~~ t14.satisfied2 
SAY ~Well, love, much as I hate to curtail our private time together, this is no place for basking in the afterglow. Why don't we get back, and I'll gladly hold you all night long.~
IF ~GlobalGT("B!GavT14Forest","LOCALS",0)~ THEN DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!cut14r")~ EXIT 
IF ~GlobalGT("B!GavT14City","LOCALS",0)~ THEN DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!cut14i")~ EXIT 
END 

IF ~~ t14.strip4 
SAY ~(He helps you to the ground, then hurriedly drops his leggings and sits down again. From the looks of things, he's more than ready for anything you might have in mind.)~ 
+ ~OR(2) Global("B!GavRA","GLOBAL",4) 
      Global("B!GavRA","GLOBAL",3)~ + ~(You adjust your own attire to expose your lower half and sit facing him.)~ + t14.beginsex4 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~(You adjust your own attire to expose your lower half and sit facing him.)~ + t14.beginsex2 
++ ~(You begin to walk away from him.)~ + t14.leavemehere4 
++ ~Well, isn't that a pretty picture.~ + t14.leavemehere4 
+ ~OR(2) Global("B!GavRA","GLOBAL",4) 
      Global("B!GavRA","GLOBAL",3)~ + ~You really will do anything for a lay, won't you? Well, too bad, because you aren't getting one.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.frustrated4 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~Gavin, I'm having second thoughts about this. What if someone comes? I think we should stop.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.frustrated2 
END 

IF ~~ t14.leavemehere4 
SAY ~Er... <CHARNAME>? Are you going to leave me here like this?~ 
++ ~I was thinking about it, but I've changed my mind.~ + t14.hurryup4 
+ ~OR(2) Global("B!GavRA","GLOBAL",4) 
      Global("B!GavRA","GLOBAL",3)~ + ~Maybe I'll just watch you handle this yourself.~ + t14.voyeur4 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~Would you mind if I watched you please yourself?~ + t14.voyeur2 
+ ~OR(2) Global("B!GavRA","GLOBAL",4) 
      Global("B!GavRA","GLOBAL",3)~ + ~Yes, actually, I am.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.gobackhorny4 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~No, but I'm having second thoughts. I don't think we should be doing this.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.frustrated2 
END 

IF ~~ t14.hurryup4 
SAY ~You're going to need to lose a bit of clothing, then.~ 
+ ~OR(2) Global("B!GavRA","GLOBAL",4) 
      Global("B!GavRA","GLOBAL",3)~ + ~(You make the necessary adjustments and sit facing him.)~ + t14.beginsex4 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~(You make the necessary adjustments and sit facing him.)~ + t14.beginsex2 
+ ~OR(2) Global("B!GavRA","GLOBAL",4) 
      Global("B!GavRA","GLOBAL",3)~ + ~On second thought, maybe it would be better if we just went back.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.gobackhorny4 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~On second thought, maybe it would be better if we just went back.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.frustrated2 
END 

IF ~~ t14.beginsex2 
SAY ~(Once you are positioned over him, he kisses you again, once more sliding his hands down your back. He pulls you down and toward his body, thrusting his own hips forward to take you. He gasps as he penetrates you, then moves his hands back to your breasts to caress you while you ride him.)~ 
++ ~(You push yourself further down onto him, sliding your hips back and forth to increase the friction.)~ + t14.easydoesit4 
++ ~(You let him do as he will.)~ + t14.slowride4 
++ ~Easy, Gavin! Not so deep!~ + t14.toodeep4 
++ ~That's enough. Just a taste, for now.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.meanie2 
END 

IF ~~ t14.meanie2 
SAY ~(sigh) Your tantalizing ways can really be  nuisance, you know.~ 
IF ~~ THEN + t14.gobackhorny2  
END 

IF ~~ t14.beginsex4 
SAY ~(He pulls you down and toward his body, thrusting his own hips forward to take you. He gasps as he penetrates you, then moves his hands back to your breasts to caress you while you ride him.)~ 
++ ~(You push yourself further down onto him, sliding your hips back and forth to increase the friction.)~ + t14.easydoesit4 
++ ~(You let him do as he will.)~ + t14.slowride4 
++ ~Easy, Gavin! Not so deep!~ + t14.toodeep4 
++ ~That's enough. Just a taste, for now.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.frustrated4 
END 

IF ~~ t14.toodeep4 
SAY ~Sorry! Got carriedaway.~
IF ~~ THEN + t14.slowride4 
END 

IF ~~ t14.easydoesit4 
SAY ~You'd better slow down, <CHARNAME>. I'm worked up enough already.~ 
++ ~(You slow your movements, raising yourself almost off him before falling back onto him again.)~ + t14.slowride4 
++ ~(You maintain your pace, rocking yourself against his body.)~ + t14.ride4 
++ ~(If anything, you increase the tempo, gripping his hips tightly with your thighs.)~ + t14.notquite4 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~Then we'd better save it for later. I don't want to spoil the fun now.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.gobackhorny4 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~Then we'd better save it for later. I don't want to spoil the fun now.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.frustrated2 
END 

IF ~~ t14.slowride4 
SAY ~(He moves his hands down to your waist again, helping to support you as you move over him. At first, he meets every descending movement with a slight thrust, but he soon stops, obviously wanting to prolong your pleasure.)~
IF ~~ THEN + t14.ride4 
END 

IF ~~ t14.ride4 
SAY ~(Soon, the intensity of his movements increases, however, and he pulls you down onto him with greater force. His breathing has grown ragged, and punctuated by sudden gulps of air.)~ 
= ~I can't take much more, <CHARNAME>.~ 
++ ~Oh no! I'm nowhere near ready yet!~ + t14.stopmoving4 
++ ~Then let it go. You need this.~ + t14.bigo4 
+ ~OR(2) Global("B!GavRA","GLOBAL",4) 
      Global("B!GavRA","GLOBAL",3)~ + ~Then let's stop this right here.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-2)~ + t14.vicious4 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~Then let's stop this right here.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.meanie2 
END 

IF ~~ t14.stopmoving4 
SAY ~Then you'd better stop moving around so much. Here.~ 
= ~(He guides you until he is as deep inside you as he can be, then begins to caress the center of your pleasure with the fingertips of one hand, but not moving in any other way.)~ 
++ ~(You surrender to the pleasure.)~ + t14.pcdone4 
++ ~(Despite his warning that you should move less, you continue to writhe on his lap.)~ + t14.tooslow4 
++ ~No, Gavin, don't. You need this more than I do.~ + t14.bigo4 
END 

IF ~~ t14.pcdone4 
SAY ~(Once he feels the last waves of your release subside, he begins moving again, thrusting deep into you.)~ 
++ ~(You let him go on until he is satisfied.)~ + t14.bigo4 
+ ~OR(2) Global("B!GavRA","GLOBAL",4) 
      Global("B!GavRA","GLOBAL",3)~ + ~What, you aren't done yet?~ + t14.notquite4 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~Are you almost there?~ + t14.notquite4 
++ ~Well, that was pleasant, but we should get back.~ + t14.notquite4 
+ ~OR(2) Global("B!GavRA","GLOBAL",4) 
      Global("B!GavRA","GLOBAL",3)~ + ~Gavin! Stop this right now!~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-2)~ + t14.vicious4 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~Gavin! Stop this right now!~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.meanie2 
END 

IF ~~ t14.notquite4 
SAY ~Almost...~ 
+ ~OR(2) Global("B!GavRA","GLOBAL",4) 
      Global("B!GavRA","GLOBAL",3)~ + ~Well, you'd better hurry up. We need to get back.~ + t14.bigo4 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~Can you hurry it up a little? I don't know how long the others will wait before they come looking for us.~ + t14.bigo4 
++ ~(You increase the intensity of your own movements.)~ + t14.bigo4 
++ ~(You reposition your legs so that you can get up off of him.)~ + t14.tooslow4 
+ ~OR(2) Global("B!GavRA","GLOBAL",4) 
      Global("B!GavRA","GLOBAL",3)~ + ~(You leap away from him.) Oh no you don't!~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-2)~ + t14.vicious4 
END 

IF ~~ t14.vicious4 
SAY ~Oh gods... why? Why, <CHARNAME>? I was so close!~ 
++ ~I need you to save it for later.~ + t14.cruelwoman4 
++ ~You get your satisfaction when I say you can, or did you forget?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.mistress4 
++ ~I was done with you. There was no need to make a mess.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.cruelwoman4 
++ ~It will be that much better for you, next time we meet privately.~ + t14.enjoynow4 
END 

IF ~~ t14.enjoynow4 
SAY ~(sigh) I would have enjoyed it now just as much...~
IF ~~ THEN + t14.frustrated4 
END 

IF ~~ t14.mistress4 
SAY ~I... I remember.~
IF ~~ THEN + t14.gobackhorny4 
END 

IF ~~ t14.cruelwoman4 
SAY ~You're a cruel woman, to get me this far and stop!~
IF ~~ THEN + t14.gobackhorny4 
END 

IF ~~ t14.tooslow4 
SAY ~Ohno! Too late!~ 
= ~(His hands hold your hips firmly, and you can sense that for him, it really is too late to stop now.)~
IF ~~ THEN + t14.bigo4 
END 

IF ~~ t14.bigo4 
SAY ~(Finally, with one last plunge and a convulsive shudder, he is done. He puts his arms around your back again, pulls you close, and buries his face in your hair.)~ 
++ ~You look like you needed that.~ + t14.muchneeded4 
++ ~Ow, think you might have gone a little too deep on that one.~ + t14.sorryboutthat 
++ ~I think we might have a real mess on our hands.~ + t14.wash4 
++ ~Think you'll be able to concentrate now?~ + t14.muchbetter4 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~I hope this doesn't mean you won't be able to rise to the occasion later.~ + t14.days4 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~I hope this doesn't mean you won't be able to rise to the occasion later.~ + t14.insatiable2 
END 

IF ~~ t14.days4 
SAY ~After that one, it's going to be a while. Hours, at least, maybe even a couple of days.~
IF ~~ THEN + t14.returnsatisfied4 
END 

IF ~~ t14.muchbetter4 
SAY ~I expect so... though once my blood cools a bit, I'll probably grow sleepy and lethargic.~
IF ~OR(2) Global("B!GavRA","GLOBAL",4) 
      Global("B!GavRA","GLOBAL",3)~ THEN + t14.returnsatisfied4 
IF ~Global("B!GavRA","GLOBAL",2)~ THEN + t14.satisfied2 
END 


IF ~~ t14.wash4 
SAY ~It all comes out in the wash.~ 
IF ~OR(2) Global("B!GavRA","GLOBAL",4) 
      Global("B!GavRA","GLOBAL",3)~ THEN + t14.returnsatisfied4 
IF ~Global("B!GavRA","GLOBAL",2)~ THEN + t14.satisfied2 
END 


IF ~~ t14.sorryboutthat 
SAY ~Sorry, I didn't mean to hurt you.~ 
IF ~OR(2) Global("B!GavRA","GLOBAL",4) 
      Global("B!GavRA","GLOBAL",3)~ THEN + t14.returnsatisfied4 
IF ~Global("B!GavRA","GLOBAL",2)~ THEN + t14.satisfied2 
END 


IF ~~ t14.muchneeded4 
SAY ~Very, very much. I can't tell you how much better I feel now.~ 
IF ~OR(2) Global("B!GavRA","GLOBAL",4) 
      Global("B!GavRA","GLOBAL",3)~ THEN + t14.returnsatisfied4 
IF ~Global("B!GavRA","GLOBAL",2)~ THEN + t14.satisfied2 
END 


IF ~~ t14.droptrou4 
SAY ~This is new! What did you have in mind?~ 
++ ~Just drop your leggings and you'll find out.~ + t14.impendingbj4 
++ ~You've pleased me with your tongue before. Maybe it's time I returned the favor.~ + t14.impendingbj4 
++ ~You'd like a brisk rubdown, wouldn't you?~ + t14.impendingbj4 
+ ~OR(2) Global("B!GavRA","GLOBAL",4) 
      Global("B!GavRA","GLOBAL",3)~ + ~On second thought, a little frustration never hurt anyone.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.frustrated4 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~On second thought, a little frustration never hurt anyone.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.frustrated2 
END 

IF ~~ t14.impendingbj4 
SAY ~If you're willing, most definitely.~ 
= ~(He loosens his leggings and lowers them, exposing himself to you. The suggestion alone seems to have been enough to arouse him somewhat.)~ 
++ ~(You stroke him gently.)~ + t14.stroke4 
++ ~(You take him into your mouth.)~ + t14.softbj4 
++ ~(You seize him and yank him roughly.)~ + t14.yank4 
++ ~I know you can do better than that.~ + t14.stimulus4 
+ ~OR(2) Global("B!GavRA","GLOBAL",4) 
      Global("B!GavRA","GLOBAL",3)~ + ~You really will do anything for relief, won't you? Pull them back up. You're going to bed frustrated tonight.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.frustrated4 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~On second thought, it wouldn't hurt you to go to bed frustrated, once in a while.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.frustrated2 
END 

IF ~~ t14.softbj4 
SAY ~(If his excitement was less than complete when you began, the feel of your lips soon brings him to full arousal.)~
IF ~~ THEN + t14.bj4 
END 

IF ~~ t14.yank4 
SAY ~Easy, woman! You'll do me an injury!~ 
++ ~(You run your hands over him more gently.)~ + t14.stroke4 
++ ~(You take him into your mouth.)~ + t14.softbj4 
++ ~(You continue to stroke him vigorously.)~ + t14.roughhj4 
+ ~InParty("Aerie") 
      !StateCheck("Aerie",CD_STATE_NOTVALID) 
      OR(2) Global("B!GavRA","GLOBAL",4) 
          Global("B!GavRA","GLOBAL",3)~ + ~You want gentle, talk to Aerie.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-2)~ + t14.enough4 
+ ~InParty("Imoen2") 
      !StateCheck("Imoen2",CD_STATE_NOTVALID) 
      OR(2) Global("B!GavRA","GLOBAL",4) 
          Global("B!GavRA","GLOBAL",3)~ + ~You want gentle, talk to Imoen.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-2)~ + t14.enough4 
++ ~Show me how I should do it, then.~ + t14.infrontofpc4 
END 

IF ~~ t14.stroke4 
SAY ~(Before long, Gavin's attention is completely fixed on what you are doing. Any trace of softness is completely gone from him, and his face takes on a look of intense concentration.)~ 
++ ~(You begin to stroke him more violently.)~ + t14.roughhj4 
++ ~(You continue, though you increase the pace a little.)~ + t14.easier4 
++ ~(You close your mouth around him.)~ + t14.bj4 
+ ~OR(2) Global("B!GavRA","GLOBAL",4) 
      Global("B!GavRA","GLOBAL",3)~ + ~Alright, I think you're excited enough. I'll stop now.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.gobackhorny4 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~Alright, I think you're excited enough. I'll stop now.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.meanie2  
END 

IF ~~ t14.bj4 
SAY ~Oh gods... feels too good... too good...~ 
++ ~(You slide your mouth around him, applying more pressure with your lips.)~ + t14.easier4 
++ ~(You ease up slightly, flicking your tongue over him.)~ + t14.dt4 
++ ~(You wrap your fingers around the base, increasing the friction.)~ + t14.easier4 
+ ~OR(2) Global("B!GavRA","GLOBAL",4) 
      Global("B!GavRA","GLOBAL",3)~ + ~I think you've had enough for one day.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.frustrated4 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~I think you've had enough for one day.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.frustrated2 
END 

IF ~~ t14.dt4 
SAY ~Can you... can you take it in your mouth again? So close...~ 
++ ~(You comply with his request.)~ + t14.easier4 
++ ~It's too much. I can't.~ + t14.wanttostop 
++ ~(You wrap your fingers around him and begin to stroke him.)~ + t14.easier4 
+ ~OR(2) Global("B!GavRA","GLOBAL",4) 
      Global("B!GavRA","GLOBAL",3)~ + ~I think you've had enough for one day.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.frustrated4 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~I think you've had enough for one day.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.frustrated2 
END 

IF ~~ t14.wanttostop 
SAY ~Do you want to stop? We don't have to do this, you know.~ 
++ ~No, my jaw just needs a rest.~ + t14.wethands4 
++ ~(You go back to what you were doing before.)~ + t14.easier4 
++ ~(You make a half-hearted attempt at it.)~ + t14.notintoit4 
+ ~OR(2) Global("B!GavRA","GLOBAL",4) 
      Global("B!GavRA","GLOBAL",3)~ + ~Maybe we'd better stop.~ + t14.gobackhorny4 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~Maybe we'd better stop.~ + t14.frustrated2 
END 

IF ~~ t14.wethands4 
SAY ~(Gavin wordlessly takes your hand and places it on his groin, guiding it over the wet skin. After a moment, he lets his hand drop, leaving you to stroke him at will.)~ 
++ ~(You caress him.)~ + t14.easier4 
++ ~(You make a few half-hearted strokes and then rub your hand on his leggings.)~ + t14.notintoit4 
+ ~OR(2) Global("B!GavRA","GLOBAL",4) 
      Global("B!GavRA","GLOBAL",3)~ + ~You do it, Gavin. I want to watch.~ + t14.voyeur4 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~You do it, Gavin. I want to watch.~ + t14.voyeur2 
+ ~OR(2) Global("B!GavRA","GLOBAL",4) 
      Global("B!GavRA","GLOBAL",3)~ + ~I think we'd better stop.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.frustrated4 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~I think we'd better stop.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.frustrated2 
END 

IF ~~ t14.notintoit4 
SAY ~You don't seem to enjoy this, so let's just stop.~ 
IF ~OR(2) Global("B!GavRA","GLOBAL",4) 
      Global("B!GavRA","GLOBAL",3)~ THEN + t14.gobackhorny4 
IF ~Global("B!GavRA","GLOBAL",2)~ THEN + t14.frustrated2 
END 

IF ~~ t14.roughhj4 
SAY ~(He winces and gasps at the violence of your assault on his groin, but his excitement continues to rise. Before long, his protests cease and his face takes on an expression of intense concentration.)~ 
++ ~(You continue to rub him even harder than before.)~ + t14.erupt4 
++ ~(You ease the pressure somewhat and begin to stroke him more gently.)~ + t14.easier4 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~I think that's about enough for now. If we keep this up, you'll spend yourself, and then you won't be any fun later.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1) 
      SetGlobal("B!GavPCWantsIt","LOCALS",1)~ + t14.frustrated4 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~I think that's about enough for now. If we keep this up, you'll spend yourself, and then you won't be any fun later.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1) 
      SetGlobal("B!GavPCWantsIt","LOCALS",1)~ + t14.frustrated2 
+ ~OR(2) Global("B!GavRA","GLOBAL",4) 
      Global("B!GavRA","GLOBAL",3)~ + ~Alright, I think you're excited enough. I'll stop now.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.gobackhorny4 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~Alright, I think you're excited enough. I'll stop now.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.meanie2 
END 

IF ~~ t14.easier4 
SAY ~(He sighs appreciatively and lets his head fall back in silent enjoyment. Before long, however, his breathing changes, coming in gasps and gulps, and his legs and abdomen tense.)~ 
++ ~(You keep doing what you were doing.)~ + t14.erupt4 
++ ~Alright, Gavin, that's enough for you.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.toolate4 
+ ~OR(2) Global("B!GavRA","GLOBAL",4) 
      Global("B!GavRA","GLOBAL",3)~ + ~HELP! HELP! I'm being attacked!~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.freakout4 
END 

IF ~~ t14.freakout4 
SAY ~Oh gods! No!~ 
= ~Wait... there's no one here. We aren't under attack.~ 
++ ~I know. I wanted to see what you'd do.~ DO ~SetGlobal("B!GavRA","GLOBAL",3) 
      SetGlobal("B!GavRomBreak","GLOBAL",1) 
      IncrementGlobal("B!GavLove","GLOBAL",-2)~ + t14.dumpyou4 
++ ~I thought there was someone there. My mistake.~ + t14.notblind4 
++ ~If we were, you'd have never known it, distracted as you were.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.testingme 
END 

IF ~~ t14.testingme 
SAY ~So you were testing me? Nice.~
IF ~~ THEN + t14.leavepissed 
END 

IF ~~ t14.notblind4 
SAY ~Maybe, but we shouldn't be doing this.~
IF ~~ THEN + t14.leavepissed 
END 

IF ~~ t14.dumpyou4 
SAY ~Get away from me! I can't believe you'd do something that stupid.~
IF ~~ THEN + t14.leavepissed 
END 

IF ~~ t14.toolate4 
SAY ~Ohno...~
IF ~~ THEN + t14.erupt4 
END 

IF ~~ t14.infrontofpc4 
SAY ~(Gavin removes your hands, replacing them with one of his own. He slides it down the length of the shaft, then back, bringing himself to full arousal in a few strokes.)~ 
= ~Are you going to help me with this?~ 
+ ~OR(2) Global("B!GavRA","GLOBAL",4) 
      Global("B!GavRA","GLOBAL",3)~ + ~I'd rather watch you do it.~ + t14.voyeur4 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~I'd rather watch you do it.~ + t14.voyeur2 
++ ~(You begin to stroke him.)~ + t14.stroke4 
++ ~(You press your lips to him and slide him into your mouth.)~ + t14.bj4 
+ ~OR(2) Global("B!GavRA","GLOBAL",4) 
      Global("B!GavRA","GLOBAL",3)~ + ~No, I think you need to go to bed frustrated tonight.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.frustrated4 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~No, I think you need to go to bed frustrated tonight.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.meanie2 
END 

IF ~~ t14.voyeur4 
SAY ~(He casts one dark look your way, but he obeys, stroking himself more and more intently as his excitement mounts. His eyes close and his head falls back.)~
IF ~~ THEN + t14.erupt4 
END 

IF ~~ t14.voyeur2 
SAY ~(He casts an enigmatic smile your way, but he obeys, stroking himself more and more intently as his excitement mounts. His eyes close and his head falls back.)~
IF ~~ THEN + t14.erupt4 
END 

IF ~~ t14.erupt4 
SAY ~(Soon, his whole body goes rigid, his back arches, and it is done.)~
IF ~~ THEN + t14.recovery4 
END 

IF ~~ t14.recovery4 
SAY ~(Still panting from the exertion, Gavin fumbles for the leggings that have sliped down around his ankles.)~ 
= ~Well, I'll sleep better tonight, at least. I hope you enjoyed it.~ 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~It was incredibly stimulating, actually.~ + t14.savedit4 
+ ~Global("B!GavRA","GLOBAL",3)~ + ~It was incredibly stimulating, actually.~ + t14.badshow3  
+ ~Global("B!GavRA","GLOBAL",2)~ + ~It was incredibly stimulating, actually.~ + t14.savedit2 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~Not bad, but we'll have to practice a bit more later.~ + t14.savedit4 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~Not bad, but we'll have to practice a bit more later.~ + t14.savedit2 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~I've seen better.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.badshow4 
+ ~Global("B!GavRA","GLOBAL",3)~ + ~I've seen better.~ + t14.badshow3  
+ ~Global("B!GavRA","GLOBAL",2)~ + ~I've seen better.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.badshow2 
++ ~You're off your form, Gavin. You're usually much better than that.~ + t14.nervous4 
END 

IF ~~ t14.nervous4 
SAY ~It isn't easy, out in the open like this. Next time, let's try for more privacy.~ 
IF ~OR(2) Global("B!GavRA","GLOBAL",4) 
      Global("B!GavRA","GLOBAL",3)~ THEN + t14.returnsatisfied4 
IF ~Global("B!GavRA","GLOBAL",2)~ THEN + t14.satisfied2 
END 

IF ~~ t14.badshow2 
SAY ~There's no pleasing some people! Good thing I'm so fond of you.~
IF ~~ THEN + t14.satisfied2 
END 

IF ~~ t14.badshow4 
SAY ~There's no pleasing some people, but that can't be helped now. It will be hours before I'm ready to go again.~
IF ~~ THEN + t14.returnsatisfied4 
END 

IF ~~ t14.badshow3 
SAY ~There's no pleasing some people, but that can't be helped now.~
IF ~~ THEN + t14.returnsatisfied4 
END 

IF ~~ t14.savedit2 
SAY ~Good thing my appetite for you is insatiable.~
IF ~~ THEN + t14.returnsatisfied4 
END 

IF ~~ t14.savedit4 
SAY ~You shouldn't have let me spend myself, then. It will be hours before I'm ready to go again.~
IF ~~ THEN + t14.returnsatisfied4 
END 

IF ~~ t14.returnsatisfied4 
SAY ~We really have been gone a long time, though. We should go back.~
IF ~GlobalGT("B!GavT14Forest","LOCALS",0)~ THEN DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!cut14r")~ EXIT 
IF ~GlobalGT("B!GavT14City","LOCALS",0)~ THEN DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!cut14i")~ EXIT 
END 
      
IF ~~ t14.enough4 
SAY ~Alright, that's enough. We're going back.~
IF ~GlobalGT("B!GavT14Forest","LOCALS",0)~ THEN DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!cut14r")~ EXIT 
IF ~GlobalGT("B!GavT14City","LOCALS",0)~ THEN DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!cut14i")~ EXIT 
END 

IF ~~ t14.stimulus4 
SAY ~I'm going to need a little incentive to get the rest of the way there.~ 
++ ~(You stroke him gently.)~ + t14.stroke4 
++ ~(You take him into your mouth.)~ + t14.softbj4 
++ ~(You seize him and yank him roughly.)~ + t14.yank4 
+ ~OR(2) Global("B!GavRA","GLOBAL",4) 
      Global("B!GavRA","GLOBAL",3)~ + ~I've lost interest. You're going to bed frustrated tonight.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.frustrated4 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~On second thought, it wouldn't hurt you to go to bed frustrated, once in a while.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.frustrated2 
END 

IF ~~ t14.frustrated4 
SAY ~(sigh) I should be used to it, by now. Come on, let's go back.~
IF ~GlobalGT("B!GavT14Forest","LOCALS",0)~ THEN DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!cut14r")~ EXIT 
IF ~GlobalGT("B!GavT14City","LOCALS",0)~ THEN DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!cut14i")~ EXIT 
END 

IF ~~ t14.lateritis 
SAY ~Alright, then. I'll come to you when the others are asleep.~
IF ~~ THEN + t14.gobackhorny4  
END 

IF ~~ t14.gobackhorny4 
SAY ~At least we've identified the problem. I just hope the blood cools a bit by the time we get back.~ 
IF ~GlobalGT("B!GavT14Forest","LOCALS",0)~ THEN DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!cut14r")~ EXIT 
IF ~GlobalGT("B!GavT14City","LOCALS",0)~ THEN DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!cut14i")~ EXIT 
END 
 
IF ~~ t14.woman4a 
SAY ~Probably, but this isn't the time or the place for that.~
IF ~~ THEN + t14.alone  
END 

IF ~~ t14.woman3b 
SAY ~Maybe, but any chance I had of that is long past.~
IF ~~ THEN + t14.alone 
END 

IF ~~ t14.woman2a 
SAY ~Maybe, but I shouldn't.~ 
++ ~Why not?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.woman2a1 
++ ~I'm willing.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.woman2a2 
++ ~I tried.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.alone 
END 

IF ~~ t14.woman2a2 
SAY ~Thank you, love, but I'm not.~
IF ~~ THEN + t14.woman2a1 
END 

IF ~~ t14.woman2a1 
SAY ~<CHARNAME>, there is nothing I would like more than to make love to you, but as agitated as I am, I'd only disappoint you. Let's save that for a time when I'm a bit calmer. It would be better for both of us. I hope you understand.~
IF ~~ THEN + t14.alone 
END 

IF ~~ t14.woman1 
SAY ~I don't believe I'm telling you this... but you asked. It was ten years ago, with Miranda.~ 
++ ~Are you serious? No wonder you can't concentrate! We need to do something about that at once!~ + t14.action1 
++ ~I didn't think a person could survive that long without some kind of relief.~ + t14.survive 
++ ~You're overdue, Gavin. It's time for you to show some initiative.~ + t14.action1 
++ ~You show admirable restraint.~ + t14.necessity 
++ ~Was it an unpleasant experience or something?~ + t14.Miranda 
END 

IF ~~ t14.action1 
SAY ~You mean, just ask a woman to lie with me? I don't know if I could do that.~ 
++ ~Why not? Regular 'exertion' is part of a healthy lifestyle.~ + t14.her   
++ ~Sure you could. Just find some woman and let nature take its course.~ + t14.her 
+ ~!Kit(Player1,GODLATHANDER)~ + ~Does your religion forbid it or something?~ + t14.religion 
+ ~Kit(Player1,GODLATHANDER)~ + ~Our religion doesn't forbid it.~ + t14.religion 
++ ~You're too reserved for your own good.~ + t14.pc1 
++ ~I tried.~ + t14.alone 
END 

IF ~~ t14.pc1 
SAY ~I'm shy, it's true, but that isn't my only problem.~ 
IF ~~ THEN + t14.unpopular 
END 

IF ~~ t14.woman 
SAY ~Ten years ago, with Miranda.~ 
++ ~Are you serious? No wonder you can't concentrate! We need to find you some action!~ + t14.action 
++ ~I didn't think a person could survive that long without some kind of relief.~ + t14.survive 
++ ~You're overdue, Gavin. It's time for you to show some initiative.~ + t14.action 
++ ~You show admirable restraint.~ + t14.necessity 
++ ~Was it an unpleasant experience or something?~ + t14.Miranda 
END 

IF ~~ t14.Miranda 
SAY ~For her, it was.~ 
IF ~Global("B!GavRA","GLOBAL",0)~ THEN + t14.speedy 
IF ~Global("B!GavRA","GLOBAL",1)~ THEN + t14.speedy1 
END 

IF ~~ t14.necessity 
SAY ~You're making a virtue of necessity.~
IF ~~ THEN + t14.unpopular 
END 

IF ~~ t14.survive 
SAY ~It's possible, though it isn't always pleasant.~ 
++ ~You should make the effort. Regular 'exertion' is part of a healthy lifestyle.~ + t14.her 
++ ~How hard can it be? Just find some woman and let nature take its course.~ + t14.her 
+ ~!Kit(Player1,GODLATHANDER)~ + ~Does your religion forbid it or something?~ + t14.religion 
+ ~Kit(Player1,GODLATHANDER)~ + ~Our religion doesn't forbid it.~ + t14.religion 
++ ~You're too reserved for your own good.~ + t14.her 
++ ~Well, good luck with that.~ + t14.alone 
END 

IF ~~ t14.action 
SAY ~You mean, just find some woman who's willing to lie with me? I don't know if I could do that.~ 
++ ~Why not? Regular 'exertion' is part of a healthy lifestyle.~ + t14.her 
++ ~Sure you could. Just find some woman and let nature take its course.~ + t14.her 
+ ~!Kit(Player1,GODLATHANDER)~ + ~Does your religion forbid it or something?~ + t14.religion 
+ ~Kit(Player1,GODLATHANDER)~ + ~Our religion doesn't forbid it.~ + t14.religion 
++ ~You're too reserved for your own good.~ + t14.her 
++ ~I tried.~ + t14.alone 
END 

IF ~~ t14.religion 
SAY ~Hardly! We're encouraged to 'be fruitful in mind and body,' so I'd almost call it a divine imperative, but women have never really been attracted to me.~ 
+ ~GlobalGT("B!GavT14Forest","LOCALS",0)~ + ~Sure they have. You were probably just too plagued by self-doubt to notice. We'll just have to find a tavern somewhere that has plenty of women with bad eyesight.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.alone 
+ ~GlobalGT("B!GavT14City","LOCALS",0)~ + ~Sure they have. You were probably just too plagued by self-doubt to notice. We'll just go back to the tavern and find some woman with bad eyesight.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.alone 
++ ~Uglier men than you find company.~ + t14.alone  
+ ~OR(5) Gender(Player2,FEMALE) 
      Gender(Player3,FEMALE) 
      Gender(Player4,FEMALE) 
      Gender(Player5,FEMALE) 
      Gender(Player5,FEMALE)~ + ~What about someone you know? Maybe if you explain the situation, she'd be willing.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.party 
+ ~Gender(Player1,FEMALE) 
      Global("B!GavRA","GLOBAL",0)~ + ~What about me?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.nottheboss 
+ ~Gender(Player1,FEMALE) 
      Global("B!GavRA","GLOBAL",1)~ + ~What about me?~ + t14.nottheboss1 
+ ~GlobalGT("B!GavT14Forest","LOCALS",0)~ + ~We can always find you a prostitute, next time we're in town.~ + t14.whore 
+ ~GlobalGT("B!GavT14City","LOCALS",0)~ + ~We can always find you a prostitute. There's bound to be one around here somewhere.~ + t14.whore 
++ ~Maybe you're just not masculine enough.~ + t14.girlyman 
++ ~Maybe what you need is a man.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.mansex 
++ ~You could always take matters into your own hands.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.masturbate 
END 

IF ~~ t14.her 
SAY ~Well, there's her to think about.~
IF ~~ THEN + t14.unpopular 
END 

IF ~~ t14.unpopular 
SAY ~She'd have to want me, and not a lot of women have... nor any, for that matter.~ 
+ ~GlobalGT("B!GavT14Forest","LOCALS",0)~ + ~Sure they have. You were probably just too plagued by self-doubt to notice. We'll just have to find a tavern somewhere that has plenty of women with bad eyesight.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.alone 
+ ~GlobalGT("B!GavT14City","LOCALS",0)~ + ~Sure they have. You were probably just too plagued by self-doubt to notice. We'll just go back to the tavern and find some woman with bad eyesight.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.alone 
++ ~Uglier men than you find company.~ + t14.alone  
+ ~OR(5) Gender(Player2,FEMALE) 
      Gender(Player3,FEMALE) 
      Gender(Player4,FEMALE) 
      Gender(Player5,FEMALE) 
      Gender(Player5,FEMALE)~ + ~What about someone you know? Maybe if you explain the situation, she'd be willing.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.party 
+ ~Gender(Player1,FEMALE) 
      Global("B!GavRA","GLOBAL",0)~ + ~What about me?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.nottheboss 
+ ~Gender(Player1,FEMALE) 
      Global("B!GavRA","GLOBAL",1)~ + ~What about me?~ + t14.nottheboss1 
+ ~GlobalGT("B!GavT14Forest","LOCALS",0)~ + ~We can always find you a prostitute, next time we're in town.~ + t14.whore 
+ ~GlobalGT("B!GavT14City","LOCALS",0)~ + ~We can always find you a prostitute. There's bound to be one around here somewhere.~ + t14.whore 
++ ~Maybe you're just not masculine enough.~ + t14.girlyman 
++ ~Maybe what you need is a man.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.mansex 
++ ~You could always take matters into your own hands.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.masturbate 
END 

IF ~~ t14.masturbate 
SAY ~I might have to.~
IF ~~ THEN + t14.alone 
END 

IF ~~ t14.mansex 
SAY ~No, that doesn't interest me. I know that lots of men prefer being with other men, and others are happy with either gender, but I've just never felt an attraction.~
IF ~~ THEN + t14.alone 
END 

IF ~~ t14.girlyman 
SAY ~Well, there goes whatever was left of my confidence.~
IF ~~ THEN + t14.alone 
END 

IF ~~ t14.whore 
SAY ~No, I could never do that. I know they need to earn a living, but I'd rather just give them the money and let them keep their dignity.~
IF ~~ THEN + t14.alone 
END 

IF ~~ t14.nottheboss 
SAY ~I couldn't! Not that you aren't desirable! But you're our leader, and... well... it just wouldn't be right.~ 
++ ~I have needs, Gavin.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.disappoint_boss 
++ ~A good leader has to think of the needs of her followers. It would be for a good cause.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.alone 
++ ~In other words, you aren't attracted to me.~ + t14.footinmouth 
++ ~Well, that's good, because I didn't want to sleep with you, anyway.~ + t14.scorned 
++ ~Hey, I was just trying to help, but if you don't want to, I won't make you.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.closecall 
END 

IF ~~ t14.nottheboss1 
SAY ~I couldn't! Not that you aren't desirable! Gods know how much you are...~ 
= ~But you're our leader, and... well... it just wouldn't be right.~ 
++ ~I have needs, Gavin.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.disappoint_boss 
++ ~A good leader has to think of the needs of her followers. It would be for a good cause.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.hisneeds1 
++ ~In other words, you aren't attracted to me.~ + t14.footinmouth1 
++ ~Well, that's good, because I didn't want to sleep with you, anyway.~ + t14.scorned 
++ ~Hey, I was just trying to help, but if you don't want to, I won't make you.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.closecall 
END 

IF ~~ t14.footinmouth1 
SAY ~No, I am... maybe too much.~ 
++ ~And I'm attracted to you, too.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.kiss1 
++ ~Really?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.kiss1 
++ ~I had no idea it was that bad. Maybe we'd better go back.~ + t14.otherlover 
++ ~I'm sorry to hear that. I can't say I feel the same way about you.~ + t14.otherlover 
END 

IF ~~ t14.hisneeds1 
SAY ~<CHARNAME>, I appreciate your willingness to... er... improve morale, but I won't allow you to compromise your virtue in satisfying my desires.~ 
++ ~You'd be satisfying my desires, too.~ + t14.kiss1 
++ ~You wouldn't be compromising my virtue.~ + t14.novirtue1 
++ ~Well, if that's the way you feel about it, you'll just have to deal with your problem yourself.~ + t14.masturbate 
END 

IF ~~ t14.novirtue1 
SAY ~I'd feel like I was.~
IF ~~ THEN + t14.alone 
END 

IF ~~ t14.closecall 
SAY ~I appreciate the thought.~
IF ~~ THEN + t14.alone 
END 

IF ~~ t14.scorned 
SAY ~I don't blame you.~
IF ~~ THEN + t14.alone 
END 

IF ~~ t14.footinmouth 
SAY ~No... well... <CHARNAME>, every man is attracted to someone different. Some like tall women, some prefer shorter women, and that's just how it goes. It's nothing against you.~ 
++ ~Yeah, right.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.iamanass 
++ ~You think I'm ugly.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.ugly 
++ ~Keep your eyes closed and you'll never know.~ + t14.greycats 
++ ~Fine. If you don't want me, I'm sure there's somebody who does.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.youbet 
++ ~I understand.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.alone 
END 

IF ~~ t14.youbet 
SAY ~Many, I'm sure.~
IF ~~ THEN + t14.alone 
END 

IF ~~ t14.greycats 
SAY ~I'd know.~
IF ~~ THEN + t14.alone 
END 

IF ~~ t14.ugly 
SAY ~No, you aren't! I'm a fool for refusing you, but I have to.~
IF ~~ THEN + t14.iamanass 
END 

IF ~~ t14.iamanass 
SAY ~I'm sorry, <CHARNAME>. I'm an ass, and I know it. Maybe we'd better just go back.~
IF ~GlobalGT("B!GavT14Forest","LOCALS",0)~ THEN DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!cut14r")~ EXIT 
IF ~GlobalGT("B!GavT14City","LOCALS",0)~ THEN DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!cut14i")~ EXIT 
END 

IF ~~ t14.disappoint_boss 
SAY ~<CHARNAME>, I said it's been ten years since I was with a woman. Even then, I had no idea what I was doing.~ 
IF ~Global("B!GavRA","GLOBAL",0)~ THEN + t14.speedy 
IF ~Global("B!GavRA","GLOBAL",1)~ THEN + t14.speedy1 
END 

IF ~~ t14.speedy1 
SAY ~You have no idea how painful it is for me to admit this, but my performance at the time left something to be desired... everything, in fact. When I was done, mere heartbeats later, she swore she'd never let me near her again.~ 
++ ~You were young! I'm sure your stamina has improved.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.doubtit1 
++ ~If she loved you, it wouldn't have mattered.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.ifshelovedyou 
++ ~Maybe all you need is practice.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.ifshelovedyou 
++ ~That's strange. Are you lacking in some way?~ + t14.tiny1 
END 

IF ~~ t14.tiny1 
SAY ~Not that I know of. I mean, I don't go around comparing myself to other men, but I don't think my... er... endowments are lacking.~ 
++ ~Can I see?~ + t14.measureme 
++ ~Maybe it was too much, rather than too little?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.flatterme1 
++ ~I wasn't talking about your anatomy. I was talking about your technique. A considerate lover doesn't need to rely on his size to make his partner happy.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.neverlearned 
++ ~I wasn't talking about anything physical. If there's no emotional attachment, the best lover in the world wouldn't have been able to please her.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.ifshelovedyou 
END 

IF ~~ t14.neverlearned 
SAY ~I'm lacking there, too, that's for sure. I'd like to be better at it, but I never got the chance to learn.~ 
= ~I don't believe we're talkng about this.~
IF ~~ THEN + t14.kiss1 
END 

IF ~~ t14.measureme 
SAY ~What? You mean you want to measure me to see how I compare with others you've seen? Sorry, but I'm not about to expose myself so you can observe my dimensions.~ 
++ ~That wasn't what I meant. You've got a fine physique, and I'd just like a chance to see more of it.~ + t14.flatterme1 
++ ~Come on, Gavin. It isn't like I've never seen a naked man before.~ + t14.notmenaked 
+ ~!Global("AnomenRomanceActive","GLOBAL",0) 
      !Global("AnomenRomanceActive","GLOBAL",3)~ + ~If you don't show me, I'll tell everyone in the group that you've got the smallest, most stunted manhood ever possessed by a human male.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.anowantstohear 
+ ~OR(2) Global("AnomenRomanceActive","GLOBAL",0) 
      !Global("AnomenRomanceActive","GLOBAL",3)~ + ~If you don't show me, I'll tell everyone in the group that you've got the smallest, most stunted manhood ever possessed by a human male.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.noonewantstohear 
+ ~CheckStatGT(Player1,12,DEX)~ + ~(You attempt to catch him off guard and get a feel for yourself.)~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.gotagrope 
+ ~!CheckStatGT(Player1,12,DEX)~ + ~(You attempt to catch him off guard and get a feel for yourself.)~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.badtouching 
++ ~Oh, no! That wasn't what I meant at all! I'm sorry. I kind of killed the mood, didn't I?~ + t14.moodkiller 
END 

IF ~~ t14.moodkiller 
SAY ~I'm afraid so. Come on, I'll walk you back.~
IF ~~ THEN DO ~SetGlobal("B!GavT14RA","LOCALS",1) 
      ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!cut14e")~ EXIT 
END 


IF ~~ t14.gotagrope 
SAY ~(You manage to make contact before Gavin reacts, but his flaccid state prevents you from discovering anything more than the fact that he possesses the usual complement of organs and that they are completely unremarkable.)~
IF ~~ THEN + t14.badtouching 
END 

IF ~~ t14.badtouching 
SAY ~(Gavin seizes your wrist and drags your hand away from his groin.)~ 
= ~<CHARNAME>! No!~ 
++ ~Oh, come on! I just wanted to see for myself.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.nowayinhells 
++ ~I don't know why you're upset. You've got nothing that any other man hasn't got.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.usualparts 
++ ~What's wrong with a little curiosity?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.nowayinhells 
++ ~I'm sorry, that was rather rude.~ + t14.justabit 
END 

IF ~~ t14.justabit 
SAY ~A bit, yes.~
IF ~~ THEN + t14.leavepissed 
END 

IF ~~ t14.usualparts 
SAY ~And I already told you that, so there was no need to go for a grope.~
IF ~~ THEN + t14.leavepissed 
END 

IF ~~ t14.nowayinhells 
SAY ~There is no way in hells that I'm letting you... fondle me... just so you can satisfy your curiosity! I can't believe you'd do something so rude!~
IF ~~ THEN + t14.leavepissed 
END 
      
IF ~~ t14.noonewantstohear 
SAY ~I'm sure everyone will be delighted to hear how closely you examined my manhood.~
IF ~~ THEN + t14.leavepissed  
END 

IF ~~ t14.anowantstohear 
SAY ~I'm sure Anomen would be delighted to hear how closely you examined my manhood.~
IF ~~ THEN + t14.leavepissed 
END 

IF ~~ t14.leavepissed 
SAY ~Come on. We should get back to the others.~
IF ~~ THEN DO ~SetGlobal("B!GavT14RA","LOCALS",1) 
      ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!cut14e")~ EXIT 
END 

IF ~~ t14.notmenaked 
SAY ~Perhaps, but this isn't the time or the place for that kind of display. And that's too personal a part of my body to subject to your scrutiny. I'll pass.~
IF ~~ THEN + t14.otherlover 
END 

IF ~~ t14.flatterme1 
SAY ~And now you're flattering me.~
IF ~~ THEN + t14.alone 
END 

IF ~~ t14.ifshelovedyou 
SAY ~Really?~
IF ~~ THEN + t14.kiss1 
END 

IF ~~ t14.doubtit1 
SAY ~I hope so, but I can't say it's likely.~ 
++ ~I think we need to put it to the test.~ + t14.kiss1 
++ ~That isn't the most important part, though. As long as you care about each other, you'll find some way to make her happy, even if you do finish early.~ + t14.kiss1 
++ ~They say practice makes perfect.~ + t14.kiss1 
++ ~Nobody's perfect.~ + t14.kiss1 
++ ~Well, that just about puts an end to any hopes I might have had for taking you as a lover.~ + t14.otherlover 
END 


IF ~~ t14.kiss1 
SAY ~<CHARNAME>... would you mind if I kissed you?~ 
++ ~I rather hoped that you would.~ + t14.firstbase 
++ ~This is rather sudden.~ + t14.yeahiknow
++ ~(Smile and put your arms around him.)~ + t14.firstbase 
++ ~That isn't going to improve your concentration, you know.~ + t14.probablyright 
++ ~Ugh! Gods, no!~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.leavepissed 
END 

IF ~~ t14.probablyright 
SAY ~You're probably right.~
IF ~~ THEN + t14.alone 
END 

IF ~~ t14.yeahiknow 
SAY ~Aye, but it's about all I've been able to think about since you called a halt.~ 
++ ~Oh, so that's the reason for your lack of focus, is it? Well, we'll just have to do something about that.~ + t14.firstbase 
++ ~I wouldn't mind a kiss.~ + t14.firstbase 
++ ~Don't you think my lover would object?~ + t14.otherlover 
++ ~I don't know, Gavin. You tend to get carried away.~ + t14.probablyright 
++ ~You'd better get over it, because I have absolutely no desire to kiss you!~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t14.leavepissed 
END 

IF ~~ t14.otherlover 
SAY ~Oh... then perhaps we should get back quickly before I humiliate myself any further.~
IF ~GlobalGT("B!GavT14Forest","LOCALS",0)~ THEN DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!cut14r")~ EXIT 
IF ~GlobalGT("B!GavT14City","LOCALS",0)~ THEN DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!cut14i")~ EXIT 
END 

IF ~~ t14.firstbase 
SAY ~(Gavin embraces you eagerly, though his kiss is hesitant, at first. His lips barely graze yours before he withdraws to take a deep, steadying breath.)~ 
= ~I'm... I'm too...~ 
++ ~Yes, Gavin, I know. Just relax and take it slowly.~ + t14.kissing 
++ ~(You silence whatever he is about to say with a kiss.)~ + t14.kissing 
++ ~You're too shy?~ + t14.tooshy 
END 

IF ~~ t14.tooshy 
SAY ~Too inexperienced. <CHARNAME>, if this goes any further, I'm just going to make a fool of myself.~ 
++ ~No you won't. Just relax and enjoy it.~ + t14.kissing 
++ ~We're just kissing, Gavin. Nothing has to happen.~ + t14.kissing 
++ ~Then maybe we'd better stop.~ + t14.earlystop 
END 

IF ~~ t14.earlystop 
SAY ~It might be for the best. Come on, I'll walk you back to camp.~
IF ~~ THEN DO ~SetGlobal("B!GavT14RA","LOCALS",1) 
      ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!cut14e")~ EXIT 
END 

IF ~~ t14.kissing 
SAY ~(He kisses you again with greater confidence, caressing your lips with his. His hands tremble on your back, but he just draws you closer until you can feel his heartbeat through his tunic.)~ 
++ ~(You part his lips with your tongue for an even more intimate caress.)~ + t14.passionatekiss 
++ ~(You let him go on at his own pace.)~ + t14.passionatekiss 
++ ~(You start to pull away.)~ + t14.forgettingself 
++ ~Easy, Gavin. I think you might be taking this too far.~ + t14.pcdiscomfort 
END 

IF ~~ t14.forgettingself 
SAY ~I'm forgetting myself, aren't I?~ 
++ ~No, I just needed some air. (You kiss him again.)~ + t14.passionatekiss 
++ ~That depends. How far do you want to take this?~ + t14.alreadytoofar 
++ ~Maybe a little.~ + t14.pcdiscomfort 
END 

IF ~~ t14.alreadytoofar 
SAY ~I think this is about far enough.~
IF ~~ THEN + t14.suchatease 
END 

IF ~~ t14.passionatekiss 
SAY ~(He answers your passion with his own. So intent is he on your touch that his hands cease their stroking and even his body is stilled... except that your close embrace leaves you in no doubt of his arousal.)~ 
+ ~Global("B!GavExplicit","GLOBAL",1)~ + ~(You release him long enough to loosen your clothing, and guide his hand to your bare breast.)~ + t14.secondbase 
+ ~Global("B!GavExplicit","GLOBAL",1)~ + ~(You run your hand down his abdomen to stroke him.)~ + t14.strokehim 
+ ~Global("B!GavExplicit","GLOBAL",1)~ + ~(You rub yourself against him.)~ + t14.grind 
++ ~You seem to be in quite a state, Gavin.~ + t14.noticed 
++ ~Do you want it?~ + t14.wanttoomuch 
++ ~Gavin, I think we might be getting carried away.~ + t14.pcdiscomfort 
END 

IF ~~ t14.noticed 
SAY ~Ahem... this is awkward.~ 
= ~Women have it easy. Nobody knows if they're... er... thinking about intimacy. Good luck trying to hide it if you're a man.~ 
= ~So, now that I've completely humiliated myself, you probably think I'm some kind of pervert.~ 
IF ~~ THEN + t14.gobackhorny 
END 

IF ~~ t14.secondbase 
SAY ~(Gavin gasps at the touch of your bare skin against his palm and starts to withdraw his hand.)~ 
++ ~No, Gavin, it's alright. I want you to touch me.~ + t14.breast 
++ ~(You touch his hand, resisting his attempt to remove it.~ + t14.breast 
++ ~Don't you want to touch?~ + t14.wanttoomuch 
++ ~Is something wrong?~ + t14.whoanow 
++ ~Maybe it's better if we stop here.~ + t14.gobackhorny 
END 

IF ~~ t14.wanttoomuch 
SAY ~I want to, all right, maybe too much.~ 
+ ~Global("B!GavExplicit","GLOBAL",1)~ + ~Then just keep doing what you were doing.~ + t14.breast 
+ ~Global("B!GavExplicit","GLOBAL",1)~ + ~I want it, too. That can't be wrong, can it?~ + t14.breast 
++ ~I can tell. It's rather obvious.~ + t14.noticed 
++ ~And that's just the way I want it. Hands off, now, we're going back to camp.~ + t14.suchatease 
++ ~Then maybe we'd better stop.~ + t14.gobackhorny 
END 

IF ~~ t14.suchatease 
SAY ~This has done absolutely nothing to improve my concentration. Just so you know.~ 
= ~But maybe it's for the best. We're certainly not ready for taking this any farther.~
IF ~~ THEN DO ~SetGlobal("B!GavT14RA","LOCALS",1) 
      ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!cut14e")~ EXIT 
END 

IF ~~ t14.breast 
SAY ~(After another huge breath, Gavin begins to stroke your breast. His caress is gentle, but relentless. His fingers move over your skin as if he was memorizing your shape by touch.)~ 
= ~(At last, his fingertips brush your nipple. He pauses, as if waiting for your reaction.)~ 
++ ~Don't stop, Gavin!~ + t14.nipple 
++ ~(Let him continue to explore your body.)~ + t14.nipple 
++ ~Lower, Gavin.~ + t14.whoanow 
++ ~Fresh! Just the way I like it.~ + t14.whoanow 
++ ~That's enough, Gavin.~ + t14.gobackhorny 
END 

IF ~~ t14.whoanow 
SAY ~Gods, I'm taking this too far! I need to stop this right now. We're just not ready for this. Not yet.~
IF ~~ THEN + t14.gobackhorny 
END 

IF ~~ t14.nipple 
SAY ~(For a few moments longer, he teases your nipple with his fingertips. Your bodies are pressed close, though, close enough for you to feel the extent of his excitement.)~ 
++ ~(You reach down to stroke him.)~ + t14.strokehim 
++ ~(You press your body more closely against him.)~ + t14.grind 
++ ~Gavin, I think you're taking this a bit too far.~ + t14.pcdiscomfort 
END 

IF ~~ t14.strokehim 
SAY ~N-no! <CHARNAME>...	it's too much... I can't take it.~ 
++ ~I know, Gavin. You need this.~ + t14.notready  
++ ~Just let it happen. You'll feel better.~ + t14.notready 
++ ~Not man enough for a little excitement?~ + t14.notready 
++ ~I'm not sure I can, either.~ + t14.pcdiscomfort 
END 

IF ~~ t14.pcdiscomfort 
SAY ~Then by all the gods, stop! Don't do anything that makes you uncomfortable.~
IF ~~ THEN + t14.gobackhorny 
END 

IF ~~ t14.notready  
SAY ~But we aren't ready for this!~ 
++ ~We aren't going to lie together, Gavin. I'm just touching you, helping you relax. Think of it as a therapeutic massage.~ + t14.notamassage 
++ ~Relax, Gavin. Deosn't it feel good?~ + t14.impendinghj 
++ ~I'll stop, then.~ + t14.gobackhorny 
END 

IF ~~ t14.notamassage 
SAY ~I've never had any kind of massage like this!~ 
++ ~It's alright, Gavin. We care about each other, don't we? And there's nothing shameful about our bodies. So, let me do this one thing that will make you feel so much better.~ + t14.impendinghj 
++ ~Stop complaining! It isn't everyday you get this kind of attention.~ + t14.impendinghj 
++ ~Just relax. I know what I'm doing.~ + t14.impendinghj 
++ ~Do you want to stop?~ + t14.nobutshould 
END 

IF ~~ t14.nobutshould 
SAY ~No, but we should. I'm sorry, but I'm just not ready for this. Not yet.~
IF ~~ THEN + t14.gobackhorny 
END 

IF ~~ t14.impendinghj 
SAY ~(Though Gavin gives no voice to his consent, his resistance subsides. His arms close around you again, and he kisses you once more.)~ 
++ ~(You wrap one arm around his hips to steady him and run another exploratory hand along the length of him.)~ + t14.hj 
++ ~(You press your body closer against his.)~ + t14.grind 
++ ~I'm not sure we should be doing this.~ + t14.gobackhorny 
END 

IF ~~ t14.grind 
SAY ~(Gavin responds immediately to the increased pressure against his pelvis. His arms tighten around you, his eyes close, and his head falls back. Almost imperceptibly, he begins to rub himself against you.)~ 
+ ~GlobalGT("B!GavT14Forest","LOCALS",0)~ + ~If you sat down on that log over there, we could both enjoy this.~ + t14.nosex 
+ ~GlobalGT("B!GavT14City","LOCALS",0)~ + ~If you sat down on that crate over there, we could both enjoy this.~ + t14.nosex 
++ ~(You back up slightly and slide your hand inside his leggings.)~ + t14.barehj  
++ ~(You make some room between your bodies and begin to stroke him through his leggings.)~ + t14.clothedhj 
++ ~Gavin, I think we might be taking this a bit too far.~ + t14.gobackhorny 
END 

IF ~~ t14.hj 
SAY ~(Gavin freezes momentarily at your touch, almost breaking the embrace, then he relaxes. For a moment or two, he attempts to continue to kiss you, but the demands of his body soon make that impossible. His arms tighten around you again, but his eyes close and his head falls back.)~ 
+ ~GlobalGT("B!GavT14Forest","LOCALS",0)~ + ~If you sat down on that log over there, we could both enjoy this.~ + t14.nosex 
+ ~GlobalGT("B!GavT14City","LOCALS",0)~ + ~If you sat down on that crate over there, we could both enjoy this.~ + t14.nosex 
++ ~(You slide your hand inside his leggings.)~ + t14.barehj  
++ ~(You continue to stroke him through his leggings.)~ + t14.clothedhj 
++ ~Gavin, I think we might be taking this a bit too far.~ + t14.gobackhorny 
END 


IF ~~ t14.nosex 
SAY ~I... I can't. The temptation to take you would be too great.~ 
++ ~If we both stay fully clothed, you couldn't.~ + t14.dry 
++ ~(You unlace his leggings so you can slide your hand inside.)~ + t14.barehj 
++ ~(You keep rubbing him through his leggings.)~ + t14.clothedhj 
++ ~I want you to take me.~ + t14.notake 
++ ~Then maybe we should just go back.~ + t14.gobackhorny 
END 

IF ~~ t14.notake 
SAY ~I can't. I'm not prepared... and we're not ready for that.~ 
++ ~You feel ready to me.~ + t14.notyet 
++ ~Prepared?~ + t14.nocassil 
++ ~Please, Gavin! I need it, too.~ + t14.whattodo 
++ ~Alright, I'll just touch.~ + t14.clothedhj 
++ ~Maybe we should just go back.~ + t14.gobackhorny 
END 

IF ~~ t14.whattodo 
SAY ~I don't know what to do! I know it's wrong for us to take this any further, but... well, you can feel my problem for yourself. And if you're just as bad...~ 
= ~But we can't. We mustn't.~ 
+ ~GlobalGT("B!GavT14Forest","LOCALS",0)~ + ~If you sat down on that log over there, we could both enjoy this. We wouldn't even have to take our clothes off.~ + t14.dry 
+ ~GlobalGT("B!GavT14City","LOCALS",0)~ + ~If you sat down on that crate over there, we could both enjoy this. We wouldn't even have to take our clothes off.~ + t14.dry 
++ ~(You slide your hand inside his leggings.)~ + t14.barehj  
++ ~(You resume rubbing him through his leggings.)~ + t14.clothedhj 
++ ~Then maybe we should just go back.~ + t14.gobackhorny 
END 

IF ~~ t14.gobackhorny 
SAY ~It's probably for the best, though I hope this goes down a bit by the time we get back.~ 
= ~I'm sorry for inflicting myself on you like that.~
IF ~~ THEN DO ~SetGlobal("B!GavT14RA","LOCALS",1) 
      ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!cut14e")~ EXIT 
END 

IF ~~ t14.nocassil 
SAY ~I've taken nothing to keep me from getting you with child. Such a thing would be disastrous to your quest. But more importantly, we're not ready for that kind of commitment. At least not yet.~
IF ~~ THEN + t14.killedmood 
END 

IF ~~ t14.notyet 
SAY ~Physically? Yes. But we aren't ready for that kind of commitment... not yet.~
IF ~~ THEN + t14.killedmood 
END 

IF ~~ t14.killedmood 
SAY ~But that's a sobering thought, and it's cleared my head enough to make me realize where you've got your hands.~ 
= ~I'm sorry, <CHARNAME>. I should never have let it get this far. We should go back before my appetites drive us to any greater madness.~
IF ~~ THEN DO ~SetGlobal("B!GavT14RA","LOCALS",1) 
      ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!cut14e")~ EXIT 
END 

IF ~~ t14.clothedhj 
SAY ~(Gavin makes no further move to stop you. A few moments later, the weight of his arms around your shoulders increases as his knees start to buckle.)~ 
++ ~Are you alright?~ + t14.grunt1 
++ ~(You kiss his throat and keep stroking him.)~ + t14.grunt1 
++ ~I can't hold you up, Gavin.~ + t14.grunt1 
++ ~I think that's about enough for you.~ + t14.hjinterruptus 
END 

IF ~~ t14.grunt1 
SAY ~Feels too good. Can't stand up.~ 
= ~<CHARNAME>... you'd better stop... almost...~ 
++ ~It's alright, Gavin. Just let it go.~ + t14.toolate1 
++ ~(You make no reply except to kiss him into silence and increase the tempo.)~ + t14.toolate1 
++ ~(You snatch your hand away.)~ + t14.nonetoosoon 
++ ~Don't you dare!~ + t14.hjinterruptus 
END 

IF ~~ t14.toolate1 
SAY ~Ohno...~ 
= ~(With one final shudder, he relaxes, panting into your hair, his arms heavy about your neck.)~ 
++ ~Feel better?~ + t14.nodnod1 
++ ~That wasn't so bad, now, was it?~ + t14.nodnod1 
++ ~(You remain silent, letting him calm down.)~ + t14.cling1 
++ ~Oh, gods, what a mess.~ + t14.messy1 
END 

IF ~~ t14.messy1 
SAY ~I'm sorry... been so long...~
IF ~~ THEN + t14.cling1 
END 

IF ~~ t14.nodnod1 
SAY ~(You feel him nodding, but he's still too out of breath to answer.)~
IF ~~ THEN + t14.cling1 
END 

IF ~~ t14.cling1 
SAY ~(For several moments longer, he clings to you, his breathing almost a sob.)~ 
++ ~(You put both arms around his waist and let him catch his breath.)~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.recovery 
++ ~That was really something for you, wasn't it?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.fireworks 
++ ~Are we happy now?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.notlikethis 
++ ~I seem to have gotten some on me.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.useleggings 
END 

IF ~~ t14.barehj 
SAY ~(Gavin flinches at the touch of your hand against his bare flesh, but he makes no move to stop you. A few moments later, the weight of his arms around your shoulders increases as his knees start to buckle.)~ 
++ ~Are you alright?~ + t14.grunt 
++ ~(You kiss his throat and keep stroking him.)~ + t14.grunt 
++ ~I can't hold you up, Gavin.~ + t14.grunt 
++ ~I think that's about enough for you.~ + t14.hjinterruptus 
END 

IF ~~ t14.grunt 
SAY ~Feels too good. Can't stand up.~ 
= ~<CHARNAME>... you'd better stop... almost...~ 
++ ~It's alright, Gavin. Just let it go.~ + t14.toolate 
++ ~(You make no reply except to kiss him into silence and increase the tempo.)~ + t14.toolate 
++ ~(You snatch your hand from out of his leggings.)~ + t14.nonetoosoon 
++ ~Don't you dare!~ + t14.hjinterruptus 
END 

IF ~~ t14.hjinterruptus 
SAY ~(Gavin springs away from you, then stands panting, bent over with his hands on his knees and his head down.)~ 
= ~(He remains like that for several moments, then reluctantly straightens up and sighs.)~
IF ~~ THEN + t14.toomuchtotake 
END 

IF ~~ t14.nonetoosoon 
SAY ~(Gavin groans, then shudders convulsively, despite the cessation of your attention.)~
IF ~~ THEN + t14.toomuchtotake 
END 

IF ~~ t14.toomuchtotake 
SAY ~I'm sorry... that was too much for me to take.~
IF ~~ THEN + t14.notlikethis 
END 

IF ~~ t14.toolate 
SAY ~Ohno...~ 
= ~(With one final shudder, he relaxes, panting into your hair, his arms heavy about your neck.)~ 
++ ~Feel better?~ + t14.nodnod 
++ ~That wasn't so bad, now, was it?~ + t14.nodnod 
++ ~(You remain silent, letting him calm down.)~ + t14.cling 
++ ~Oh, gods, what a mess.~ + t14.messy 
END 

IF ~~ t14.messy 
SAY ~I'm sorry... been so long...~
IF ~~ THEN + t14.cling 
END 

IF ~~ t14.nodnod 
SAY ~(You feel him nodding, but he's still too out of breath to answer.~
IF ~~ THEN + t14.cling 
END 

IF ~~ t14.cling 
SAY ~(For several moments longer, he clings to you, his breathing almost a sob.)~ 
++ ~(You discretely remove your hand from his leggings, put both arms around his waist and let him catch his breath.)~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.recovery 
++ ~Are you going to give me something to clean this up?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.useleggings 
++ ~That was really something for you, wasn't it?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.fireworks 
++ ~Are we happy now?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.notlikethis 
END 

IF ~~ t14.fireworks 
SAY ~Aye... it was so intense...~
IF ~~ THEN + t14.notlikethis 
END 

IF ~~ t14.useleggings 
SAY ~Find a clean part of the leggings. They're getting washed tonight, anyway.~
IF ~~ THEN + t14.notlikethis 
END 

IF ~~ t14.recovery 
SAY ~(Several moments later, his embrace loosens again. At last, his gasping quiets, and he sighs.)~
IF ~~ THEN + t14.notlikethis 
END 

IF ~~ t14.dry 
SAY ~Hells, <CHARNAME>, I'm at your mercy.~ 
= ~(He positions himself so you can sit astride him, then puts his arms around you again, rocking with you until you both find release.)~
IF ~~ THEN + t14.stains 
END 

IF ~~ t14.stains 
SAY ~Oh, no... my leggings...~ 
++ ~Don't fret, Gavin. The tunic hides everything.~ + t14.notlikethis 
++ ~No one can see anything. Besides, from the placement of the stains, you've got nothing to be ashamed of.~ + t14.notlikethis 
+ ~TimeOfDay(NIGHT)~ + ~It's dark, Gavin. No one can see anything.~ + t14.notlikethis 
++ ~Some men would consider that a badge of pride.~ + t14.tribute 
++ ~It will wash out.~ + t14.laundry 
++ ~Hehe... that's so funny!~ + t14.notlikethis 
END 

IF ~~ t14.laundry 
SAY ~Then I hope you will forgive me if I see to the laundry when we get back.~
IF ~~ THEN + t14.notlikethis 
END 

IF ~~ t14.tribute 
SAY ~I consider it a tribute to my lack of self-control.~
IF ~~ THEN + t14.notlikethis 
END 

IF ~~ t14.notlikethis 
SAY ~It shouldn't have been like this, <CHARNAME>. There should have been soft candlelight, and music... not grappling by the roadside. We weren't ready.~ 
++ ~Next time, there will be all those things, and next time, we will be. For now, though, we both needed this.~ + t14.calmer 
++ ~We were ready enough... or at least you were.~ + t14.calmer 
++ ~What's done is done.~ + t14.sounpleasant 
++ ~No, we weren't ready. I should have waited.~ + t14.sounpleasant 
END 

IF ~~ t14.calmer 
SAY ~I do feel much calmer... or will, once my pulse slows.~ 
++ ~I enjoyed it, too.~ + t14.glad 
++ ~Then I'm glad. That was the point behind this.~ + t14.soselfish 
++ ~Well, it was worth it, then. No more distractions.~ + t14.soselfish 
++ ~About time.~ + t14.sounpleasant 
END 

IF ~~ t14.sounpleasant 
SAY ~<CHARNAME>, I don't know what to say. If you resented... what I did... what I made you do, you should have stopped me. It wouldn't have been the first time I've gone to my bedroll frustrated.~ 
++ ~It's alright, Gavin. You needed it.~ + t14.soselfish 
++ ~It wasn't so bad. I enjoyed it, too.~ + t14.glad 
++ ~Let's just go.~ + t14.soselfish 
++ ~Next time, you will be going to your bedroll frustrated.~ + t14.nonexttime 
END 

IF ~~ t14.nonexttime 
SAY ~Next time I'm feeling so distracted, I'll be keeping it to myself. You're too important to me to risk your ill will for the sake of my pleasure.~
IF ~~ THEN DO ~SetGlobal("B!GavT14RA","LOCALS",1) 
      ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!cut14e")~ EXIT 
END 

IF ~~ t14.soselfish 
SAY ~I feel like a selfish bastard for seeking pleasure like that, but I am grateful. Thank you for... er... helping me clear my head.~
IF ~~ THEN DO ~SetGlobal("B!GavT14RA","LOCALS",1) 
      ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!cut14e")~ EXIT 
END 

IF ~~ t14.glad 
SAY ~I'm glad. I was feeling extraordinarily selfish, but if you got some pleasure from it, too, then maybe it was for the best.~
IF ~~ THEN DO ~SetGlobal("B!GavT14RA","LOCALS",1) 
      ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!cut14e")~ EXIT 
END 

IF ~~ t14.speedy 
SAY ~If you must know, I didn't even last two heartbeats, and after lying with me once, she swore she'd never do it again.~ 
++ ~You're older now. Your stamina might have improved.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.doubtit 
++ ~Maybe you just need to learn some new techniques.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.technique 
++ ~Just because she didn't want to doesn't mean no one else will.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t14.neveragain 
++ ~That's pretty bad.~ + t14.lousylay 
END 

IF ~~ t14.lousylay 
SAY ~Aye, it is, and talking about it isn't improving my concentration.~
IF ~~ THEN + t14.alone 
END 

IF ~~ t14.neveragain 
SAY ~Maybe, but if I'm ever going to find someone, it's going to have to wait until your quest is done and I'm settled somewhere.~
IF ~~ THEN + t14.alone 
END 

IF ~~ t14.technique 
SAY ~Are we really having this conversation? Yes, there's a lot I'll need to learn, if the need ever arises, but I don't want to talk about it now.~
IF ~~ THEN + t14.alone 
END 

IF ~~ t14.doubtit 
SAY ~I doubt it.~
IF ~~ THEN + t14.force 
END 

IF ~~ t14.force 
SAY ~<CHARNAME>, the truth is that you're the leader, we don't have that kind of relationship, and I respect you too much to use you.~ 
++ ~It would be more the other way around.~ + t14.useme 
++ ~I could order you to do it... for your own good.~ + t14.useme 
++ ~Don't give me that crap. If I were beautiful beyond all measure and had a voice that could melt glaciers, you wouldn't be able to get your leggings down fast enough.~ + t14.morethanlooks 
END 

IF ~~ t14.morethanlooks 
SAY ~No. I'd have to carry my cloak more often than wear it, but I still wouldn't bed you. It has to mean something, <CHARNAME>. If I'm ever going to lie with a woman again, it's going to be the woman I spend the rest of my life with.~
IF ~~ THEN + t14.iamanass 
END 

IF ~~ t14.useme 
SAY ~The answer is still no. I don't want to use you, and I don't want to be used by you either. I hope my decision doesn't make you reconsider my place in this group, but if it does, it does.~
IF ~~ THEN + t14.iamanass 
END 
      
IF ~~ t14.party 
SAY ~You mean one of our companions? I couldn't!~ 
++ ~No, not anyone in the party! But you must know some woman who'd help you out.~ + t14.sympathy 
+ ~InParty("Aerie") 
      !StateCheck("Aerie",CD_STATE_NOTVALID) 
      Global("AerieRomanceActive","GLOBAL",1)~ + ~What about Aerie?~ + t14.npc1
+ ~InParty("Aerie") 
      !StateCheck("Aerie",CD_STATE_NOTVALID) 
      Global("AerieRomanceActive","GLOBAL",2)~ + ~What about Aerie?~ + t14.npc2
+ ~InParty("Aerie") 
      !StateCheck("Aerie",CD_STATE_NOTVALID) 
      !Global("AerieRomanceActive","GLOBAL",1) 
      !Global("AerieRomanceActive","GLOBAL",2)~ + ~What about Aerie?~ + t14.Aerie3
+ ~InParty("Edwin") 
      !StateCheck("Edwin",CD_STATE_NOTVALID) 
      Gender("Edwin",FEMALE)~ + ~What about 'Edwina?'~ + t14.Edwina
+ ~InParty("Imoen2") 
      !StateCheck("Imoen2",CD_STATE_NOTVALID)~ + ~What about Imoen2?~ + t14.Imoen2
+ ~InParty("Jaheira") 
      !StateCheck("Jaheira",CD_STATE_NOTVALID) 
      Global("JaheiraRomanceActive","GLOBAL",1)~ + ~What about Jaheira?~ + t14.npc1
+ ~InParty("Jaheira") 
      !StateCheck("Jaheira",CD_STATE_NOTVALID) 
      Global("JaheiraRomanceActive","GLOBAL",2)~ + ~What about Jaheira?~ + t14.npc2
+ ~InParty("Jaheira") 
      !StateCheck("Jaheira",CD_STATE_NOTVALID) 
      !Global("JaheiraRomanceActive","GLOBAL",1) 
      !Global("JaheiraRomanceActive","GLOBAL",2)~ + ~What about Jaheira?~ + t14.Jaheira3
+ ~InParty("Mazzy") 
      !StateCheck("Mazzy",CD_STATE_NOTVALID)~ + ~What about Mazzy?~ + t14.Mazzy
+ ~InParty("Nalia") 
      !StateCheck("Nalia",CD_STATE_NOTVALID)~ + ~What about Nalia?~ + t14.Nalia
+ ~InParty("Viconia") 
      !StateCheck("Viconia",CD_STATE_NOTVALID) 
      Global("ViconiaRomanceActive","GLOBAL",1)~ + ~What about Viconia?~ + t14.npc1 
+ ~InParty("Viconia") 
      !StateCheck("Viconia",CD_STATE_NOTVALID) 
      Global("ViconiaRomanceActive","GLOBAL",2)~ + ~What about Viconia?~ + t14.npc2 
+ ~InParty("Viconia") 
      !StateCheck("Viconia",CD_STATE_NOTVALID) 
      !Global("ViconiaRomanceActive","GLOBAL",1) 
      !Global("ViconiaRomanceActive","GLOBAL",2)~ + ~What about Viconia?~ + t14.Viconia3  
+ ~Gender(Player2,FEMALE) 
      InParty(Player2) 
      !StateCheck(Player2,CD_STATE_NOTVALID) 
      !Name("Aerie",Player2) 
      !Name("Edwin",Player2) 
      !Name("Edwina",Player2) 
      !Name("Imoen",Player2) 
      !Name("Jaheira",Player2) 
      !Name("Mazzy",Player2) 
      !Name("Nalia",Player2) 
      !Name("Viconia",Player2)~ + ~What about <PLAYER2>?~ + t14.player_xx 
+ ~Gender(Player3,FEMALE) 
      InParty(Player3) 
      !StateCheck(Player3,CD_STATE_NOTVALID) 
      !Name("Aerie",Player3) 
      !Name("Edwin",Player3) 
      !Name("Edwina",Player3) 
      !Name("Imoen",Player3) 
      !Name("Jaheira",Player3) 
      !Name("Mazzy",Player3) 
      !Name("Nalia",Player3) 
      !Name("Viconia",Player3)~ + ~What about <PLAYER3>?~ + t14.player_xx 
+ ~Gender(Player4,FEMALE) 
      InParty(Player4) 
      !StateCheck(Player4,CD_STATE_NOTVALID) 
      !Name("Aerie",Player4) 
      !Name("Edwin",Player4) 
      !Name("Edwina",Player4) 
      !Name("Imoen",Player4) 
      !Name("Jaheira",Player4) 
      !Name("Mazzy",Player4) 
      !Name("Nalia",Player4) 
      !Name("Viconia",Player4)~ + ~What about <PLAYER4>?~ + t14.player_xx 
+ ~Gender(Player5,FEMALE) 
      InParty(Player5) 
      !StateCheck(Player5,CD_STATE_NOTVALID) 
      !Name("Aerie",Player5) 
      !Name("Edwin",Player5) 
      !Name("Edwina",Player5) 
      !Name("Imoen",Player5) 
      !Name("Jaheira",Player5) 
      !Name("Mazzy",Player5) 
      !Name("Nalia",Player5) 
      !Name("Viconia",Player5)~ + ~What about <PLAYER5>?~ + t14.player_xx 
+ ~Gender(Player6,FEMALE) 
      InParty(Player6) 
      !StateCheck(Player6,CD_STATE_NOTVALID) 
      !Name("Aerie",Player6) 
      !Name("Edwin",Player6) 
      !Name("Edwina",Player6) 
      !Name("Imoen",Player6) 
      !Name("Jaheira",Player6) 
      !Name("Mazzy",Player6) 
      !Name("Nalia",Player6) 
      !Name("Viconia",Player6)~ + ~What about <PLAYER6>?~ + t14.player_xx 
END 

IF ~~ t14.player_xx 
SAY ~Too many complications. I'd see her every day, and I couldn't bear the thought of her laughing at me.~ 
++ ~Why would she laugh? You've got the same thing everybody else has got.~ + t14.inexperienced 
++ ~A bit underhung?~ + t14.tiny 
++ ~At least you'd feel better.~ + t14.player_xx_laugh 
++ ~You'll never know unless you try.~ + t14.illequiped 
++ ~Forget I said anything.~ + t14.alone 
END 

IF ~~ t14.player_xx_laugh 
SAY ~No, I'd feel worse, because every time I looked at her, I'd remember how pathetic I was with her.~
IF ~~ THEN + t14.inexperienced 
END 

IF ~~ t14.tiny 
SAY ~No, that isn't it.~
IF ~~ THEN + t14.inexperienced 
END 

IF ~~ t14.inexperienced 
SAY ~<CHARNAME>, I haven't been with a woman in ten years, and even then, I had no idea what I was doing. I'd be sure to disappoint her.~
IF ~~ THEN + t14.alone 
END 

IF ~~ t14.Viconia3 
SAY ~Bad idea. Compassion really isn't in her nature, and I don't even want to think about what she'd say if I asked her.~ 
++ ~You never know. She seems to have quite an appetite for men.~ + t14.illequiped 
++ ~Good point.~ + t14.alone 
END 

IF ~~ t14.Nalia 
SAY ~No, I couldn't. She's so young! Besides, she's got a crusade against injustice to run. She won't be interested in making some old cleric feel more relaxed.~
IF ~~ THEN + t14.alone 
END 

IF ~~ t14.Mazzy 
SAY ~I couldn't, <CHARNAME>. She's the kind of woman you'd want to marry and spend the rest of your lives conquering the forces of evil with. I doubt she'd be interested in a fling, even for my sake.~ 
++ ~Even champions of Avoreen have needs, Gavin.~ + t14.illequiped 
++ ~You never know. She can be pretty passionate, when she's interested in something.~ + t14.illequiped 
++ ~She likes to help the needy, and you're about a needy as they come.~ + t14.illequiped 
END 

IF ~~ t14.illequiped 
SAY ~Even if that were the case, I'd be the last person she'd want. I haven't been with a woman in ten years, and I didn't know what I was doing then. I'd only disappoint her, and I couldn't live with that.~
IF ~~ THEN + t14.alone 
END 

IF ~~ t14.Jaheira3 
SAY ~She's a bit too much woman for me to handle, to be perfectly honest with you. Besides, it's too soon after she lost her husband. It wouldn't feel right.~
IF ~~ THEN + t14.alone 
END 

IF ~~ t14.Imoen2 
SAY ~No, I couldn't ask her to do that, not after everything she's been through. Besides... no, I'd better keep that one to myself.~ 
++ ~Out with it. What were you going to say?~ + t14.ImoenSpecial 
++ ~Isn't she good enough for you?~ + t14.ImoenSpecial 
++ ~Whatever. I tried.~ + t14.alone 
END 

IF ~~ t14.ImoenSpecial 
SAY ~There's something about her. If we were ever... together that way, I'd want it to be because we meant something to each other, not because she felt sorry for me.~
IF ~~ THEN + t14.alone 
END 

IF ~~ t14.Edwina 
SAY ~But she's really a man!~ 
++ ~You have something against men?~ + t14.nomen 
++ ~Yeah, but she's got great tits.~ + t14.stillmale 
++ ~No, she's a woman who used to be a man.~ + t14.transsexual 
++ ~You're awfully picky for somebody who can't get laid.~ + t14.stillmale 
END 

IF ~~ t14.transsexual 
SAY ~Eventually, that spell will wear off... or something.~
IF ~~ THEN + t14.stillmale 
END 

IF ~~ t14.nomen 
SAY ~Not at all. Some of my best friends are men. But I never wanted to get intimate with one of them.~
IF ~~ THEN + t14.stillmale 
END 

IF ~~ t14.stillmale 
SAY ~I know she looks like a woman right now, but I know the truth, and I just couldn't. I really couldn't. Besides, she still shows a preference for women.~
IF ~~ THEN + t14.alone 
END 

IF ~~ t14.npc1 
SAY ~I think she's more interested in you, actually.~
IF ~~ THEN + t14.alone 
END 

IF ~~ t14.npc2 
SAY ~Er... not to put too fine a point on it, but she's yours.~ 
++ ~I don't mind sharing.~ + t14.sharing 
++ ~It's for a good cause.~ + t14.heropinion 
+ ~Global("AerieRomanceActive","GLOBAL",2)~ + ~The truth is that she won't sleep with me, either. I'm hoping that if she agrees to it to help you, it would make the way easier for me.~ + t14.unethical 
++ ~I thought the three of us-~ + t14.sharing 
END 

IF ~~ t14.Aerie3 
SAY ~I couldn't. She's vulnerable, <CHARNAME>. I'd feel like I was using her.~
IF ~~ THEN + t14.alone 
END 

IF ~~ t14.unethical 
SAY ~That sounds so... unethical. I couldn't.~
IF ~~ THEN + t14.alone 
END 

IF ~~ t14.heropinion 
SAY ~Even if I thought it was a good idea, which I don't, there's still her feelings to consider. I doubt she'd be willing, even if you were.~
IF ~~ THEN + t14.alone 
END 

IF ~~ t14.sharing 
SAY ~Oh my. No, <CHARNAME>, I really couldn't do that. I just couldn't.~
IF ~~ THEN + t14.alone 
END 

IF ~~ t14.sympathy 
SAY ~You mean she'd lie with me out of sympathy? No thanks.~
IF ~~ THEN + t14.alone 
END 

IF ~~ t14.alone 
SAY ~Thanks for trying to help, but I think I just need some time alone. This mood should pass by morning. It usually does.~
IF ~GlobalGT("B!GavT14Forest","LOCALS",0)~ THEN DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!cut14r")~ EXIT 
IF ~GlobalGT("B!GavT14City","LOCALS",0)~ THEN DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!cut14i")~ EXIT 
END 

IF ~~ t14.nothing 
SAY ~I guess that's better than doing nothing.~
IF ~GlobalGT("B!GavT14Forest","LOCALS",0)~ THEN DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!cut14r")~ EXIT 
IF ~GlobalGT("B!GavT14City","LOCALS",0)~ THEN DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!cut14i")~ EXIT 
END 
END 

/* Talk 15 "Does it ever get to be too much?" */ 

CHAIN
IF ~Global("B!GavTalk","GLOBAL",30)~ THEN ~B!GAVJ~ t15.1
~So, what's the first thing you're going to do when you finally get a chance to put your feet up and relax?~ [bgav118] 
DO ~SetGlobal("B!GavTalk","GLOBAL",31) RealSetGlobalTimer("B!GavT","GLOBAL",GAV_TIME)~
END
+ ~GlobalGT("Chapter","GLOBAL",5)~ + ~Do you mean before or after I get my soul back?~ EXTERN ~B!GavJ~ t15.2 
++ ~I'm going to spend three days in my nightshirt and read every novel I can get my hands on.~ EXTERN ~B!GavJ~ t15.3 
++ ~I'm going to find out exactly how much drink it takes to forget the last two years of my life.~ EXTERN ~B!GavJ~ t15.4 
++ ~I intend to consult the most knowledgable sages in the Realms and find out how it is that you can be as clumsy as you are and not actually kill yourself.~ EXTERN ~B!GavJ~ t15.5 
++ ~I don't know. I'm pretty relaxed right now, as a matter of fact.~ EXTERN ~B!GavJ~ t15.6 
+ ~!Global("B!GavRA","GLOBAL",2)~ + ~I'm not telling, but here's a hint. If you need to get word to me for some reason, you'll have to slip a note under my bedroom door.~ EXTERN ~B!GavJ~ t15.7 
+ ~OR(2) Global("B!GavRA","GLOBAL",2) 
      Global("B!GavRA","GLOBAL",4)~ + ~I wouldn't make any plans that involve leaving the bedroom for a week or two, if I were you.~ EXTERN ~B!GavJ~ t15.8 
++ ~I think I might do some traveling. See the world.~ EXTERN ~B!GavJ~ t15.9 
++ ~I'm going to build a scale model of Baldur's Gate, complete with movable doors, miniature people, and a drawbridge that opens and closes.~ EXTERN ~B!GavJ~ t15.10 
++ ~I have no idea, but it's going to be something grand.~ EXTERN ~B!GavJ~ t15.11 
++ ~I'm not going to do a damned thing. That's rather the point, isn't it?~ EXTERN ~B!GavJ~ t15.12 
++ ~Not a clue.~ EXTERN ~B!GavJ~ t15.13 

APPEND ~B!GavJ~ 

IF ~~ t15.2 
SAY ~Er... right. I don't believe I actually said something that stupid.~ 
++ ~It's alright, Gavin. After all, I probably don't act a lot different.~ + t15.2a 
++ ~It's this gift you have.~ + t15.2b 
++ ~It's because you're so self-absorbed.~ + t15.2c 
++ ~I believe it. There's no end to the witless things that come out of your mouth.~ + t15.2d 
END 

IF ~~ t15.2a 
SAY ~You don't, and that's the frightening part.~ 
IF ~~ THEN + t15.2e 
END 

IF ~~ t15.2b 
SAY ~And all this time, I thought that perhaps I might be remembered for something meaningful, like my devotion to Lathander, or for something embarrassing, like my ability to engage multiple enemies without achieving a single successful kill.~ 
IF ~~ THEN + t15.2e 
END 

IF ~~ t15.2c 
SAY ~Heh. That would be the famous <CHARNAME> sense of humor, I presume?~ 
IF ~~ THEN + t15.2e 
END 

IF ~~ t15.2d 
SAY ~Well, there's an end to it now, then. This conversation is just about done.~ 
IF ~~ THEN DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ EXIT 
END 

IF ~~ t15.2e 
SAY ~We already talked about recovering your soul, though, so I suppose it's pointless to speculate how you'll feel once you get it back until it actually happens.~ 
++ ~Still, it's good to know you care.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t15.2f 
++ ~At this point, it doesn't look like it's going to happen any time soon.~ + t15.2g 
++ ~You sound like you're unsure that it actually will happen.~ + t15.2g 
++ ~Yup.~ EXIT 
END 

IF ~~ t15.2f 
SAY ~Of course I care, and I'll help you in any way that I can.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t15.2g 
SAY ~No, it will happen, and I'll do anything I can to make sure of it.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t15.3 
SAY ~I'd probably do the same.~ 
IF ~~ THEN + t15.14
END 

IF ~~ t15.4 
SAY ~That's a lot of ale.~ 
IF ~~ THEN + t15.14 
END 

IF ~~ t15.5 
SAY ~Heh. Don't bother consulting the sages. The best answer I've found is 'dumb luck.'~ 
IF ~~ THEN + t15.14 
END 

IF ~~ t15.6 
SAY ~Really? With everything that's going on?~ 
IF ~~ THEN  + t15.14 
END 

IF ~~ t15.7 
SAY ~Can't say I blame you.~ 
IF ~~ THEN + t15.14 
END 

IF ~~ t15.8 
SAY ~I like the sound of that!~ 
IF ~~ THEN + t15.14 
END 

IF ~~ t15.9 
SAY ~Yes, there is a difference between traveling for pleasure and dragging yourself all over Faerun because you have to.~ 
IF ~~ THEN + t15.14 
END 

IF ~~ t15.10 
SAY ~Can I play with it when you're done?~ 
IF ~~ THEN + t15.14 
END 

IF ~~ t15.11 
SAY ~I'm sure it will be.~ 
IF ~~ THEN + t15.14 
END 

IF ~~ t15.12 
SAY ~I suppose it is.~ 
IF ~~ THEN + t15.14 
END 

IF ~~ t15.13 
SAY ~You'll think of something, I'm sure.~ 
IF ~~ THEN + t15.14 
END 
END 

CHAIN ~B!GavJ~ t15.14 
~We might not be done with our task, but maybe we can have a bit of fun, maybe blow off a bit of steam. It keeps things from getting to be too much.~ 
== ANOMENJ IF ~InParty("Anomen") 
      InMyArea("Anomen") 
      !StateCheck("Anomen",CD_STATE_NOTVALID)~ ~[ANOMEN] We must not allow ourselves to be diverted from our mission.~ 
== JANJ IF ~InParty("Jan") 
      InMyArea("Jan") 
      !StateCheck("Jan",CD_STATE_NOTVALID) 
      InParty("Anomen") 
      InMyArea("Anomen") 
      !StateCheck("Anomen",CD_STATE_NOTVALID)~ ~[JAN] You need to lighten up, Ano, my friend. Don't be a spoilsport.~ 
== KORGANJ IF ~InParty("Korgan") 
      InMyArea("Korgan") 
      !StateCheck("Korgan",CD_STATE_NOTVALID)~ ~[KORGAN] Ah, let's just go get drunk.~ 
== ANOMENJ IF ~InParty("Anomen") 
      InMyArea("Anomen") 
      !StateCheck("Anomen",CD_STATE_NOTVALID) 
      InParty("Korgan") 
      InMyArea("Korgan") 
      !StateCheck("Korgan",CD_STATE_NOTVALID)~ ~[ANOMEN] Bah. We have better things to do than indulge in such foolishness.~ 
== JAHEIRAJ IF ~InParty("Jaheira") 
      InMyArea("Jaheira") 
      !StateCheck("Jaheira",CD_STATE_NOTVALID)~ ~[JAHEIRA] It would be good to get out and enjoy nature more.~ 
== VALYGARJ IF ~InParty("Valygar") 
      InMyArea("Valygar") 
      !StateCheck("Valygar",CD_STATE_NOTVALID) 
      InParty("Jaheira") 
      InMyArea("Jaheira") 
      !StateCheck("Jaheira",CD_STATE_NOTVALID) 
      OR(27) 
           AreaCheck("AR0085") 
           AreaCheck("AR1100") 
           AreaCheck("AR1101") 
           AreaCheck("AR1102") 
           AreaCheck("AR1104") 
           AreaCheck("AR1105") 
           AreaCheck("AR1106") 
           AreaCheck("AR1107") 
           AreaCheck("AR1200") 
           AreaCheck("AR1204") 
           AreaCheck("AR1300") 
           AreaCheck("AR1304") 
           AreaCheck("AR1400") 
           AreaCheck("AR1404") 
           AreaCheck("AR1700") 
           AreaCheck("AR1800") 
           AreaCheck("AR1900") 
           AreaCheck("AR1901") 
           AreaCheck("AR1902") 
           AreaCheck("AR1904") 
           AreaCheck("AR1905") 
           AreaCheck("AR2500") 
           AreaCheck("AR2600") 
           AreaCheck("AR2602") 
           AreaCheck("AR2603")
           AreaCheck("AR2700") 
           AreaCheck("AR2800") ~ ~[VALYGAR] I'm not complaining, but we already are.~ 
== VALYGARJ IF ~!AreaCheck("AR0085") 
    !AreaCheck("AR1100") 
    !AreaCheck("AR1101") 
    !AreaCheck("AR1102") 
    !AreaCheck("AR1104") 
    !AreaCheck("AR1105") 
    !AreaCheck("AR1106") 
    !AreaCheck("AR1107") 
    !AreaCheck("AR1200") 
    !AreaCheck("AR1204") 
    !AreaCheck("AR1300") 
    !AreaCheck("AR1304") 
    !AreaCheck("AR1400") 
    !AreaCheck("AR1404") 
    !AreaCheck("AR1700") 
    !AreaCheck("AR1800") 
    !AreaCheck("AR1900") 
    !AreaCheck("AR1901") 
    !AreaCheck("AR1902") 
    !AreaCheck("AR1904") 
    !AreaCheck("AR1905") 
    !AreaCheck("AR2500") 
    !AreaCheck("AR2600") 
    !AreaCheck("AR2602") 
    !AreaCheck("AR2603")
    !AreaCheck("AR2700") 
    !AreaCheck("AR2800") 
      InParty("Valygar") 
      InMyArea("Valygar") 
      !StateCheck("Valygar",CD_STATE_NOTVALID) 
      InParty("Jaheira") 
      InMyArea("Jaheira") 
      !StateCheck("Jaheira",CD_STATE_NOTVALID)~ ~[VALYGAR] That sounds good to me.~ 
== NALIAJ IF ~InParty("Nalia") 
      InMyArea("Nalia") 
      !StateCheck("Nalia",CD_STATE_NOTVALID)~ ~[NALIA] How can you even think of idle amusements while so many people are suffering?~ 
== VICONIJ IF ~InParty("Viconia") 
      InMyArea("Viconia") 
      !StateCheck("Viconia",CD_STATE_NOTVALID) 
      InParty("Nalia") 
      InMyArea("Nalia") 
      !StateCheck("Nalia",CD_STATE_NOTVALID)~ ~[VICONIA] I care nothing for that.~ 
== YOSHJ IF ~InParty("Yoshimo") 
      InMyArea("Yoshimo") 
      !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ ~[YOSHIMO] Can I interest anyone in a game of dice, perhaps?~ 
== KELDORJ IF ~InParty("Keldorn") 
      InMyArea("Keldorn") 
      !StateCheck("Keldorn",CD_STATE_NOTVALID) 
      InParty("Yoshimo") 
      InMyArea("Yoshimo") 
      !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ ~[KELDORN] Not with your dice, thief.~ 
== EDWINJ IF ~InParty("Edwin") 
      InMyArea("Edwin") 
      !StateCheck("Edwin",CD_STATE_NOTVALID)~ ~[EDWIN] Whatever you're going to do, kindly do it away from me. I intend to spend the evening preparing my spells.~ 
== MINSCJ IF ~InParty("Minsc") 
      InMyArea("Minsc") 
      !StateCheck("Minsc",CD_STATE_NOTVALID) 
      InParty("Edwin") 
      InMyArea("Edwin") 
      !StateCheck("Edwin",CD_STATE_NOTVALID)~ ~[MINSC] Have no fear. I shall avoid you, no matter what <CHARNAME> decides.~ 
== AERIEJ IF ~InParty("Aerie") 
      InMyArea("Aerie") 
      !StateCheck("Aerie",CD_STATE_NOTVALID)~ ~[AERIE]I know! We could play charades.~ 
== KORGANJ IF ~InParty("Korgan") 
      InMyArea("Korgan") 
      !StateCheck("Korgan",CD_STATE_NOTVALID) 
      InParty("Aerie") 
      InMyArea("Aerie") 
      !StateCheck("Aerie",CD_STATE_NOTVALID)~ ~[KORGAN] Bah, that's no fun. You always do a bird.~ 
== CERNDJ IF ~InParty("Cernd") 
      InMyArea("Cernd") 
      !StateCheck("Cernd",CD_STATE_NOTVALID)~ ~[CERND] I cannot speak for the rest, but I would benefit from some solitude.~ 
== JAHEIRAJ IF ~InParty("Jaheira") 
      InMyArea("Jaheira") 
      !StateCheck("Jaheira",CD_STATE_NOTVALID) 
      InParty("Cernd") 
      InMyArea("Cernd") 
      !StateCheck("Cernd",CD_STATE_NOTVALID)~ ~[JAHEIRA] As would we all, I think.~ 
== JANJ IF ~InParty("Jan") 
      InMyArea("Jan") 
      !StateCheck("Jan",CD_STATE_NOTVALID)~ ~[JAN] I hear there's a turnip festival going on in the Bridge District. That would be fun, and educational, too!~ 
== MAZZYJ IF ~InParty("Mazzy") 
      InMyArea("Mazzy") 
      !StateCheck("Mazzy",CD_STATE_NOTVALID) 
      InParty("Jan") 
      InMyArea("Jan") 
      !StateCheck("Jan",CD_STATE_NOTVALID)~ ~[MAZZY] Perhaps, if you don't mind flatulence. I would prefer to avoid it, myself.~ 
== MINSCJ IF ~InParty("Minsc") 
      InMyArea("Minsc") 
      !StateCheck("Minsc",CD_STATE_NOTVALID)~ ~[MINSC] I don't know. Too much excitement makes Boo squirrely.~ 
== IMOEN2J IF ~InParty("Imoen2") 
      InMyArea("Imoen2") 
      !StateCheck("Imoen2",CD_STATE_NOTVALID) 
      InParty("Minsc") 
      InMyArea("Minsc") 
      !StateCheck("Minsc",CD_STATE_NOTVALID)~ ~[IMOEN] Oh, let him play, Minsc. He needs some fun, too.~ 
== MAZZYJ IF ~InParty("Mazzy") 
      InMyArea("Mazzy") 
      !StateCheck("Mazzy",CD_STATE_NOTVALID)~ ~[MAZZY] An evening of quiet relaxation would be welcome, I think.~ 
== CERNDJ IF ~InParty("Cernd") 
      InMyArea("Cernd") 
      !StateCheck("Cernd",CD_STATE_NOTVALID) 
      InParty("Mazzy") 
      InMyArea("Mazzy") 
      !StateCheck("Mazzy",CD_STATE_NOTVALID)~ ~[CERND] Indeed. The thistle grows best when it is left undisturbed.~ 
== VICONIJ IF ~InParty("Viconia") 
      InMyArea("Viconia") 
      !StateCheck("Viconia",CD_STATE_NOTVALID)~ ~[VICONIA] I have no liking for your petty amusements.~ 
== EDWINJ IF ~InParty("Edwin") 
      InMyArea("Edwin") 
      !StateCheck("Edwin",CD_STATE_NOTVALID) 
      InParty("Viconia") 
      InMyArea("Viconia") 
      !StateCheck("Viconia",CD_STATE_NOTVALID)~ ~[EDWIN] Are you certain? You could learn much of pleasure from a Red Wizard.~ 
== VALYGARJ IF ~InParty("Valygar") 
      InMyArea("Valygar") 
      !StateCheck("Valygar",CD_STATE_NOTVALID)~ ~[VALYGAR] As long as you leave me alone, you can do whatever you like.~ 
== YOSHJ IF ~InParty("Yoshimo") 
      InMyArea("Yoshimo") 
      !StateCheck("Yoshimo",CD_STATE_NOTVALID) 
      InParty("Valygar") 
      InMyArea("Valygar") 
      !StateCheck("Valygar",CD_STATE_NOTVALID)~ ~[YOSHIMO] You are alone too much, Valygar. It would do you good to be around others more often.~ 
== IMOEN2J IF ~InParty("Imoen2") 
      InMyArea("Imoen2") 
      !StateCheck("Imoen2",CD_STATE_NOTVALID)~ ~[IMOEN] We should get ourselves some berry pies. They're awfully good, this time of year.~ 
== AERIEJ IF ~InParty("Aerie") 
      InMyArea("Aerie") 
      !StateCheck("Aerie",CD_STATE_NOTVALID) 
      InParty("Imoen2") 
      InMyArea("Imoen2") 
      !StateCheck("Imoen2",CD_STATE_NOTVALID)~ ~[AERIE] Ooh, I like pies!~ 
== KELDORJ IF ~InParty("Keldorn") 
      InMyArea("Keldorn") 
      !StateCheck("Keldorn",CD_STATE_NOTVALID)~ ~[KELDORN] I do have a book I've been meaning to read.~ 
== NALIAJ IF ~InParty("Nalia") 
      InMyArea("Nalia") 
      !StateCheck("Nalia",CD_STATE_NOTVALID) 
      InParty("Keldorn") 
      InMyArea("Keldorn") 
      !StateCheck("Keldorn",CD_STATE_NOTVALID)~ ~[NALIA] Is it any good? Maybe I can borrow it when you're done.~ 
== ~B!GavJ~ ~So, any idea what you'd like to do?~ 
END 
++ ~Whatever it is, it won't involve drinking. You got us in too much trouble last time.~ EXTERN ~B!GavJ~ t15.15 
++ ~I'm too tired to even think that far ahead.~ EXTERN ~B!GavJ~ t15.16 
++ ~Probably just fall into nightmare-filled sleep, like I do every night.~ EXTERN ~B!GavJ~ t15.17 
++ ~I want a good meal.~ EXTERN ~B!GavJ~ t15.18 
+ ~Global("B!GavRA","GLOBAL",1)~ + ~Stop by my bedroll later and I'll tell you there.~ EXTERN ~B!GavJ~ t15.19 
+ ~OR(2) Global("B!GavRA","GLOBAL",2) 
      Global("B!GavRA","GLOBAL",4)~ + ~Stop by my bedroll later and I'll tell you there.~ EXTERN ~B!GavJ~ t15.20 

APPEND ~B!GavJ~ 

IF ~~ t15.15 
SAY ~Hmm, yes, we definitely don't want that happening again.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t15.16 
SAY ~Then maybe we should call it quits soon.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t15.17 
SAY ~You're still having nightmares? I'm sorry to hear that.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t15.18 
SAY ~Then a good meal you shall have.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t15.19 
SAY ~(gulp) I... er... don't know if that's such a good idea.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t15.20 
SAY ~I shall obey your every desire.~ 
IF ~~ THEN DO ~SetGlobal("B!GavPCWantsIt","LOCALS",1)~ EXIT 
END 
END 

/* Talk 16 "I wanna be a social worker when I grow up" Gavin talks about what he wants to do when it's all over */ 

CHAIN
IF ~Global("B!GavTalk","GLOBAL",32)~ THEN ~B!GAVJ~ t16.1
~When this is all over, I think that maybe I'll settle in Athkatla.~ [bgav119] 
DO ~SetGlobal("B!GavTalk","GLOBAL",33) RealSetGlobalTimer("B!GavT","GLOBAL",GAV_TIME)~
END
++ ~I thought you hated cities!~ EXTERN ~B!GavJ~ t16.2 
+ ~!Global("B!GavRA","GLOBAL",2)~ + ~That wouldn't suit me at all.~ EXTERN ~B!GavJ~ t16.3 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~That wouldn't suit me at all.~ EXTERN ~B!GavJ~ t16.4 
+ ~Global("B!GavRA","GLOBAL",2) 
      Global("B!GavinEngaged","GLOBAL",1)~ + ~Didn't we already decide where we're going to live?~ EXTERN ~B!GavJ~ t16.5 
+ ~!Global("B!GavRA","GLOBAL",2)~ + ~I was thinking along those lines myself. Maybe we'll be neighbors.~ EXTERN ~B!GavJ~ t16.6 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~I was thinking along those lines myself.~ EXTERN ~B!GavJ~ t16.7 
++ ~It's as good a place as any.~ EXTERN ~B!GavJ~ t16.2 

APPEND ~B!GavJ~ 

IF ~~ t16.2 
SAY ~I'm not fond of cities at all, Athkatla, especially, but I think I'm needed here.~ 
IF ~~ THEN + t16.8 
END 

IF ~~ t16.3 
SAY ~It doesn't really suit me, either, but I think I'm needed here.~ 
IF ~~ THEN + t16.8 
END 

IF ~~ t16.4 
SAY ~Hmm. I certainly wouldn't make you live somewhere you hated, but I think I'm needed here.~ 
IF ~~ THEN + t16.8 
END 

IF ~~ t16.5 
SAY ~We did, but I think I'm needed here.~ 
IF ~~ THEN + t16.8 
END 

IF ~~ t16.6 
SAY ~I'd feel sorry for you, then, having to look at this face every time you stepped outside your door. I think I'm needed here, though.~ 
IF ~~ THEN + t16.8 
END 

IF ~~ t16.7 
SAY ~That works out well then. I think I'm needed here.~ 
IF ~~ THEN + t16.8 
END 

IF ~~ t16.8 
SAY ~There's already a temple of Lathander here, but it needs rejuvenation. Ours is not a faith that encourages believers to shut themselves behind an impressive marble facade and seek enlightenment in solitude. We're meant to go out and actively minister to others, encouraging everyone to better their lives and the lives of those around them.~ 
++ ~Are you contemplating some kind of crusade?~ + t16.9 
++ ~I'm surprised to hear you say that. You've always avoided leadership roles.~ + t16.10 
++ ~You're setting yourself up for disappointment, Gavin. One man can't do everything you want to do.~ + t16.11 
+ ~!Global("GaalJob","GLOBAL",0)~ + ~The Lathandrites here don't lack enthusiasm or leadership, they lack members. They just don't have enough resources to do what you want to do.~ + t16.12 
++ ~You're meddling in the affairs of others again.~ + t16.13 
END 

IF ~~ t16.9 
SAY ~Maybe I am.~ 
IF ~~ THEN + t16.10 
END 

IF ~~ t16.10 
SAY ~I have always deferred to others, and I don't relish the responsibility that comes with leadership, but there comes a time when you have to do what is right, even if it means doing something you don't want to do.~ 
++ ~You can do this. You have the ability. You just need to have confidence.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t16.14 
+ ~Alignment(Player1,MASK_EVIL)~ + ~It's worth doing, Gavin. I'll give you whatever support I can.~ DO ~IncrementGlobal("B!GavChange","GLOBAL",1) 
      IncrementGlobal("B!GavLove","GLOBAL",1)~ + t16.15 
+ ~!Alignment(Player1,MASK_EVIL)~ + ~It's worth doing, Gavin. I'll give you whatever support I can.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t16.15 
++ ~Are you sure you're up to this?~ + t16.14 
++ ~You mean well, but I know you'll never do it.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t16.16 
++ ~Do you really think you can just walk right into the temple and say 'There are going to be some changes around here, so toe the line and do as I say?'~ + t16.17 
END 

IF ~~ t16.11 
SAY ~No, one man can't do half of what I want to do, but one man may inspire others.~ 
IF ~~ THEN + t16.10 
END 

IF ~~ t16.12 
SAY ~Now that the cult is destroyed, that should change. We've always enjoyed the patronage of the nobility, so we have funds at our disposal. We just need enthusiastic, motivated people who want to see it done.~ 
IF ~~ THEN + t16.10 
END 

IF ~~ t16.13 
SAY ~No, not meddling, because we don't believe in forcing others in matters of faith. If you said 'inspiring others,' you might be nearer to the mark.~ 
IF ~~ THEN + t16.10 
END 

IF ~~ t16.14 
SAY ~I have very little confidence in myself, but I have a great deal of faith in the Morninglord. Lathander's power flows through me, and with it, I can do anything.~ 
+ ~!Global("B!GavNoBG1","GLOBAL",1)~ + ~Keep it up, and I'm going to start calling you Tiax.~ + t16.18 
++ ~Your faith is admirable, but I'd rather you believed in yourself more. You have talents of your own.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t16.19 
++ ~We've all come a long way since we started. I think you can do it.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t16.23 
++ ~You're starting to sound like a fanatic.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + t16.20 
+ ~OR(27) 
    AreaCheck("AR0085") 
    AreaCheck("AR1100") 
    AreaCheck("AR1101") 
    AreaCheck("AR1102") 
    AreaCheck("AR1104") 
    AreaCheck("AR1105") 
    AreaCheck("AR1106") 
    AreaCheck("AR1107") 
    AreaCheck("AR1200") 
    AreaCheck("AR1204") 
    AreaCheck("AR1300") 
    AreaCheck("AR1304") 
    AreaCheck("AR1400") 
    AreaCheck("AR1404") 
    AreaCheck("AR1700") 
    AreaCheck("AR1800") 
    AreaCheck("AR1900") 
    AreaCheck("AR1901") 
    AreaCheck("AR1902") 
    AreaCheck("AR1904") 
    AreaCheck("AR1905") 
    AreaCheck("AR2500") 
    AreaCheck("AR2600") 
    AreaCheck("AR2602") 
    AreaCheck("AR2603")
    AreaCheck("AR2700") 
    AreaCheck("AR2800")~ + ~You can do anything, eh? Let me see you leap over that log over there.~ + t16.21 
+ ~!AreaCheck("AR0085") 
    !AreaCheck("AR1100") 
    !AreaCheck("AR1101") 
    !AreaCheck("AR1102") 
    !AreaCheck("AR1104") 
    !AreaCheck("AR1105") 
    !AreaCheck("AR1106") 
    !AreaCheck("AR1107") 
    !AreaCheck("AR1200") 
    !AreaCheck("AR1204") 
    !AreaCheck("AR1300") 
    !AreaCheck("AR1304") 
    !AreaCheck("AR1400") 
    !AreaCheck("AR1404") 
    !AreaCheck("AR1700") 
    !AreaCheck("AR1800") 
    !AreaCheck("AR1900") 
    !AreaCheck("AR1901") 
    !AreaCheck("AR1902") 
    !AreaCheck("AR1904") 
    !AreaCheck("AR1905") 
    !AreaCheck("AR2500") 
    !AreaCheck("AR2600") 
    !AreaCheck("AR2602") 
    !AreaCheck("AR2603")
    !AreaCheck("AR2700") 
    !AreaCheck("AR2800")~ + ~You can do anything, eh? Let me see you leap over that barrel over there.~ + t16.21 
++ ~You're mad. Stark, raving mad.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ + t16.22 
END 

IF ~~ t16.15 
SAY ~Thank you, <CHARNAME>. I'll probably need it.~ 
IF ~~ THEN + t16.14 
END 

IF ~~ t16.16 
SAY ~You're wrong, <CHARNAME>. I *will* do it.~ 
IF ~~ THEN + t16.14 
END 

IF ~~ t16.17 
SAY ~I know it won't be that easy. High Mornmaster Arval leads the temple, and I have no desire to challenge his leadership. The Lathandrite church is not like other faiths, though. Clerics congregate together and form temples, but each individual priest acts according to the dictates of his conscience and his beliefs. If I propose changes, some will follow me.~ 
IF ~~ THEN + t16.14 
END 

IF ~~ t16.18 
SAY ~Heh. If I ever say 'Gavin rules all!' kill me dead. Please.~ 
IF ~~ THEN + t16.24 
END 

IF ~~ t16.19 
SAY ~If I do, they're cleverly buried under a mass of general incompetence, but I thank you nonetheless.~ 
IF ~~ THEN + t16.24 
END 

IF ~~ t16.20 
SAY ~It's a hazard of the trade, I fear. There are times when I reflect on the might and the majesty of Lathander with awe, and I wonder how great his power must be, if the small fraction that I possess can accomplish so much.~ 
IF ~~ THEN + t16.24 
END 

IF ~~ t16.21 
SAY ~You really want to see me end up in a heap, don't you? I said I can do the incredible, not the impossible, and feats of dexterity will always be the latter, I fear.~ 
IF ~~ THEN + t16.24 
END 

IF ~~ t16.22 
SAY ~Maybe I am, but you're the one who keeps me on.~ 
IF ~~ THEN EXIT 
END 

IF ~~ t16.23 
SAY ~Thank you. Your faith in me is reassuring.~ 
IF ~~ THEN + t16.24 
END 

IF ~~ t16.24 
SAY ~We still have a long way to go before any of this becomes reality, though, and I've talked for long enough. Let's continue onward, and get a little closer to achieving our goals before we rest.~ 
IF ~~ THEN EXIT 
END 

END 

/* 'Let's get serious' */ 

CHAIN
IF ~Global("B!GavSerious","GLOBAL",2)~ THEN ~B!GAVJ~ st.1
~<CHARNAME>... we have become close, in the time we've spent together, and in you, I sense a kindred spirit. How I ever knew happiness before I met you, I do not know, but I do know that I have found it now.~ [bgav120] 
= ~Yet every day, we face trials and danger that could claim either of us. Life is uncertain, but I know I love you. I...~ 
= ~I have neither wealth nor power, nor any great cunning or strength of arms. My faith is unshakable, though, and I offer it to you, and all the powers the Morninglord bestows on me.~ 
= ~I can promise you nothing but my heart and my eternal devotion, but I offer these gladly if you will consent to be my wife.~ 
= ~Will you marry me?~
DO ~SetGlobal("B!GavSerious","GLOBAL",3) RealSetGlobalTimer("B!GavT","GLOBAL",GAV_TIME)~
END
++ ~Yes! Of course I'll marry you!~ EXTERN ~B!GavJ~ st.2 
++ ~I've been thinking about that myself, and I think it's an excellent idea.~ EXTERN ~B!GavJ~ st.2 
++ ~Well! Isn't this a surprise! I accept.~ EXTERN ~B!GavJ~ st.2 
++ ~This is so sudden... I need more time.~ EXTERN ~B!GavJ~ st.3 
++ ~Oh, Gavin... I hate to disappoint you, but can't we just leave things the way they are?~ EXTERN ~B!GavJ~ st.3 
++ ~So... what exactly do you expect out of this?~ EXTERN ~B!GavJ~ st.4 
++ ~I don't know, Gavin. If you wanted to become lovers, I would have no objection, but marriage...~ EXTERN ~B!GavJ~ st.5 
++ ~I've been dreading this. I know you care deeply for me, Gavin, but I can't return your feelings right now.~ EXTERN ~B!GavJ~ st.6 
++ ~Well, you certainly caught me off guard. I never thought you would take our flirtation so seriously. I'm sorry, Gavin, but I can't.~ EXTERN ~B!GavJ~ st.7 
++ ~I'm sorry, Gavin, but there's someone else.~ EXTERN ~B!GavJ~ st.7 
++ ~I never asked for your love, Gavin, and now that you've offered it, I've got to say that I'm repulsed by it. I most certainly don't want it, now or ever.~ EXTERN ~B!GavJ~ st.8 
++ ~Marry you? Are you mad?~ EXTERN ~B!GavJ~ st.9 

APPEND ~B!GavJ~ 

IF ~~ st.2 
SAY ~Oh, most beloved <CHARNAME>... thank you!~ 
= ~(He kisses you tenderly, though you can sense his barely-contained emotion.)~ 
++ ~(You kiss him passionately.)~ DO ~SetGlobal("B!GavRA","GLOBAL",2) 
      IncrementGlobal("B!GavLove","GLOBAL",1)~ + st.2a 
++ ~Mmmm, yes...~ DO ~SetGlobal("B!GavRA","GLOBAL",2) 
      IncrementGlobal("B!GavLove","GLOBAL",1)~ + st.2a 
++ ~I love you, but it's time for bed.~ DO ~SetGlobal("B!GavRA","GLOBAL",2) 
      IncrementGlobal("B!GavLove","GLOBAL",1)~ + st.2b 
END 

IF ~~ st.2a 
SAY ~(Gavin's kiss becomes more passionate, and you feel his pulse quicken.)~ 
++ ~(You respond to the increased urgency of his embrace by kissing him even more ardently, stroking his back and pressing your body against his.)~ + st.2c 
++ ~(You don't break the embrace, but you resist his advances, pulling away from him.)~ + st.2d 
++ ~Gavin, no. It's too soon.~ + st.2e 
END 

IF ~~ st.2b 
SAY ~Yes, love, it is...~ 
= ~And... and I have to ask you...~
= ~You can say no, and I will love you no less, nor will I ever pressure you otherwise, but...~ 
= ~Will you... will you have me as your lover, as well as your future husband?~ 
++ ~Yes!~ DO ~SetGlobal("B!GavFirstTime","LOCALS",2)~ + st.2f 
++ ~Isn't it a little soon? You just confessed your love a moment ago.~ + st.2b2 
++ ~No, Gavin. I will come to you when I am ready, but let us treasure each memory for its distinct beauty.~ + st.2b3 
++ ~Let's save one joy for our wedding night.~ DO ~SetGlobal("B!GavFirstTime","LOCALS",1)~ + st.2b4 
++ ~I won't bed you now, because if I did, I would always wonder whether you confessed your love just to get me to lie with you.~ + st.2b5 
END 

/* st.2b1 - there is no st.2b1 */ 

IF ~~ st.2b2 
SAY ~I did, didn't I? I've said it so many times in my heart that I'd forgotten that I only said it aloud just now.~ 
IF ~~ THEN + st.2b6 
END 

IF ~~ st.2b3 
SAY ~Then that is exactly what we will do. I know that I will certainly treasure this moment forever.~ 
IF ~~ THEN + st.11 
END 

IF ~~ st.2b4 
SAY ~If you want to wait, then that is what we will do. I am so delighted that you will have me, I will wait however long it takes.~ 
IF ~~ THEN + st.11 
END 

IF ~~ st.2b5 
SAY ~Never, beloved! Your love is more than enough to make me happy, but to allay your fears, we'll wait. If you allow me to come to your bed at all, it will be at your invitation, not by my request.~ 
IF ~~ THEN + st.11 
END 

IF ~~ st.2b6 
SAY ~So... you want to wait, I take it?~ 
++ ~I want to wait.~ + st.2b4 
++ ~No, I just wanted to make sure your heart was in it.~ + st.2b7
++ ~No, I just wanted to make sure you were ready.~ + st.2b7 
END 

IF ~~ st.2b7 
SAY ~Oh, yes. Very, very much so.~ 
IF ~~ THEN DO ~SetGlobal("B!GavFirstTime","LOCALS",2)~ + st.2f 
END 

IF ~~ st.2c 
SAY ~(Emboldened by your passion, his hands move over your body even as he kisses you. The lightness of his clothing and the closeness of your bodies conceal nothing. You feel his chest expand with every ragged breath, you feel his body tremble with excitement... and you feel his desire rising between you.)~ 
++ ~Come, Gavin. Let's go to bed.~ DO ~SetGlobal("B!GavFirstTime","LOCALS",2)~ + st.2f 
++ ~(You slide your hands under his shirt and continue to stroke him.)~ + st.2c1 
++ ~(You loosen your clothing and guide his hands to more sensitive parts of your body.)~ + st.2c2 
++ ~(You do not break the embrace, but you do nothing to encourage him to greater passion.)~ DO ~SetGlobal("B!GavFirstTime","LOCALS",2)~ + st.2f 
++ ~Gavin, no. I thought I could, but it's too soon.~ + st.2e 
END 

IF ~~ st.2c1 
SAY ~(Gavin shivers as your cool fingers slide over his skin. You feel him tense slightly as your fingertips brush the scar beneath his shoulderblade, but he offers no resistance as you explore his torso.)~ 
= ~(Lean muscles slide under your hands as he moves, tenderly stroking your hair, neck, and back.)~ 
IF ~~ THEN DO ~SetGlobal("B!GavFirstTime","LOCALS",2)~ + st.2f 
END 

IF ~~ st.2c2 
SAY ~(Gavin's touch is timid, at first. He strokes your neck and collarbone before lowering his fingertips to caress your breast through your clothing.)~ 
IF ~~ THEN DO ~SetGlobal("B!GavFirstTime","LOCALS",2)~ + st.2f 
END 

IF ~~ st.2d 
SAY ~Is something wrong, my love?~ 
++ ~This is new to me, Gavin. I've never been with a man before.~ + st.2d1 
++ ~This is our first time together, Gavin. I want to savor each moment.~ + st.2d2 
++ ~Nothing is wrong, but your arousal is too great. You will spend yourself too soon, if you keep this up.~ + st.2d3 
++ ~Your passion is a bit overwhelming.~ + st.2d4 
++ ~I'm starting to think it might be a mistake to bed each other so soon. Our emotions might lead us to do something rash.~ + st.2d5 
++ ~It doesn't feel right, Gavin. I think we should wait until we're married.~ DO ~SetGlobal("B!GavFirstTime","LOCALS",1)~ + st.2b4 
END 

IF ~~ st.2d1 
SAY ~Do you want me to stop?~ 
++ ~Maybe you'd better stop.~ DO ~SetGlobal("B!GavFirstTime","LOCALS",3)~ + st.2b4 
++ ~No, don't stop, just go slow.~ DO ~SetGlobal("B!GavFirstTime","LOCALS",3)~ + st.2f 
++ ~No, I want to make love to you. I just needed to breathe.~ DO ~SetGlobal("B!GavFirstTime","LOCALS",3)~ + st.2f 
END 

IF ~~ st.2d2 
SAY ~As do I, beloved.~ 
IF ~~ THEN DO ~SetGlobal("B!GavFirstTime","LOCALS",1)~ + st.2f 
END 

IF ~~ st.2d3 
SAY ~Yes, you're right... I will try to go more slowly.~ 
IF ~~ THEN DO ~SetGlobal("B!GavFirstTime","LOCALS",2)~ + st.2f 
END 

IF ~~ st.2d4 
SAY ~(Gavin's breath is a shuddering gasp.) I'm having all I can do to keep myself in check, love. I'm sorry, but I've wanted this moment for so long, it's hard to control myself. Do you want me to stop?~ 
++ ~Maybe you'd better stop.~ + st.2b4 
++ ~No, don't stop, just go slow.~ DO ~SetGlobal("B!GavFirstTime","LOCALS",2)~ + st.2f 
++ ~No, I want to make love to you. I just needed to breathe.~ DO ~SetGlobal("B!GavFirstTime","LOCALS",2)~ + st.2f 
END 

IF ~~ st.2d5 
SAY ~Perhaps you are right. I don't know about you, but my emotions are certainly giving me all kinds of impulsive suggestions.~ 
IF ~~ THEN + st.2b4 
END 

IF ~~ st.2e 
SAY ~(With obvious reluctance, Gavin relaxes his embrace, though he does not release you quite yet.)~ 
= ~I am sorry, love. I was carried away by the moment, but if you want to wait, I can wait.~ 
++ ~Just a little while, Gavin. What happened tonight was special, but making love will be, too. I want to treasure each memory separately.~ + st.2b3 
++ ~It just feels so rushed. A few moments ago, we were just holding hands and stealing kisses. I don't know if I'm ready to discover you that completely quite yet.~ + st.2e1 
++ ~This is a side of you I've never seen before, and the intimacy is a little frightening.~ + st.2d4 
++ ~I think we should wait until we're married.~ DO ~SetGlobal("B!GavFirstTime","LOCALS",1)~ + st.2b4
++ ~How do I know you didn't tell me you love me just to get me to lie with you?~ + st.2b5 
END 

IF ~~ st.2e1 
SAY ~I understand.~ 
IF ~~ THEN + st.2b4 
END 

IF ~~ st.2f 
SAY ~(Gavin's arms tighten around you. He brings your lips to his again, and kisses you slowly, savoring each moment.)~ 
= ~(If he was trembling before, his body is still now, though his movements suggest an energy barely contained. His touch is gentle, but purposeful... and awkward. He pauses.)~ 
= ~<CHARNAME>, my love, I... I want to please you, but I don't know how.~ 
++ ~You said you've done this before.~ + st.2f1 
++ ~You're doing fine, Gavin. Your body knows what to do, even if your brain does not.~ + st.2f2 
++ ~We need to start by getting rid of some of this clothing.~ + st.2f3 
++ ~It's alright, Gavin. Let's go back to what we were doing, and I'll guide you through it.~ + st.2f4 
++ ~You need to slow down or you'll never last.~ + st.2f5 
++ ~Maybe this is too much too soon. Maybe we should try this on a night when our emotions aren't already getting the better of us.~ + st.2f6 
++ ~Be a man, Gavin. Take what you want.~ + st.2f7 
END 

IF ~~ st.2f1 
SAY ~I've got the most beautiful, wonderful woman in all Faerun in my arms, and you have to remind me of that now?~ 
= ~I was young, barely more than a boy... and to say the truth, it was all over almost before it started. The... experience was so brief, and so overwhelming, that I barely realized what had happened.~ 
= ~But I'm a man now... and just as inexperienced as I was then.~ 
IF ~~ THEN + st.2f8 
END 

IF ~~ st.2f2 
SAY ~My body is full of suggestions, just now, but I'm not sure how much liberty I should give it.~ 
IF ~~ THEN + st.2f8 
END 

IF ~~ st.2f3 
SAY ~(gulp) Yes... er... <CHARNAME>...~ 
IF ~~ THEN + st.2f8 
END 

IF ~~ st.2f4 
SAY ~(Gavin eagerly resumes his lovemaking, but after a short while, draws away again, his face full of concern.)~ 
IF ~~ THEN + st.2f8 
END 

IF ~~ st.2f5 
SAY ~I probably won't, anyway...~ 
IF ~~ THEN + st.2f8 
END 

IF ~~ st.2f6 
SAY ~I don't know if I'll be any calmer, then, but you're probably right. My emotions are certainly making some intense demands of me, at the moment.~ 
IF ~~ THEN + st.2b4 
END 

IF ~~ st.2f7 
SAY ~(Gavin groans and resumes his lovemaking in earnest, but after a short while, he pulls away, gasping.)~ 
IF ~~ THEN + st.2f8 
END 

IF ~~ st.2f8 
SAY ~Sweet <CHARNAME>, I desperately want to please you... or at least not disappoint you too much, though I fear that I probably will...~ 
++ ~Relax, Gavin. Your heart will guide you... and if you run out of ideas, I'm sure we can come up with something together.~ + st.2f8a  
++ ~You don't need to be the best lover Faerun has ever known, love. You just have to mean it.~ + st.2f8b 
++ ~Don't be nervous, Gavin. We love each other, and that's all that matters.~ + st.2f8c 
++ ~Less talk, more lovemaking...~ + st.2finis 
++ ~You need to be confident, or you will fail.~ + st.2f8d 
++ ~If you do, we can always try again.~ + st.2f8e 
++ ~If you're so unsure of your abilities, maybe we should wait.~ + st.2f8f 
END 

IF ~~ st.2f8a 
SAY ~I hope so, love. Very, very much.~ 
IF ~~ THEN + st.2finis 
END 

IF ~~ st.2f8b 
SAY ~That's good, because I can almost promise you I won't be. But I will try, nonetheless.~ 
IF ~~ THEN + st.2finis 
END 

IF ~~ st.2f8c 
SAY ~We do... and you're right.~ 
IF ~~ THEN + st.2finis 
END 

IF ~~ st.2f8d 
SAY ~So, no pressure, eh? Well, I'll do my best.~ 
IF ~~ THEN + st.2finis 
END 

IF ~~ st.2f8e 
SAY ~I like the sound of that.~ 
IF ~~ THEN + st.2finis 
END 

IF ~~ st.2f8f 
SAY ~I don't know if waiting will help. I'll be no more experienced then. But I will wait, if you want to.~ 
++ ~It's all right, Gavin. I'm sure you'll be fine.~ + st.2finis 
++ ~Then let's see what we can do about making you more experienced. Starting now.~ + st.2finis 
++ ~Let's wait. There's no point in rushing now.~ + st.2b4 
END 

IF ~~ st.2finis 
SAY ~(With a happy sigh, Gavin cradles your face in his hands and brings your lips to his again. He kisses you deeply, slowly.)~ 
= ~(The sounds of the world recede until the only music you hear is your own beating hearts. At last, that too fades to a murmer, and you fall asleep in each others' arms.)~ 
IF ~!AreaType([FOREST])~ THEN DO ~SetGlobal("B!GavSex","GLOBAL",1) 
      IncrementGlobal("B!GavLove","GLOBAL",1) 
      ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!rest1")~ EXIT 
IF ~AreaType([FOREST])~ THEN DO ~SetGlobal("B!GavSex","GLOBAL",1) 
      IncrementGlobal("B!GavLove","GLOBAL",1) 
      ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!rest1")~ EXIT 
END  

IF ~~ st.3 
SAY ~Oh...~ 
=  ~Well, I had considered this as one possible outcome. I had hoped you would say yes, of course, but...~ 
= ~Let us continue as we were, then. Maybe a day will come when you feel more able to...~ 
IF ~~ THEN + st.10  
END 

IF ~~ st.4 
SAY ~What do I expect? I don't know. I hoped you might agree to accept me as your future husband. I feared you might reject me utterly. But I certainly don't know what to expect. What do you mean, exactly?~ 
++ ~Do you think that after a few easily spoken words and hollow promises, I will accept you as my lover?~ + st.4a 
++ ~If I say yes, would you expect me to run away with you to be married this moment?~ + st.4b 
++ ~If I say no, will you be heartbroken?~ + st.4c 
++ ~If I need more time to decide, will you give it to me?~ + st.4d 
++ ~Do you think that commitment excuses you from having to work to keep my affection?~ + st.4e 
++ ~I just wanted to know if you had any clear idea what you were getting yourself into, with such a declaration.~ + st.4f 
END 

IF ~~ st.4a 
SAY ~Your lover? Well, I hoped that one day you might allow it, but when and where would be your choice, if at all.~ 
= ~I meant that I wanted to form a bond with you, a promise that we would unite with each other someday in the eyes of our peoples and in the eyes of our gods...~ 
= ~And even if those words seemed easily spoken to you, I assure you they were not. I've been agonizing over them for days, and I'm still pretty sure I got it wrong, now that I've seen your reaction.~ 
IF ~~ THEN + st.4g 
END 

IF ~~ st.4b 
SAY ~No, of course not. It would be foolish to act so suddenly, without letting it sink in a bit.~ 
IF ~~ THEN + st.4g 
END 

IF ~~ st.4c 
SAY ~That would depend on whether you said that you wanted more time to decide or whether you said you wanted nothing further to do with me.~ 
= ~If all you need is time, I would give that gladly, but if you reject me completely...~ 
= ~Heartbroken is not too strong a word.~ 
IF ~~ THEN + st.4g 
END 

IF ~~ st.4d 
SAY ~Yes, of course! I would not want to rush any decision this important.~ 
IF ~~ THEN + st.4g 
END 

IF ~~ st.4e 
SAY ~No, I understand that any understanding between two people requires work as well as commitment. I am afraid of neither.~ 
IF ~~ THEN + st.4g 
END 

IF ~~ st.4f 
SAY ~I know. I've laid my feelings bare, with no falsehood or deception. I want you for my wife, and I know well the solemnity of that promise.~ 
IF ~~ THEN + st.4g 
END 

IF ~~ st.4g 
SAY ~But now, the words are said, and they cannot be taken back, even if I wanted to. You have heard my plea. Will you have me?~ 
++ ~I will.~ + st.2 
++ ~I'm sorry, Gavin, but I need more time.~ + st.3 
++ ~I would rather leave things as they are, at least for now.~ + st.3 
++ ~Marriage is a big step, Gavin, and not one I am willing to take. Could we not just become lovers?~ + st.5 
++ ~I'm sorry, Gavin. I know you care deeply for me, but I can't return your feelings right now.~ + st.6 
++ ~To be perfectly honest with you, I never thought you would take our flirting so seriously. I'm sorry, Gavin, but I just don't feel for you what you feel for me.~ + st.7 
++ ~I'm sorry, Gavin, but there's someone else.~ + st.7 
++ ~Have you? What a revolting thought! And that means no. Not now, not ever.~ + st.8 
++ ~You must be insane.~ + st.9 
END 

IF ~~ st.5 
SAY ~You mean, become lovers with no oath or bond between us? No, <CHARNAME>, I could not. My love for you is built on the hope of a future together, and without that...~ 
= ~(sigh) But I know my faults. Without the hope of life together, my love for you would die.~ 
++ ~But why must it be that way? I cannot commit to you, but I do want you as a lover.~ + st.5a 
++ ~No, Gavin, I would not want you to live like that. Hold on to your hope, and one day... Who knows what may happen tomorrow?~ + st.6 
++ ~Gavin, you read too much into our flirtation. It was pleasant for both of us, but I never intended for you to fall in love with me.~ + st.7 
++ ~I can't give you an answer right now. I need to think about it some more.~ + st.3 
END 

IF ~~ st.5a 
SAY ~If you rejected me outright, but with kindness, I would keep hoping and praying that one day, your heart would change, and you would accept me. My love for you could survive that.~ 
= ~But if you demanded that I allow myself to... lie with you, with no hope, no promise of a future, I would have to accept that you could never care for me.~
= ~To my shame, I probably would give in to you.... because you are what you are, and if... satisfying your desires helped you defeat the obstacles you face...~ 
= ~It would be a great sacrifice, I won't deny it. I would feel used, and a part of me would die in making it. But I would do it, because you must succeed.~ 
++ ~That is what I want.~ + st.5b 
++ ~No, Gavin, I would not ask you to sacrifice your beliefs, even for the sake of my own desires.~ + st.5c 
++ ~I don't want that, no. I never asked for your love, and now that you've declared it, I have to reject it. That's all there is to say.~ + st.6 
++ ~You sound like a reluctant martyr being led to the slaughter. It's just an act, Gavin, the simple scratching of an itch. But since you seem to regard it as something deeply spiritual, I won't demand it of you.~ + st.5d 
END 

IF ~~ st.5b 
SAY ~I'm going to ask you again, because once we're on this course, there is no turning back.~ 
= ~If you make me your lover without any vows between us, I will lose respect for you. I do all you ask of me, but never again will I trust you.~ 
= ~And if ever you send me from your side, even that will end between us, and I will never be anything more than a friend, even if I do consent to travel with you again.~ 
= ~Now I ask you again. Is this really what you want?~ 
++ ~It is.~ + st.5e 
++ ~I don't know if I'm ready for that. Maybe I just need more time to think about commitment.~ + st.3 
++ ~I can't agree to marry you, and I wouldn't ask you to do something you don't want to do for me. Maybe we should just end it, at least for now.~ + st.6 
END 

IF ~~ st.5c 
SAY ~So what do we do?~ 
++ ~Maybe all we need is time. Let's change nothing between us and see how things go.~ + st.3 
++ ~I'm not ready to promise you anything, but I don't want you to do anything you don't want to do. As much as I don't want to, maybe we should end it, at least for now.~ + st.6 
++ ~I don't know.~ + st.5f 
END 

IF ~~ st.5d 
SAY ~I appreciate that. But it does lead to another question.~ 
IF ~~ THEN + st.5c 
END 
 
IF ~~ st.5e 
SAY ~(sigh) So be it.~ 
= ~I'll do as you ask, but not now. The wound is still too fresh.~ 
IF ~~ THEN DO ~SetGlobal("B!GavRA","GLOBAL",4) 
      IncrementGlobal("B!GavLove","GLOBAL",-1) 
      RestParty()~ EXIT 
END 

IF ~~ st.5f 
SAY ~Then let us continue on as we were. There is time enough to decide later.~ 
IF ~~ THEN + st.10 
END 

IF ~~ st.6 
SAY ~Not what I hoped to hear, but I must accept your choice. Should you change your mind...~ 
= ~But no, I will not ask for more than your kindness in rejecting me gently.~ 
IF ~~ THEN DO ~SetGlobal("B!GavRA","GLOBAL",3) 
      SetGlobal("B!GavRomBreak","GLOBAL",1) 
      IncrementGlobal("B!GavLove","GLOBAL",-1)~ + st.10 
END 

IF ~~ st.7 
SAY ~I... I see. Well, I will not stand between you and...~ 
= ~I will not stand in your way.~ 
IF ~~ THEN DO ~SetGlobal("B!GavRA","GLOBAL",3) 
      SetGlobal("B!GavRomBreak","GLOBAL",1) 
      IncrementGlobal("B!GavLove","GLOBAL",-1)~ + st.10 
END 

IF ~~ st.8 
SAY ~Ouch. That hurt.~ 
= ~But you have certainly let me know how you feel about me. I will take it to heart, and find whatever consolation in the totality of your rejection that I may.~ 
IF ~~ THEN DO ~SetGlobal("B!GavRA","GLOBAL",3) 
      SetGlobal("B!GavRomBreak","GLOBAL",2) 
      IncrementGlobal("B!GavLove","GLOBAL",-3)~ + st.10 
END 

IF ~~ st.9 
SAY ~What is that supposed to mean?~ 
++ ~How could you ever imagine that I could want you?~ + st.8 
++ ~You must know that another holds my heart.~ + st.7 
++ ~It was never more than flirtation between us Gavin. I am sorry you thought it was more.~ + st.7 
++ ~I just can't. Not right now. I thought you knew.~ + st.6 
++ ~How can you expect me to make a decision like that now, with the world falling apart around us?~ + st.3 
++ ~It's just that it's so rushed. I need more time to think.~ + st.3 
++ ~How could you ever doubt my love for you? Of course I'll marry you!~ + st.2 
END 

IF ~~ st.10 
SAY ~Well, I'd better let you get some rest. Sleep well, <CHARNAME>.~ 
IF ~~ THEN DO ~RestParty()~ EXIT 
END 

IF ~~ st.11 
SAY ~So sleep well, my love, and dream of sweet things. I will dream of you, and give thanks to Lathander for our love.~ 
IF ~!AreaType([FOREST])~ THEN DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!rest1")~ EXIT 
IF ~AreaType([FOREST])~ THEN DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!rest1")~ EXIT 
END 
END 

/* Redemption talk - 'Maybe it wasn't you' */ 

CHAIN
IF ~Global("B!GavET","GLOBAL",2)~ THEN ~B!GAVJ~ be1.1
~I've been thinking... maybe it wasn't you.~ [bgav121] 
DO ~SetGlobal("B!GavET","GLOBAL",3)~
END
++ ~What?~ EXTERN ~B!GAVJ~ be1.2
+ ~Global("B!GavNoBG1","GLOBAL",1)~ + ~Oh, it was me, all right. Whatever you heard, it's true.~ EXTERN ~B!GAVJ~ be1.3
+ ~!Global("B!GavNoBG1","GLOBAL",1)~ + ~Oh, it was me, all right. You were there, you saw.~ EXTERN ~B!GAVJ~ be1.3
++ ~If it wasn't me, who was it?~ EXTERN ~B!GAVJ~ be1.2
++ ~Of course it wasn't me.~ EXTERN ~B!GAVJ~ be1.2

APPEND ~B!GAVJ~ 

IF ~~ be1.2
SAY ~I was wrong to hold you fully responsible for the wrongness in your soul. I should have been more tolerant, considering the blood you bear.~
++ ~Is that an apology?~ + be1.4
++ ~So that makes you my best friend, does it?~ + be1.5
++ ~The 'wrongness of my soul?' Who are you to say what's right or wrong?~ + be1.6
+ ~!Race(Player1,HUMAN)~ + ~So, I can get away with anything, just because I'm a <PRO_RACE>?~ + be1.7
+ ~Race(Player1,HUMAN)~ + ~I don't follow you. You're human, too.~ + be1.7
+ ~!Global("B!GavNoBG1","GLOBAL",1)~ + ~Too little, too late, Gavin.~ + be1.8
+ ~!Global("B!GavNoBG1","GLOBAL",1)~ + ~You walked away from the hand I offered you once before. I won't give you the chance to do it again.~ + be1.8
++ ~I never really understood it myself, but now that I know what I am, it makes more sense.~ + be1.9
END

IF ~~ be1.3
SAY ~I'm not saying you did not do what you did. I'm just saying that I was wrong in blaming only you for it.~
IF ~~ THEN + be1.2
END

IF ~~ be1.4
SAY ~Yes.~
IF ~~ THEN + be1.10
END

IF ~~ be1.5
SAY ~I don't expect you to trust me. Maybe someday, but not now.~
IF ~~ THEN + be1.10
END

IF ~~ be1.6
SAY ~That's what I'm apologizing for. I was doing just that, by judging you as if you did not...~
IF ~~ THEN + be1.10
END

IF ~~ be1.7
SAY ~I wasn't talking about the blood you got from your mother.~
IF ~~ THEN + be1.10
END

IF ~~ be1.8
SAY ~Yet you accepted me into your company not once, but twice. Won't you at least hear me out?~
++ ~Oh, all right. Say your bit, but no promises.~ + be1.10
++ ~Why not? I'm feeling magnaminous today.~ + be1.10
++ ~You're valuable as a healer and a meat shield. Learn your place.~ DO ~IncrementGlobal("B!GavOffend","GLOBAL",1)~ + be1.11
+ ~Gender(Player1,FEMALE)~ + ~I can't explain why I "accepted your company." You're impossible, and yet... I don't know. There's something about you...~ + be1.12
+ ~Gender(Player1,FEMALE)~ + ~You're as welcome here as any fit, muscular male would be. You stay as long as I find you easy to look at.~ + be1.13
++ ~I might have accepted you, but that doesn't mean I'm going to keep you. Don't push your luck.~ + be1.14
END

IF ~~ be1.9
SAY ~I guess you've got about as much to learn about all this as everybody else.~
IF ~~ THEN + be1.10
END

IF ~~ be1.10
SAY ~You're the <PRO_SONDAUGHTER> of Bhaal. That's a heavy burden to bear, and I can hardly blame you for staggering under the weight of it.~
++ ~You're giving Bhaal credit for more influence in my life than he holds.~ + be1.28
++ ~It's impossible, Gavin. I feel this urge to hurt things, and it never ends.~ DO ~IncrementGlobal("B!GavChange","GLOBAL",1)~ + be1.29
++ ~You're making excuses for me, but the truth is that I like who I am. I have no desire to change.~ + be1.30
+ ~Gender(Player1,FEMALE)~ + ~I'm more interested in seeing how I do under the weight of *you*.~ + be1.13
++ ~So why do you stay, if you find me so fallible?~ + be1.33
END

IF ~~ be1.11
SAY ~I had hoped you would not resemble your father so much.~
IF ~~ THEN + be1.15
END

IF ~~ be1.12
SAY ~<CHARNAME>, I... I had better get to the point.~
IF ~~ THEN + be1.10
END

IF ~~ be1.13
SAY ~(gulp) <CHARNAME>, I'm afriad you might have the wrong idea about me.~
++ ~Please, Gavin, don't make me ill. I have no desire to bed you. You are easy to look at, however, provided I ignore everything from the neck up.~ + be1.16
++ ~There's something about you that draws me in, even though I know what you are.~ + be1.34
++ ~Are you sure? You might enjoy a tumble.~ + be1.31
++ ~Lathander is the god of athletics and virility, no? How do his priests measure up?~ + be1.17
++ ~And making you blush is such a delight. I do believe I can see the sunrise in your face, just now.~ + be1.18
++ ~I do not tolerate poor performers in my company. I am not saying that I will require your services, but if I do, you will provide them or you will go.~ + be1.19
++ ~Ha! As if! You moron, do you really think I would accept you? But now I know: you think with your balls, even as you mouth pious words.~ + be1.20
++ ~Don't trouble yourself. I'm only looking.~ + bf1.16
END

IF ~~ be1.14
SAY ~Point taken.~
IF ~~ THEN EXIT
END

IF ~~ be1.15
SAY ~I can only hope that you...~
= ~No. I'll keep that thought to myself. You probably think me a fool already, without sharing the pleas I offer my god on your behalf.~
IF ~~ THEN EXIT
END

IF ~~ be1.16
SAY ~This conversation is going nowhere. It would be best if we got back to what we were doing.~
IF ~~ THEN EXIT
END

IF ~~ be1.17
SAY ~Ilmater's mercy, <CHARNAME>, if you really are that shallow, you have eyes to see for yourself. It would do you more good, however, to think of the state of your soul.~
++ ~You worry about keeping my body alive and healthy, and leave the worry over my soul to me.~  + be1.32
++ ~My, aren't you moody! One moment, you're contrite over judging me for being a Bhaalspawn, the next, you're berating me for admitting my urges.~ + be1.32
++ ~Can't blame a girl for trying. One of these days, Gavin, I'm going to find out what you keep under your clothing, and you're going to be sorry you held out so long.~ + be1.32
++ ~Gavin, you silly little man, can't you tell when someone is joking?~ + be1.32
++ ~Relax, Gavin. I know how far I can push you.~ + be1.26
END

IF ~~ be1.18
SAY ~Why do I let myself be baited like this? Never mind.~
IF ~~ THEN + be1.32
END

IF ~~ be1.19
SAY ~I... <CHARNAME>, do you know what you're asking? I'm Lathander's Dawnbringer. There are things I can't do.~
++ ~Why? Are you mutilated in some way?~ + be1.21
++ ~Then stop wasting my time and get out of my sight.~  + be1.22
++ ~Lathander doesn't have a problem with one person giving another physical pleasure, does he?~ + be1.23
++ ~You're still the same old Gavin, all right. Never mind. Just try to make yourself useful.~ + be1.24
END

IF ~~ be1.20
SAY ~After everything you have been through, I would not have expected you to do something so childish. Saying suggestive things and then blaming a man for thinking along those suggestions isn't clever, it's juvenile.~
IF ~~ THEN + be1.32
END

IF ~~ be1.21
SAY ~No, but I can't condone slavery, and you're asking me to become one.~ 
++ ~Oh, very well. Have it your own way, then.~ + be1.16 
++ ~Can't you tell when I'm teasing you?~ + be1.16 
++ ~You'll do as you're told or you'll get out of my sight!~ + be1.25 
END

IF ~~ be1.22
SAY ~As you wish. Farewell.~
IF ~~ THEN DO ~SetGlobal("B!GavJoin","GLOBAL",0) 
      SetGlobal("B!GavRA","GLOBAL",3) 
      SetGlobal("B!GavRomBreak","GLOBAL",2) 
      LeaveParty() 
      EscapeArea()~ EXIT // He's gone forever
END

IF ~~ be1.23
SAY ~When one is unwilling, he does.~
++ ~Oh, very well. Have it your own way, then.~ + be1.16 
++ ~Can't you tell when I'm teasing you?~ + be1.16 
++ ~You'll do as you're told or you'll get out of my sight!~ + be1.25 
END

IF ~~ be1.24
SAY ~I'll try, but I'm warning you now that if you push me too far, I will have to leave.~
++ ~Save yourself the trouble. Do it now.~ + be1.22
++ ~I think I know how hard I can push you.~ + be1.26
++ ~If you survive. You are expendable.~ + be1.27
++ ~No, Gavin, don't go. I shouldn't tease you like that, but I just can't seem to stop myself.~ + be1.35
END

IF ~~ be1.25
SAY ~I hoped things would be different this time, but I see that I was wrong. Farewell.~
IF ~~ THEN DO ~SetGlobal("B!GavJoin","GLOBAL",0) 
      SetGlobal("B!GavRA","GLOBAL",3) 
      SetGlobal("B!GavRomBreak","GLOBAL",2) 
      LeaveParty() 
      EscapeArea()~ EXIT // He's gone forever
END

IF ~~ be1.26
SAY ~If not, you'll learn.~
IF ~~ THEN EXIT
END

IF ~~ be1.27
SAY ~No, I'm not. There is a child in a temple who needs me, if you don't. Farewell.~
IF ~~ THEN DO ~SetGlobal("B!GavJoin","GLOBAL",0) 
      SetGlobal("B!GavRA","GLOBAL",3) 
      SetGlobal("B!GavRomBreak","GLOBAL",2) 
      LeaveParty() 
      EscapeArea()~ EXIT // He's gone forever
END

IF ~~ be1.28
SAY ~I hope that I'm not. I would hope that you did not consciously decide to become...~
IF ~~ THEN + be1.32
END

IF ~~ be1.29
SAY ~I know, <CHARNAME>. It must be unbearable. But now that you know, you can resist it. You don't have to be a slave of your blood.~
IF ~~ THEN + be1.33
END

IF ~~ be1.30
SAY ~That's what I was afraid of. <CHARNAME>... no, I've said enough for now. Let's get back to what we were doing.~
IF ~~ THEN EXIT
END

IF ~~ be1.31
SAY ~Quite sure.~
IF ~~ THEN + be1.32
END

IF ~~ be1.32
SAY ~<CHARNAME>, I begin to think we've about exhausted this conversation, but I have to at least try.~
IF ~~ THEN + be1.lastchance  
END

IF ~~ be1.33
SAY ~You might be the child of Bhaal, but you are also a <PRO_MANWOMAN>. I want to help you. I only hope I can.~
IF ~~ THEN + be1.lastchance 
END 

IF ~~ be1.lastchance 
SAY ~ I think you finding me in that temple happened for a reason. Maybe...~ 
IF ~~ THEN + be1.34 
END 

IF ~~ be1.34
SAY ~Maybe your soul is reaching out, striving for freedom from the taint of the blood you bear. Maybe I can help you.~
++ ~And here I thought it was just the lure of a nice pair of shoulders.~ + be1.36
++ ~I don't think it's anything that lofty.~ + be1.36
++ ~It's nothing I can explain.~ DO ~IncrementGlobal("B!GavChange","GLOBAL",1)~ + be1.37
++ ~I've heard stranger things.~ DO ~IncrementGlobal("B!GavChange","GLOBAL",1)~ + be1.37 
++ ~It seems too unlikely to be even possible.~ + be1.37 
++ ~And then you say something like that, and I wonder how I can stand to be near you.~ + be1.36
++ ~Have you ever stopped to listen to the words that come out of your mouth?~ + be1.36
END

IF ~~ be1.35
SAY ~I'll try to bear it, but you have to promise you'll try to fight the evil of the blood you bear.~
++ ~Fight it? Why would I want to do that? It's a blessing, not a curse.~ + be1.36
++ ~I can't make any promises, but I'll try.~ DO ~IncrementGlobal("B!GavChange","GLOBAL",1)~ + be1.38
++ ~I only wish it was that easy.~ DO ~IncrementGlobal("B!GavChange","GLOBAL",1)~ + be1.37
++ ~You have no right to dictate terms to me.~ + be1.32
END

IF ~~ be1.36
SAY ~(sigh) Never mind.~
IF ~~ THEN EXIT 
END

IF ~~ be1.37
SAY ~There is always hope, <CHARNAME>, remember that. I want to help you. I only hope you'll let me.~
IF ~~ THEN EXIT
END

IF ~~ be1.38
SAY ~I could ask no more.~
IF ~~ THEN + be1.33
END 
END 

/* First sex - PC initiated */ 

CHAIN 
IF ~Global("B!GavFirstNight","LOCALS",2)~ THEN ~B!GavJ~ fs2.0 
~(As promised, Gavin comes to you as you prepare for bed. He wears only shirt and leggings, and looks ill at ease, despite his smile. He embraces you awkwardly, visibly shaking with suppressed emotion.)~ [bg_blank] 
DO ~SetGlobal("B!GavFirstNight","LOCALS",3)~ 
== ~B!GavJ~ IF ~Global("B!GavRA","GLOBAL",2)~ THEN ~I have come, my love. Do you still want to... lie with me?~ 
== ~B!GavJ~ IF ~Global("B!GavRA","GLOBAL",4)~ THEN ~I have come. Do you still want to... lie with me?~ 
END 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~I do.~ EXTERN ~B!GavJ~ fs2.1 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~I need more time to decide.~ EXTERN ~B!GavJ~ fs2.2 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~I'm sorry, Gavin, but I'm not ready yet, after all.~ EXTERN ~B!GavJ~ fs2.3 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~I do.~ EXTERN ~B!GavJ~ fs2.4 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~I need more time to decide.~ EXTERN ~B!GavJ~ fs2.5 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~I'm sorry, Gavin, but I'm not ready yet, after all.~ EXTERN ~B!GavJ~ fs2.6 

APPEND ~B!GavJ~ 

IF ~~ fs2.1 
SAY ~Oh, sweet, beloved <CHARNAME>...~ 
= ~(Gavin kisses you tenderly, gently stroking your hair. For many moments, he holds you thus, giving you time to get used to his nearness.)~ 
IF ~~ THEN + fs2.a 
END 

IF ~~ fs2.2 
SAY ~I understand, dear one. I will return to my own bedroll, and give you whatever time you need.~ 
IF ~~ THEN DO ~SetGlobal("B!GavFirstNight","LOCALS",0) 
      RestParty()~ EXIT 
END 

IF ~~ fs2.3 
SAY ~Sweet <CHARNAME>, do not be sorry. This is important to both of us, and I would not have you rushed into making a decision before you are ready. Come to me again when you are, but for now, I will return to my own bedroll and dream of your cheek against my shoulder.~ 
IF ~~ THEN DO ~SetGlobal("B!GavFirstNight","LOCALS",0) 
      RestParty()~ EXIT 
END 

IF ~~ fs2.4 
SAY ~(Gavin kisses you, gently stroking your hair. For many moments, he holds you thus, giving you time to get used to his nearness.)~ 
IF ~~ THEN + fs2.a 
END 

IF ~~ fs2.5 
SAY ~I understand. I will return to my own bedroll.~ 
IF ~~ THEN DO ~SetGlobal("B!GavFirstNight","LOCALS",0) 
      RestParty()~ EXIT 
END 

IF ~~ fs2.6 
SAY ~Do not be sorry. I will return to my own bedroll, and we may speak more of this another time, if you wish.~ 
IF ~~ THEN DO ~SetGlobal("B!GavFirstNight","LOCALS",0) 
      RestParty()~ EXIT 
END 

IF ~~ fs2.a 
SAY ~(After a time, his kiss becomes more passionate, and you feel his pulse quicken.)~ 
++ ~(You respond to the increased urgency of his embrace by kissing him even more ardently, stroking his back and pressing your body against his.)~ + fs2.c 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~(You don't break the embrace, but you resist his advances, pulling away from him.)~ + fs2.d 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~(You don't break the embrace, but you resist his advances, pulling away from him.)~ + fs2.da 
++ ~Gavin, no. It's too soon.~ + fs2.e 
END 


IF ~~ fs2.c 
SAY ~(Emboldened by your passion, his hands move over your body even as he kisses you. The lightness of his clothing and the closeness of your bodies conceal nothing. You feel his chest expand with every ragged breath, you feel his body tremble with excitement... and you feel his desire rising between you.)~ 
++ ~Come, Gavin. Let's go to bed.~ DO ~SetGlobal("B!GavFirstTime","LOCALS",2)~ + fs2.f 
++ ~(You slide your hands under his shirt and continue to stroke him.)~ + fs2.c1 
++ ~(You loosen your clothing and guide his hands to more sensitive parts of your body.)~ + fs2.c2 
++ ~(You do not break the embrace, but you do nothing to encourage him to greater passion.)~ DO ~SetGlobal("B!GavFirstTime","LOCALS",2)~ + fs2.f 
++ ~Gavin, no. I thought I could, but it's too soon.~ + fs2.e 
END 

IF ~~ fs2.c1 
SAY ~(Gavin shivers as your cool fingers slide over his skin. You feel him tense slightly as your fingertips brush a scar beneath his shoulderblade, but he offers no resistance as you explore his torso.)~ 
= ~(Lean muscles slide under your hands as he moves, tenderly stroking your hair, neck, and back.)~ 
IF ~~ THEN DO ~SetGlobal("B!GavFirstTime","LOCALS",2)~ + fs2.f 
END 

IF ~~ fs2.c2 
SAY ~(Gavin's touch is timid, at first. He strokes your neck and collarbone before lowering his fingertips to caress your breast through your clothing.)~ 
IF ~~ THEN DO ~SetGlobal("B!GavFirstTime","LOCALS",2)~ + fs2.f 
END 

IF ~~ fs2.d 
SAY ~Is something wrong, my love?~ 
++ ~This is new to me, Gavin. I've never been with a man before.~ + fs2.d1 
++ ~This is our first time together, Gavin. I want to savor each moment.~ + fs2.d2 
++ ~Nothing is wrong, but your arousal is too great. You will spend yourself too soon, if you keep this up.~ + fs2.d3 
++ ~Your passion is a bit overwhelming.~ + fs2.d4 
++ ~I'm starting to think it might be a mistake to bed each other so soon. Our emotions might lead us to do something rash.~ + fs2.2 
++ ~It doesn't feel right, Gavin. I think we should wait until we're married.~ DO ~SetGlobal("B!GavFirstTime","LOCALS",1)~ + fs2.3 
END 

IF ~~ fs2.da 
SAY ~Is something wrong?~ 
++ ~This is new to me, Gavin. I've never been with a man before.~ + fs2.d1 
++ ~This is our first time together, Gavin. I want to savor each moment.~ + fs2.d2a  
++ ~Nothing is wrong, but your arousal is too great. You will spend yourself too soon, if you keep this up.~ + fs2.d3 
++ ~Your passion is a bit overwhelming.~ + fs2.d4a 
++ ~I'm starting to think it might be a mistake to bed each other. Our emotions might lead us to do something rash.~ + fs2.5 
END 

IF ~~ fs2.d1 
SAY ~Do you want me to stop?~ 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~Maybe you'd better stop.~ DO ~SetGlobal("B!GavFirstTime","LOCALS",3)~ + fs2.3 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~Maybe you'd better stop.~ DO ~SetGlobal("B!GavFirstTime","LOCALS",3)~ + fs2.5 
++ ~No, don't stop, just go slow.~ DO ~SetGlobal("B!GavFirstTime","LOCALS",3)~ + fs2.f 
++ ~No, I want to make love to you. I just needed to breathe.~ DO ~SetGlobal("B!GavFirstTime","LOCALS",3)~ + fs2.f 
END 

IF ~~ fs2.d2 
SAY ~As do I, beloved.~ 
IF ~~ THEN DO ~SetGlobal("B!GavFirstTime","LOCALS",1)~ + fs2.f 
END 

IF ~~ fs2.d2a 
SAY ~As do I.~ 
IF ~~ THEN DO ~SetGlobal("B!GavFirstTime","LOCALS",1)~ + fs2.f 
END 

IF ~~ fs2.d3 
SAY ~Yes, you're right... I will try to go more slowly.~ 
IF ~~ THEN DO ~SetGlobal("B!GavFirstTime","LOCALS",2)~ + fs2.f 
END 

IF ~~ fs2.d4 
SAY ~(Gavin's breath is a shuddering gasp.) I'm having all I can do to keep myself in check, love, though I will if you want. I'm sorry, but I've wanted this moment for so long, it's hard to control myself. Do you want me to stop?~ 
++ ~Maybe you'd better stop.~ + fs2.2 
++ ~No, don't stop, just go slow.~ DO ~SetGlobal("B!GavFirstTime","LOCALS",2)~ + fs2.f 
++ ~No, I want to make love to you. I just needed to breathe.~ DO ~SetGlobal("B!GavFirstTime","LOCALS",2)~ + fs2.f 
END 

IF ~~ fs2.d4a 
SAY ~(Gavin's breath is a shuddering gasp.) I'm having all I can do to keep myself in check, but I will. Do you want me to stop?~ 
++ ~Maybe you'd better stop.~ + fs2.5 
++ ~No, don't stop, just go slow.~ DO ~SetGlobal("B!GavFirstTime","LOCALS",2)~ + fs2.f 
++ ~No, I want to make love to you. I just needed to breathe.~ DO ~SetGlobal("B!GavFirstTime","LOCALS",2)~ + fs2.f 
END 

IF ~~ fs2.d5 
SAY ~Perhaps you are right. I don't know about you, but my emotions are certainly giving me all kinds of impulsive suggestions.~ 
IF ~~ THEN + fs2.2 
END 
END 

CHAIN ~B!GavJ~ fs2.e 
~(With obvious reluctance, Gavin relaxes his embrace, though he does not release you quite yet.)~ 
== ~B!GavJ~ IF ~Global("B!GavRA","GLOBAL",2)~ THEN ~I am sorry, love. I was carried away by the moment, but if you want to wait, I can wait.~ 
== ~B!GavJ~ IF ~Global("B!GavRA","GLOBAL",4)~ THEN ~I am sorry. I was carried away by the moment, but if you want to wait, I'll gladly wait.~ 
END
+ ~Global("B!GavRA","GLOBAL",2)~ + ~It just feels so rushed. A few moments ago, we were just holding hands and stealing kisses. I don't know if I'm ready to discover you that completely quite yet.~ + fs2.e1 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~It just feels so rushed. I don't know if I'm ready to discover you that completely quite yet.~ + fs2.e1  
++ ~This is a side of you I've never seen before, and the intimacy is a little frightening.~ + fs2.d4 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~I think we should wait until we're married.~ DO ~SetGlobal("B!GavFirstTime","LOCALS",1)~ + fs2.2

APPEND ~B!GavJ~ 

IF ~~ fs2.e1 
SAY ~I understand.~ 
IF ~Global("B!GavRA","GLOBAL",2)~ THEN + fs2.2 
IF ~Global("B!GavRA","GLOBAL",4)~ THEN + fs2.5 
END 
END 

CHAIN ~B!GavJ~ fs2.f 
~(Gavin's arms tighten around you. He brings your lips to his again, and kisses you slowly, savoring each moment.)~ 
= ~(If he was trembling before, his body is still now, though his movements suggest an energy barely contained. His touch is gentle, but purposeful... and awkward. He pauses.)~ 
== ~B!GavJ~ IF ~Global("B!GavRA","GLOBAL",2)~ THEN ~<CHARNAME>, my love, I... I want to please you, but I don't know how.~ 
== ~B!GavJ~ IF ~Global("B!GavRA","GLOBAL",4)~ THEN ~<CHARNAME>, I... I want to please you, but I don't know how.~ 
END 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~You said you've done this before.~ EXTERN ~B!GavJ~ fs2.f1 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~You said you've done this before.~ EXTERN ~B!GavJ~ fs2.f1a 
++ ~You're doing fine, Gavin. Your body knows what to do, even if your brain does not.~ EXTERN ~B!GavJ~ fs2.f2 
++ ~We need to start by getting rid of some of this clothing.~ EXTERN ~B!GavJ~ fs2.f3 
++ ~It's alright, Gavin. Let's go back to what we were doing, and I'll guide you through it.~ EXTERN ~B!GavJ~ fs2.f4 
++ ~You need to slow down or you'll never last.~ EXTERN ~B!GavJ~ fs2.f5 
++ ~Maybe this is too much too soon. Our emotions might be out of control.~ EXTERN ~B!GavJ~ fs2.f6 
++ ~Be a man, Gavin. Take what you want.~ EXTERN ~B!GavJ~ fs2.f7 

APPEND ~B!GavJ~ 

IF ~~ fs2.f1 
SAY ~I've got the most beautiful, wonderful woman in all Faerun in my arms, and you have to remind me of that now?~ 
= ~I was young, barely more than a boy... and to say the truth, it was all over almost before it started. The... experience was so brief, and so overwhelming, that I barely realized what had happened.~ 
= ~But I'm a man now... and just as inexperienced as I was then.~ 
IF ~~ THEN + fs2.f8 
END 

IF ~~ fs2.f1a 
SAY ~You have to remind me of that now?~ 
= ~I was young, barely more than a boy... and to say the truth, it was all over almost before it started. The... experience was so brief, and so overwhelming, that I barely realized what had happened.~ 
= ~But I'm a man now... and just as inexperienced as I was then.~ 
IF ~~ THEN + fs2.f8 
END 

IF ~~ fs2.f2 
SAY ~My body is full of suggestions, just now, but I'm not sure how much liberty I should give it.~ 
IF ~~ THEN + fs2.f8 
END 

IF ~~ fs2.f3 
SAY ~(gulp) Yes... er... <CHARNAME>...~ 
IF ~~ THEN + fs2.f8 
END 

IF ~~ fs2.f4 
SAY ~(Gavin eagerly resumes his lovemaking, but after a short while, draws away again, his face full of concern.)~ 
IF ~~ THEN + fs2.f8 
END 

IF ~~ fs2.f5 
SAY ~I probably won't, anyway...~ 
IF ~~ THEN + fs2.f8 
END 

IF ~~ fs2.f6 
SAY ~I don't know if I'll be any calmer, then, but you're probably right. My emotions are certainly making some intense demands of me, at the moment.~ 
IF ~Global("B!GavRA","GLOBAL",2)~ THEN + fs2.3 
IF ~Global("B!GavRA","GLOBAL",4)~ THEN + fs2.5 
END 

IF ~~ fs2.f7 
SAY ~(Gavin groans and resumes his lovemaking in earnest, but after a short while, he pulls away, gasping.)~ 
IF ~~ THEN + fs2.f8 
END 

IF ~~ fs2.f8 
SAY ~Sweet <CHARNAME>, I desperately want to please you... or at least not disappoint you too much, though I fear that I probably will...~ 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~Relax, Gavin. Your heart will guide you... and if you run out of ideas, I'm sure we can come up with something together.~ + fs2.f8a  
+ ~Global("B!GavRA","GLOBAL",4)~ + ~Relax, Gavin. Your body knows what to do... and if you run out of ideas, I'm sure we can come up with something together.~ + fs2.f8aa  
+ ~Global("B!GavRA","GLOBAL",2)~ + ~You don't need to be the best lover Faerun has ever known, love. You just have to mean it.~ + fs2.f8b 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~You don't need to be the best lover Faerun has ever known. You just have to mean it.~ + fs2.f8b 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~Don't be nervous, Gavin. We love each other, and that's all that matters.~ + fs2.f8c 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~Don't be nervous, Gavin. It won't help.~ + fs2.f8ca 
++ ~Less talk, more lovemaking...~ + fs2.finis 
++ ~You need to be confident, or you will fail.~ + fs2.f8d 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~If you do, we can always try again.~ + fs2.f8e 
++ ~If you're so unsure of your abilities, maybe we should wait.~ + fs2.f8f 
END 

IF ~~ fs2.f8a 
SAY ~I hope so, love. Very, very much.~ 
IF ~~ THEN + fs2.finis 
END 

IF ~~ fs2.f8aa 
SAY ~I hope so.~ 
IF ~~ THEN + fs2.finis 
END 

IF ~~ fs2.f8b 
SAY ~That's good, because I can almost promise you I won't be. But I will try, nonetheless.~ 
IF ~~ THEN + fs2.finis 
END 

IF ~~ fs2.f8c 
SAY ~We do... and you're right.~ 
IF ~~ THEN + fs2.finis 
END 

IF ~~ fs2.f8ca 
SAY ~You're right.~ 
IF ~~ THEN + fs2.finis 
END 

IF ~~ fs2.f8d 
SAY ~So, no pressure, eh? Well, I'll do my best.~ 
IF ~~ THEN + fs2.finis 
END 

IF ~~ fs2.f8e 
SAY ~I like the sound of that.~ 
IF ~~ THEN + fs2.finis 
END 

IF ~~ fs2.f8f 
SAY ~I don't know if waiting will help. I'll be no more experienced then. But I will wait, if you want to.~ 
++ ~It's all right, Gavin. I'm sure you'll be fine.~ + fs2.finis 
++ ~Then let's see what we can do about making you more experienced. Starting now.~ + fs2.finis 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~Let's wait. There's no point in rushing now.~ + fs2.2 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~Let's wait. There's no point in rushing now.~ + fs2.5 
END 

IF ~~ fs2.finis 
SAY ~(With a happy sigh, Gavin cradles your face in his hands and brings your lips to his again. He kisses you deeply, slowly.)~ 
= ~(The sounds of the world recede until the only music you hear is your own beating hearts. At last, that too fades to a murmer, and you fall asleep in each others' arms.)~ 
IF ~!AreaType([FOREST])~ THEN DO ~SetGlobal("B!GavSex","GLOBAL",1) 
      IncrementGlobal("B!GavLove","GLOBAL",1) 
      ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!rest1")~ EXIT 
IF ~AreaType([FOREST])~ THEN DO ~SetGlobal("B!GavSex","GLOBAL",1) 
      IncrementGlobal("B!GavLove","GLOBAL",1) 
      ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!rest1")~ EXIT 
END  
END 
