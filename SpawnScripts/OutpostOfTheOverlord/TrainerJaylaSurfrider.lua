function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What can cause my death? ", "Option1")
  AddConversationOption(conversation, "I prefer to talk about this another time.")
	StartConversation(conversation, NPC, Spawn, "Even the mightiest hero of the Overlord will meet an untimely end on occasion. Let me teach you the consequences of death and how you can recover properly.")
  PlayAnimation(NPC, 11976, Spawn)
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "How will I know when I'm going to die?", "Option2")
	StartConversation(conversation, NPC, Spawn, "Death can come in many ways: being bested on the field of battle, falling from great heights, drowning in water, falling into lava, standing too close to an exploding chest, and so on. It's a dangerous world out there, Rixan.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Why green?", "Option3")
	StartConversation(conversation, NPC, Spawn, "Just keep an eye on your health bar, the green line located beneath your name in the upper left of your screen. At least...you hope it's green.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What happens then?", "Option4")
  AddConversationOption(conversation, "You're a morbid person. I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "Green means you're healthy. As your health diminishes, the bar turns yellow, then orange, and finally red. If the bar is empty, you die. You pay the debt which cancels all others, if you get my meaning.")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "So death is not the end?", "Option5")
	StartConversation(conversation, NPC, Spawn, "Your spirit lays trapped in your fallen body, unable to move. At this point, you have a choice: wait for a nearby ally to revive you, or choose a location from the window in the center of your screen at which to reappear. In some cases you'll have a single choice, in others multiple choices.")
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What are the consequences?", "Option6")
	StartConversation(conversation, NPC, Spawn, "Fortunately for all of us, death in Norrath is a temporary thing. If another adventurer revives you, you reappear at the spot of your death. If you choose a location to revive, you will appear at that spot. There are consequences to death, however.")
end

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What is experience debt?", "Option7")
  AddConversationOption(conversation, "I think I've learned enough for now. Cheer up!")
	StartConversation(conversation, NPC, Spawn, "There are three results of death. First, you incur some experience debt which can be paid off by earning more XP. Second, you suffer a revive sickness that lowers your abilities for a short time, which leaves you temporarily vulnerable and less effective. Finally, all your equipped items take damage that will eventually have to be repaired.")
end

function Option7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What is revive sickness like?", "Option8")
	StartConversation(conversation, NPC, Spawn, "Experience debt is indicated by a red line on your XP bar. As you earn experience going forward, part of your XP will go toward paying off your debt while the rest will continue to advance you toward your next level. Mousing over your XP bar also tells how much debt you have.")
end

function Option8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What are the results of item damage?", "Option9")
	StartConversation(conversation, NPC, Spawn, "You'll see an icon for revive sickness in your spell effects window. Mousing over the icon will tell you how long it will remain. The type of sickness you have depends on how you were revived, but no matter what there will be a negative effect. Don't worry, it passes soon enough.")
end

function Option9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What can I do about item damage?", "Option10")
	StartConversation(conversation, NPC, Spawn, "Your equipped items usually take about 10% wear with each death. When they are down to zero durability, you no longer receive any benefit from them. Don't let your equipment ever get into such poor condition, Rixan!")
end

function Option10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Thank you for your enlightening yet depressing advice.")
	StartConversation(conversation, NPC, Spawn, "You will need to see a mender, someone who is able to repair your items back to 100% durability. Speak to Trainer Vissa Sathliss to learn more about repairing your gear. Should your equipment take damage here at the outpost, Mender Greshar at the forge can make repairs for you.")
end
