function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What disease have you contracted?", "Option1")
	AddConversationOption(conversation, "Thanks for the warning.")
	StartConversation(conversation, NPC, Spawn, "Please.  Don't come near me.  I'm very sick right now, and I don't want to harm anyone else.  Let me just pass.  In peace.")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What was this other threat?", "Option2")
	AddConversationOption(conversation, "What were you originally seeking?", "Option3")
	AddConversationOption(conversation, "I don't have time for the feverish ravings of the mortally ill. Begone, leper.")
	StartConversation(conversation, NPC, Spawn, "There ... maybe I can talk for a few minutes without coughing up a lung.  I don't know what I have, but I know where I got it.  The irony is that I was looking for information about the source of one threat, and wound up learning more about a completely different, yet just as deadly, menace.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "So what you're saying is that he was making zombies?", "Option4")
	StartConversation(conversation, NPC, Spawn, "While I was pursuing my original assignment, I came across an old manuscript that I traced back to being penned by Zarvonn, the Mad Mage.  It took me a great while to translate it, but it seems he was researching how to reanimate dead bodies using the flesh of others.")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What do you mean by first hand experience?", "Option5")
	StartConversation(conversation, NPC, Spawn, "I'm not too sure about that anymore.  I think he was trying to make something different, but wound up using Necromancy rather than whatever other force he was using to create his original versions.  In his research, he was using specimens that already existed, but weren't undead.  I can attest to that from first hand experience.")
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "You mean the Dark Elves allowed someone to build a castle in their forest?", "Option6")
	StartConversation(conversation, NPC, Spawn, "I tracked down where he found his original test subjects, and it led me into the Nektulos Forest.  It seems the ""golems"" he was originally using were coming from a mysterious manor, more a castle, actually.  I wasn't able to find out too much about the origins of the place, but it surely wasn't Teir'Dal in origin.")
end

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Why so?", "Option7")
	StartConversation(conversation, NPC, Spawn, "There's a rather lengthy story to the whole place, but I'm not sure what to believe anymore, considering what I saw in there.  Apparently, the place is called Nektropos Castle, and was originally built by someone named Everling.  This was so long ago that the facts have been lost through time.  Maybe some of the Teir'Dal that live in that dark forest might know more, but I already know more than I want to.")
end

function Option7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	StartConversation(conversation, NPC, Spawn, "I wasn't able to find out if Zarvonn ever moved to Nektropos Castle, but if he did, he'd be dead by now.  That place is crawling with golems, and I'm certain malevolent spirits roam those halls.  I don't know if my sickness came from those golems, the spirits, or even something more ... frightening.  Look, I don't want to talk about this anymore.  If my benefactors want to know more about Zarvonn's tower, they can go speak with the nomads.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What happened to him?", "Option8")
	StartConversation(conversation, NPC, Spawn, "I have been ... commissioned ... to find out what happened to Zarvonn, the Mad Mage.  Several hundred years ago, before Necromancy was widely accepted as a scholarly pursuit, Zarvonn explored the mysteries of the dead.  As a matter of fact, much of his initial research is still being taught at the Academy of Arcane Sciences.")
end

function Option8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Did he ever take his revenge out on Freeport?", "Option9")
	StartConversation(conversation, NPC, Spawn, "He was kicked out of the Academy for his practices and vowed revenge upon all of Freeport.  He ventured out into the Commonlands and continued his research, taking up residence in a tower made from bone.  As time went on, he eventually remodeled the tower into a more contemporary design, one fashioned from old stones he specially selected.")
end

function Option9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "So he wasn't behind the raising of the undead?", "Option10")
	StartConversation(conversation, NPC, Spawn, "Not exactly.  A hundred years ago, undead started appearing in much greater frequency in the Commonlands.  This alarmed the Academy to the point that they convinced the Militia to stop his threat by force.  When they arrived at his tower, he was gone.  The story goes, that when they searched the place, they found evidence proving he had been gone for a number of decades.")
end

function Option10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Who are these benefactors you're referring to and why do they care?", "Option11")
	StartConversation(conversation, NPC, Spawn, "Or so the Academy believed ... they just wrote it off to the undead venturing out from the Kithicor Forest.  There was once a forest to the west of the Commonlands before the Shattering.  Now that a decade has passed since the Shattering ended, my... benefactors... wish to continue their research into the mysterious disappearance of Zarvonn.")
end

function Option11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Oh.  Ummm... perhaps we could just talk about why they care about this Zarvonn guy?", "Option12")
	StartConversation(conversation, NPC, Spawn, "It would be best if I didn't mention them.  The less you know, the safer you are.  I hate them with a seething passion, and if I still had my strength I'd slit every one of their throats ... who am I kidding ... I'm powerless against them. They own me more than any thrall could ever be owned.")
end

function Option12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Have you found any truth to this story?", "Option13")
	StartConversation(conversation, NPC, Spawn, "Yes, back to what I was saying.  They feel that Zarvonn is still around ... somewhere.  According to the information I was given, they think there is truth to his promise, and that he will return.  The recent return of the undead is making them think he's still alive and is about to follow through with his vow.")
end

function Option13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What do the nomads have to do with this tale?", "Option14")
	StartConversation(conversation, NPC, Spawn, "I found an old manuscript of his that detailed his attempts at reanimating dead bodies, which ultimately led me to a dark, dark place.  Unfortunately, it was a false lead.  All I gained from that place was this wasting sickness. But I do believe the nomads may know more.")
end

function Option14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "You mentioned a couple of times that you found something else.  What was that?", "Option15")
	AddConversationOption(conversation, "I'd like to pick up where you left off.  Where can I find these nomads?")
	StartConversation(conversation, NPC, Spawn, "The nomads have been in the Commonlands longer than anyone can remember, at least four hundred years, according to my research.  I found an old scroll that hinted that they may have come from the Thundering Steppes.  Their oral tradition of history through story telling may reveal more.  I have no plans on pursuing this matter anymore, though.  I accept my fate, and don't expect to leave this tower until I've taken my final breath.")
end

function Option15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "So what you're saying is that he was making zombies?", "Option16")
	StartConversation(conversation, NPC, Spawn, "While I was pursuing my original assignment, I came across an old manuscript that I traced back to being penned by Zarvonn, the Mad Mage.  It took me a great while to translate it, but it seems he was researching how to reanimate dead bodies using the flesh of others.")
end

function Option16(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What do you mean by first hand experience?", "Option17")
	StartConversation(conversation, NPC, Spawn, "I'm not too sure about that anymore.  I think he was trying to make something different, but wound up using Necromancy rather than whatever other force he was using to create his original versions.  In his research, he was using specimens that already existed, but weren't undead.  I can attest to that from first hand experience.")
end

function Option17(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "You mean the Dark Elves allowed someone to build a castle in their forest?", "Option18")
	StartConversation(conversation, NPC, Spawn, "I tracked down where he found his original test subjects, and it led me into the Nektulos Forest.  It seems the ""golems"" he was originally using were coming from a mysterious manor, more a castle, actually.  I wasn't able to find out too much about the origins of the place, but it surely wasn't Teir'Dal in origin.")
end

function Option18(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Why so?", "Option19")
	StartConversation(conversation, NPC, Spawn, "There's a rather lengthy story to the whole place, but I'm not sure what to believe anymore, considering what I saw in there.  Apparently, the place is called Nektropos Castle, and was originally built by someone named Everling.  This was so long ago that the facts have been lost through time.  Maybe some of the Teir'Dal that live in that dark forest might know more, but I already know more than I want to.")
end

function Option19(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'm interested in learning more about this Zarvonn you mentioned.", "Option20")
	StartConversation(conversation, NPC, Spawn, "I wasn't able to find out if Zarvonn ever moved to Nektropos Castle, but if he did, he'd be dead by now.  That place is crawling with golems, and I'm certain malevolent spirits roam those halls.  I don't know if my sickness came from those golems, the spirits, or even something more ... frightening.  Look, I don't want to talk about this anymore.  If my benefactors want to know more about Zarvonn's tower, they can go speak with the nomads.")
end

function Option20(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What happened to him?", "Option21")
	StartConversation(conversation, NPC, Spawn, "I have been ... commissioned ... to find out what happened to Zarvonn, the Mad Mage.  Several hundred years ago, before Necromancy was widely accepted as a scholarly pursuit, Zarvonn explored the mysteries of the dead.  As a matter of fact, much of his initial research is still being taught at the Academy of Arcane Sciences.")
end

function Option21(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Did he ever take his revenge out on Freeport?", "Option22")
	StartConversation(conversation, NPC, Spawn, "He was kicked out of the Academy for his practices and vowed revenge upon all of Freeport.  He ventured out into the Commonlands and continued his research, taking up residence in a tower made from bone.  As time went on, he eventually remodeled the tower into a more contemporary design, one fashioned from old stones he specially selected.")
end

function Option22(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "So he wasn't behind the raising of the undead?", "Option23")
	StartConversation(conversation, NPC, Spawn, "Not exactly.  A hundred years ago, undead started appearing in much greater frequency in the Commonlands.  This alarmed the Academy to the point that they convinced the Militia to stop his threat by force.  When they arrived at his tower, he was gone.  The story goes, that when they searched the place, they found evidence proving he had been gone for a number of decades.")
end

function Option23(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Who are these benefactors you're referring to and why do they care?", "Option24")
	StartConversation(conversation, NPC, Spawn, "Or so the Academy believed ... they just wrote it off to the undead venturing out from the Kithicor Forest.  There was once a forest to the west of the Commonlands before the Shattering.  Now that a decade has passed since the Shattering ended, my... benefactors... wish to continue their research into the mysterious disappearance of Zarvonn.")
end

function Option24(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Oh.  Ummm... perhaps we could just talk about why they care about this Zarvonn guy?", "Option25")
	StartConversation(conversation, NPC, Spawn, "It would be best if I didn't mention them.  The less you know, the safer you are.  I hate them with a seething passion, and if I still had my strength I'd slit every one of their throats ... who am I kidding ... I'm powerless against them. They own me more than any thrall could ever be owned.")
end

function Option25(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Have you found any truth to this story?", "Option26")
	StartConversation(conversation, NPC, Spawn, "Yes, back to what I was saying.  They feel that Zarvonn is still around ... somewhere.  According to the information I was given, they think there is truth to his promise, and that he will return.  The recent return of the undead is making them think he's still alive and is about to follow through with his vow.")
end

function Option26(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What do the nomads have to do with this tale?", "Option27")
	StartConversation(conversation, NPC, Spawn, "I found an old manuscript of his that detailed his attempts at reanimating dead bodies, which ultimately led me to a dark, dark place.  Unfortunately, it was a false lead.  All I gained from that place was this wasting sickness. But I do believe the nomads may know more.")
end

function Option27(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "You mentioned a couple of times that you found something else.  What was that?", "Option28")
	StartConversation(conversation, NPC, Spawn, "The nomads have been in the Commonlands longer than anyone can remember, at least four hundred years, according to my research.  I found an old scroll that hinted that they may have come from the Thundering Steppes.  Their oral tradition of history through story telling may reveal more.  I have no plans on pursuing this matter anymore, though.  I accept my fate, and don't expect to leave this tower until I've taken my final breath.")
end

function Option28(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "So what you're saying is that he was making zombies?", "Option29")
	StartConversation(conversation, NPC, Spawn, "While I was pursuing my original assignment, I came across an old manuscript that I traced back to being penned by Zarvonn, the Mad Mage.  It took me a great while to translate it, but it seems he was researching how to reanimate dead bodies using the flesh of others.")
end

function Option29(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What do you mean by first hand experience?", "Option30")
	StartConversation(conversation, NPC, Spawn, "I'm not too sure about that anymore.  I think he was trying to make something different, but wound up using Necromancy rather than whatever other force he was using to create his original versions.  In his research, he was using specimens that already existed, but weren't undead.  I can attest to that from first hand experience.")
end

function Option30(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "You mean the Dark Elves allowed someone to build a castle in their forest?", "Option31")
	StartConversation(conversation, NPC, Spawn, "I tracked down where he found his original test subjects, and it led me into the Nektulos Forest.  It seems the ""golems"" he was originally using were coming from a mysterious manor, more a castle, actually.  I wasn't able to find out too much about the origins of the place, but it surely wasn't Teir'Dal in origin.")
end

function Option31(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Why so?", "Option32")
	StartConversation(conversation, NPC, Spawn, "There's a rather lengthy story to the whole place, but I'm not sure what to believe anymore, considering what I saw in there.  Apparently, the place is called Nektropos Castle, and was originally built by someone named Everling.  This was so long ago that the facts have been lost through time.  Maybe some of the Teir'Dal that live in that dark forest might know more, but I already know more than I want to.")
end

function Option32(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'd like to track down this tower you mentioned.  Where can I find these nomads?", "Option33")
	StartConversation(conversation, NPC, Spawn, "I wasn't able to find out if Zarvonn ever moved to Nektropos Castle, but if he did, he'd be dead by now.  That place is crawling with golems, and I'm certain malevolent spirits roam those halls.  I don't know if my sickness came from those golems, the spirits, or even something more ... frightening.  Look, I don't want to talk about this anymore.  If my benefactors want to know more about Zarvonn's tower, they can go speak with the nomads.")
end

function Option33(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Thank you for the information.")
	StartConversation(conversation, NPC, Spawn, "I don't know where we can find them.They have a tendency of moving around for whatever crazy reason they have in their heads.  The last I heard, they set up camp in the north.  Mind you, there are two different tribes that roam the Commonlands.  The ones I find to be a bit more friendly are led by an old woman by the name of Gierasa.  Now leave me to die in peace.")
end
