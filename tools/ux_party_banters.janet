(use ./lib/dialog)
(load-imports)

(defn build-chains []
  [
   # part: zariel olrun
   (chainm
    [[zariel "Hey Olrun, do you remember that time at the Sorcerous Sundries?"]
     [olrun "Hah, what a time it was.  We had just gotten back from pillaging
 that horde of treasure from the back of the goblin's cave.  Had a shiny utensil
 that we thought was some valuable artifact."]
     [zariel "Yup, sure did - only it wasn't.  Remember what it was?"]
     [olrun "How could I forget!  A noble's special toiletry, long ago stolen by the little
 buggers, and subject to so much wear and tear."]
     [zariel "Yup! And the look on old Halbazzer's face when he took a closer look to appraise it,
 the stuff of legend!"] ])

   # part: zariel olrun
   (chainm
    [[zariel "Yeck!  This is nasty!"]
     [olrun "What's the matter Zariel?"]
     [zariel "I think I stepped in something during our last fight...yep, that's some sort of
 entrail stuck to my boot.  Well, maybe it's an eye - I'm not totally sure."]
     [olrun "That's gonna take some scuffing to clean out!"]
     [zariel "Ain't that the truth."]])

   # part: zariel athar
   (chainm
    [[zariel "Athar, has anyone told you how nice your sword and shield ornaments are?"]
     [athar "I've heard it once or twice - coming from a noble lineage, it shouldn't be a great
 surprise that they were designed with an eye for aesthetics."]
     [zariel "Still, I've gotta say, it's such an appealing color scheme.  Being efficient in
 combat is one thing, but looking good while doing it, that's an entire strategy in of itself."]
     [athar "Thanks Zariel, I think."]])

   # part: zariel athar
   (chainm
    [[zariel "Blah.  Hmph.  *sigh*"]
     [athar "What's wrong Zariel?  Usually you're always so chipper and upbeat."]
     [zariel "I'm just thinking, we've seen so much killing and chaos, after awhile it
 can wear on you.  I mean, I'm not squeamish of it, in fact I quite enjoy it, at times."]
     [athar "Then what's the matter?"]
     [zariel "I think I've just got a case of the blues.  It's been too long since we've
 enjoyed some downtime for awhile."]
     [athar "Zariel, I understand you have your own beliefs, but when I'm feeling down, I turn
 to my faith.  It's never steered me wrong, and serves as a solid backbone."]
     [zariel "Yea, I can't see myself turning to being a devout paladin or cleric, but I appreciate
 the thought Athar."]])

   # part: zariel anari
   (chainm
    [[anari "Zariel, you seem extra cheerful today.  Any particular reason why?"]
     [zariel "Wow, that obvious huh?"]
     [anari "A bit, you've been grinning ear to ear all morning."]
     [zariel "Well, I had an especially amusing dream last night."]
     [anari "Really?  About what?"]
     [zariel "Well, in this dream, I was a fish."]
     [anari "Uh huh..."]
     [zariel "And you were as well.  Well, all of you were."]
     [anari "Right..."]
     [zariel "So anyways, we were going through the ocean, and..."]
     [anari "Hold that thought Zariel, we've gotta get back to the group."]
     ])

   # part: zariel anari
   (chainm
    [[zariel "Anari, what do you think of our place in the world?"]
     [anari "What do you mean?"]
     [zariel "Well, we were appointed and gathered for a quest by The Voice, although we had
 previous history between each other."]
     [zariel "Then we were interrupted and now travel with <CHARNAME>, for what may
 be a much more important endeavor, as the Heart rumors may or may not have been grounded
 in reality."]
     [anari "I'm trying to understand where you're going with this?"]
     [zariel "Do you think this is fate or destiny, or just lucky coincidence?"]
     [anari "I suppose it could go either way.  Are we controlling our own future, or
 are we simply reacting to stimuli?  Are we mindless automatons?  That much, I doubt."]
     [zariel "That wasn't much of an answer at all!"]
     [anari "Zariel, I try to be mindful and reflective, but this level of deep philosophy
 may be a better conversation to have with The Voice."]])

   # part: zariel voice
   (chainm
    [
     [voice "Zariel, how have you been?  Have things been well?"]
     [zariel "Not bad, thanks for checking in Voice.  What about yourself?"]
     [voice "While our situation is always dire, my outlook is not.  I foresee
 success and victory in our future."]
     [zariel "How can you be so certain?  I mean, are you certain?"]
     [voice "Nothing can be certain Zariel, but I do think that we'll be fine."]
     [zariel "Well, that's re-assuring, I guess."]
     ])

   # part: zariel voice
   (chainm
    [
     [zariel "I'm famished! Does anyone have an extra ration?"]
     [voice "I do, a few nuts and berries that I scavenged in our last trek through the forest."]
     [zariel "I said I was famished, not peckish."]
     [voice "Zariel, you'll find that irregardless of your state of malnourishment,
 the rations I've offered should be more than adequate."]
     [zariel "In your opinion."]
     [voice "No, it is more of a fact.  Although I'm sure <CHARNAME> would be happy to
 stop by a tavern on the next opportunity we have to do so."]
     [zariel "I sure hope so!"]
     ])

   # part: athar anari
   (chainm
    [
     [athar "Tell me Anari, what kind of music are you most fond of?"]
     [anari "I prefer any rousing melody with the woodwinds as the primary backing instrument.
 Sometimes when the harmonics are just right, it reminds me of my tree top home as a child."]
     [athar "I should be so lucky to join you in revisiting it one day."]
     [anari "I certainly hope so.  There are few I'd rather have along my side for such an
 endeavor than you Athar."]
     [athar "Thank you Anari, I am honored."]
     [anari "Tell me Athar, what songs inspire you?"]
     [athar "The sound of a strong chorus that you'll oft hear throughout the realm's temples
 brings joy to my ears."]
     [anari "I can understand that, I'm sure it was quite common in your childhood as well?"]
     [athar "Absolutely.  While my family attended quite regularly, I believe it was primarily
 to uphold appearances in our social circle.  However, this is largely responsible for my
 long term faith and sense of justice, the constant exposure."]
     ])

   # part: athar anari
   (chainm
    [
     [anari "Athar, how have you been?  It has been too long since we've had any breaks
 in our adventuring."]
     [athar "Certainly, the life of an adventurer is never dull."]
     [anari "Yes, but it should not be all encompassing either.  When you think of it, we've been
 out in the wild and fighting day and night, for months at a time, nary a break in between.
 Tis not natural."]
     [athar "That's true, but sometimes circumstances dictate our decisions more than what's
 \"fair\".  Were our heroic actions not necessary to ensure the safety of those we care about,
 there would be plenty of time for revelry."]
     [anari "When you state it as so, it's a bit more palatable."]
     ])

   # part: athar olrun
   (chainm
    [
     [olrun "Athar!  Over here!  Have you ever seen a bruise this color before?"]
     [athar "Oh, that does not seem natural at all.  What happened?"]
     [olrun "The other day, when we were crushin' some skulls, I took almost as much as I gave."]
     [athar "Do you require aid?  I can lay my hands upon you if you feel it's necessary?"]
     [olrun "Hah!  I'm not so bruised and battered to be needin' you to kiss my boo-boos yet."]
     [athar "There's no shame in requesting aid when needed Olrun."]
     [olrun "No, nothing shameful, but The Voice has much less calloused hands than you."]
     [athar "Oh, is that so?"]
     [olrun "I prefer their touch to yers - no offense."]
     [athar "None taken friend, none taken."]
     ])

   # part: athar olrun
   (chainm
    [
     [athar "Olrun, I've been meaning to ask you - what Gods are you particularly fond of?"]
     [olrun "I find some interesting tenets among all of them.  Berronar Truesilver,
 Moradin, Sharindlar, ..."]
     [athar "But certainly not an evil one like Abbathor?"]
     [olrun "Hah!  Are you trying to play devil's advocate?  A bit ironic coming from you."]
     [athar "Well..."]
     [olrun "Even an evil one such as Abbathor can have some interesting ideas.  A little greed
 can be good and go a long way towards enriching the lives of oneself and those they care about.
 As long as it doesn't get to be too fanatical."]
     [athar "Being able to see the good in evil is a trait few possess."]
     [olrun "That goes for the good Gods as well.  You've gotta find a good balance in all things.
 Too much food, you'll get fat.  Too much rest, muscles will atrophy.  Too much recreation, your mind
 will rot."]
     [athar "Those are some good points friend.  I try to keep a bit moderate myself."]
     ])

   # part: athar voice
   (chainm
    [
     [voice "So Athar, which oath do you most relate to?"]
     [athar "While I don't staunchly prescribe to a single oath, I most relate to the
 Oath of the Ancients."]
     [voice "That's interesting, it's certainly a less common choice among non-elves."]
     [athar "I won't deny that Anari may have had some influence on my ideas."]
     [voice "Really?  I know you two have long been acquainted, but just how long have you known each other?"]
     [athar "Honestly, as long as I can remember.  When I was a teen, I would go
 about into the forests surrounding the city looking for excitement.  One of those times, I
 encountered Anari, and from there, our friendship bloomed into what it is today."]
     [athar "Back to the original topic - how about yourself Voice?  Granted, you do not
 have a reason to follow a particular oath, but what God do you serve?"]
     [voice "Athar, you know me well enough to know I will not answer that."]
     [athar "It was worth a shot, after all, you initiated the topic."]
     [voice "Indeed I did."]
     ])

   # part: athar voice
   (chainm
    [
     [athar "Voice, what do you aim for in life?"]
     [voice "My duty binds me to assist in keeping the realm safe.  My conviction
 ensures that I remain loyal to my duty.  This is the root of my aim and purpose in life."]
     [athar "But surely you must wish for more?  We've known each other for awhile, but
 many of your traits remain veiled in mystery."]
     [voice "That's part of the fun Athar, the mystery can be a game in and of itself."]
     [voice "However, it's not all duty and conviction.  I find serenity in nature, among
 the forest at night.  At the canyon's edge at dawn, and while I prefer to remain in the
 shadows within the city, that doesn't preclude me from conversing with the common folk,
 I just prefer remaining out of the stoplight."]
     [athar "That's wonderful to hear, the next time we're at the tavern,
 I'll save you a seat in the corner."]
     [voice "Quite consider of you, thank you Athar."]
     ])

   # part: anari voice
   (chainm
    [
     [anari "*yawn*"]
     [voice "Feeling alright Anari?"]
     [anari "I don't think I got enough rest last night.  Someone (motions towards <CHARNAME>) was a
 bit heavy winded while sleeping."]
     [voice "You mean they were snoring?"]
     [anari "I guess that's a more concise way to phrase that."]
     [voice "Indeed."]
     ])

   # part: anari voice
   (chainm
    [
     [voice "Anari?"]
     [anari "Yes Voice?"]
     [voice "Do you hear that?"]
     [anari "Hold a moment..."]
     [anari "Yes, it sounds like a haunting melody as the wind moves through the leaves."]
     [anari "Any reason in particular that you ask?"]
     [voice "I feel it's important to take a pause and enjoy a momentary reprise
 once in awhile.  I'm sure <CHARNAME> would tend to agree."]
     [anari "I don't disagree, however I'm not sure it's always prudent to take one in such
 a sudden manner.  You know, we were in the middle of a task."]
     [voice "Yet we are still ok, despite that sudden break?"]
     [anari "Yes, that's true."]
     [voice "Then we shouldn't worry ourselves, even when something sudden and unexpected
 occurs, would you not agree?"]
     [anari "Yes, I suppose you're correct.  Thanks for sharing those thoughts with me Voice."]
     [voice "Anytime Anari."]
     ])

   # part: anari olrun
   (chainm
    [
     [anari "Olrun, tell me about your hammer."]
     [olrun "Well, for starters, it's blue."]
     [anari "No, I..."]
     [olrun "It's a bit round on the end o'er here, and has a nice shaft to complement it."]
     [anari "You know what I meant!"]
     [olrun "Well, I wish I could tell you it was handed down from some noble lineage.
 It's nothing that melodramatic or full of lore."]
     [anari "No story of acquisition?  Where did you get it?"]
     [olrun "Hah! Where else, from the forge.  Well, I'm being a bit indirect ain't I?"]
     [olrun "I had some rare blue hued metals from melting down a different weapon I had
 found during another dungeon excursion.  Well, you know, it being molten and all, I didn't
 really \"have\" the metals, as much as that they were in a state of flux, being melted down and all."]
     [anari "Ahh, quite a bit of effort did go into the hammer then."]
     [olrun "Oh yea, I don't think I mentioned it was effortless, far from it.  Just nothing
 quite story worthy, but this seemed to make a fine enough exemplum."]
     [anari "Absolutely!"]
     ])

   # part: anari olrun
   (chainm
    [
     [olrun "Anari, I've been meaning to get your thoughts on something."]
     [anari "What is it Olrun?"]
     [olrun "Zariel's birthday is coming soon - trying to think of something to get her."]
     [anari "Hmm..."]
     [olrun "I figured, well, you know - being a lady and all, you might have some insights
 on a nice gift, beyond the sort I usually pass along to her."]
     [anari "You mean, as opposed to battle armaments and garments."]
     [olrun "Exactly."]
     [anari "What about some type of jewelry?  I think they had some amulets at the last
 town we were in."]
     [olrun "Hah! Not a bad idea.  Sometimes thinking through something too much can really
 complicate the matter more than it needs to be."]
     [anari "Exactly - a little impulsivity goes a long way."]
     [olrun "Usually I would be doling out that advice, not being subject to it!"]
     [anari "Likewise, err, you know what I mean."]
     [olrun "Yep!  Thanks for your advice Anari."]
     ])

   # TODO part: olrun voice
   # TODO part: olrun voice

   # part: zariel anari olrun
   (chainm
    [[anari "Zariel, you're looking quite nice today."]
     [zariel "Thanks Anari!  I could say the same about you as well!"]
     [olrun "Oh, no love for my handsome face and chiseled chin?"]
     [anari "Come now Olrun, you know we all think you're the epitome of beauty."]
     [zariel "Truly, my knees are quivering with excitement in the presence of such grace."]
     [anari "In all the realms, never has a more handsome being existed."]
     [olrun "Ok, ok, now you two are laying it on a little thick."]
     [zariel "Olrun the Ostensible, the bastion of beauty, the herald of handsome."]
     [anari "The guardian of gorgeous, the avatar of appeal."]
     [olrun "Alright, alright, I think I hear <CHARNAME> calling for us."]])

   # part: zariel anari athar
   (chain
    [(can-talk :uxzar)
     (bin-party :uxana)
     (bin-party :uxath)]
    :uxbzar "Athar, Anari - could you two quit gabbing the entire time?"
    []
    (== :uxbana "Zariel, show some manners.  If Athar and I are having a conversation
 that you aren't privy to, that's no reason to have a fit.")
    (== :uxbath "Cut her a little slack, you know she's not a fan of gossip.")
    (== :uxbzar "I don't need you to defend me Athar, I'll have you know I'm
 quite self sufficient.")
    (== :uxbana "Yes, yes, we know.  Shall we get back to the party now?"))

   # part: athar anari
   (chain
    [(can-talk :uxath)
     (bin-party :uxana)]
    :uxbath "So Anari, what do you think of our mission so far?"
    []
    (== :uxbana "I think it's going well. We've made some progress and
 I'm confident that we'll be able to complete our task."))

   # part: olrun zariel
   (chain
    [(can-talk :uxolr)
     (bin-party :uxzar)]
    :uxbolr "Zariel, what are your thoughts on our current situation?"
    []
    (== :uxbzar "From what I've seen and heard, I believe that we have a
  good chance of succeeding. I'm sure we can handle whatever obstacles come our way."))

   # part: athar voice
   (chain
    [(can-talk :uxvoi)
     (bin-party :uxath)]
    :uxbvoi "Athar, tell me about your family."
    []
    (== :uxbath "My family is part of the noble class in Baldur's Gate.
 We have long been involved in the political happenings of late.  While I
 tend to foray into adventure more often than my relatives, we all contribute
 in our own ways.")
    (== :uxbvoi "That was enlightening, I appreciate your being direct Athar."))

   # part: athar anari
   (chain
    [(can-talk :uxath)
     (bin-party :uxana)]
    :uxbath "So Anari, where are you from, originally?"
    []
    (== :uxbana "I hail from the forests of Baldur's Gate. I am a wild elf born
 and raised in the wilds, and I have been protecting my home for many years.")
    (== :uxbath "That's admirable. Can you tell me more about your family?")
    (== :uxbana "My family is a long line of rangers and hunters, and I am proud to
 continue their legacy. I also strive to keep our forests safe from evil forces that
 threaten to do them harm.")
    (== :uxbath "That's very noble of you. So what is it you like most about being a ranger?")
    (== :uxbana "I enjoy the freedom of being a ranger.  That, and exploring the wilds of
 Baldur's Gate.")
    (== :uxbath "So <CHARNAME>, what do you think of our acting?  Was it
 a good display of camaraderie?")
    (== :uxbana "Don't give <HIMHER> too much razzing Athar!")
    (== :uxbath "Haha, yes, sorry.  Having a bit of fun.  As you know <CHARNAME>,
 Anari and I, we've long been acquaintances."))

   # part: anari zariel
   (chain
    [(can-talk :uxana)
     (bin-party :uxzar)]
    :uxbana "So Zariel, what do you think of our group?"
    []
    (== :uxbzar "I'm feeling quite positive about it. I think it's great
 that we have such a diverse mix of people, and I'm glad that we
 are all looking out for each other.")
    (== :uxbana "I agree. I'm sure the two of us can offer this group a unique
 perspective, being the only two females with past history together here.")
    (== :uxbzar "Absolutely. We may be outnumbered, but I'm sure we can both hold our
 own and make our mark on this quest!")
    )

   # part: athar olrun
   (chain
    [(can-talk :uxath)
     (bin-party :uxolr)]
    :uxbath "So Olrun, what brings you to this quest?"
    []
    (== :uxbolr "I'm here because I believe in the power of justice.
 As a proud Dwarven Barbarian, I am determined to protect our world from any
 forces of evil that may threaten it.")
    (== :uxbath "I respect your dedication. As warriors, I think it's important
 that we rely on each other in times of danger.")
    (== :uxbolr "Absolutely. And as men, I believe it is our duty to protect the
 innocent and uphold justice. I am glad to stand beside you in this quest.")
    )

   # part: athar anari olrun voice zariel
   (chain
    [(can-talk :uxvoi)
     (bin-party :uxath)
     (bin-party :uxana)
     (bin-party :uxolr)
     (bin-party :uxzar)
     ]
    :uxbvoi "Alright everyone, I think it's time we discussed our plan.
 What do you all think will be our best course of action?"
    []
    (== :uxbath "We need to move quickly and with caution.
 Our goal is to find the Heart of Baldur’s Gate and make sure it
 doesn’t fall into the wrong hands.")
    (== :uxbana "We must also remember to be vigilant and keep an eye out for any
 possible threats or enemies.")
    (== :uxbolr "We should not underestimate the power of our enemies.
 We must rely on each other's strength if we are to succeed in this mission.")
    (== :uxbzar "We could also make use of our combined knowledge and skills.
 By working together,")
    )

   # part: zariel anari olrun
   (chainm
    {:cond [(ng "ux_test")] :code [(sg "ux_test")]}
    [[zariel "This is a test of the simple dialogue chain." (sg "ux_test")]
     [anari "You know we're still testing right?"]
     [olrun "Yes, truly, there is a lot of testing going on."]])

   ]
  )

(defn main [& args]
  (string/join (build-chains) "\n"))
