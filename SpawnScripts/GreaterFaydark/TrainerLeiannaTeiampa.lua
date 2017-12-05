--[[
	Script Name	: SpawnScripts/GreaterFaydark/TrainerLeiannaTeiampa.lua
	Script Purpose	: Trainer Leianna Teiampa
	Script Author	: Unsafemodder (a.k.a Pokchop1)
	Script Date	: 2013.010.7
	Script Notes	:
--]]

function spawn(NPC)
end

function respawn(NPC)
SpawnMob(NPC)
end

function hailed(NPC, Spawn)
    start(NPC, Spawn)
end

function start(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What can cause my death", "dlg_1_1")
	StartConversation(conversation, NPC, Spawn, "Even the bravest defender of Queen Amree will meet an untimely end on occasion. Let me teach you the consequences of death and how you can recover properly.")
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "How will I know when I'm going to die?", "dlg_1_2")
	StartConversation(conversation, NPC, Spawn, "Death can come in many ways: being bested on the field of battle, falling from great heights, drowning in water, falling into lava, standing too close to an exploding chest, and so on. It's a dangerous world out there.")
end

function dlg_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Why green?", "dlg_1_3")
	StartConversation(conversation, NPC, Spawn, "Just keep an eye on your health bar, the green line located beneath your name in the upper left of your screen. At least...you hope it's green.")
end

function dlg_1_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What happens then?", "dlg_1_4")
	AddConversationOption(conversation, "I need to finish this conversation later.")
	StartConversation(conversation, NPC, Spawn, "Green means you're healthy. As your health diminishes, the bar turns yellow, then orange, and finally red. If the bar is empty, you die. You pay the debt, which cancels all others, if you get my meaning.")
end

function dlg_1_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "So death is not the end?", "dlg_1_5")
	StartConversation(conversation, NPC, Spawn, "Your spirit lays trapped in your fallen body, unable to move. At this point, you have a choice: wait for a nearby ally to revive you, or choose a location from the window in the center of your screen at which to reappear. In some cases you'll have a single choice, in others multiple choices.")
end

function dlg_1_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What are the consequences?", "dlg_1_6")
	StartConversation(conversation, NPC, Spawn, "Fortunately for all of us, death in Norrath is a temporary thing. If another adventurer revives you, you reappear at the spot of your death. If you choose a location to revive, you will appear at that spot. There are consequences to death, however.")
end

function dlg_1_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What is experience debt?", "dlg_1_7")
	AddConversationOption(conversation, "I think I've learned enough for now.")
	StartConversation(conversation, NPC, Spawn, "There are three results of death. First, you incur some experience debt which can be paid off by earning more XP (experience points). Second, you suffer a revive sickness that lowers your abilities for a shot time, which leaves you temporarily vulnerable and less effective. Finally, all your equipped items take damage that will eventually have to be repaired.")
end

function dlg_1_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What is revive sickness like?", "dlg_1_8")
	StartConversation(conversation, NPC, Spawn, "Experience debt is indicated by a red line on your XP bar. As you earn experience going forward, part of your XP will go toward paying off your debt while the rest will continue to advance you toward your next level. Mousing over your XP bar also tells how much debt you have.")
end

function dlg_1_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What are the results of item damage?", "dlg_1_9")
	StartConversation(conversation, NPC, Spawn, "You'll see an icon for revive sickness in your spell effects window. Mousing over the icon will tell you how long it will remain. The type of sickness you have depends on how you were revived, but no matter what there will be a negative effect. Don't worry, it passes soon enough.")
end

function dlg_1_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What can I do about item damage?", "dlg_1_10")
	StartConversation(conversation, NPC, Spawn, "Your equipped items usually take about 10% wear with each death. When they are down to zero durability, you no longer receive any benefit from them. Don't let your equipment ever get into such poor condition, " .. GetName(Spawn))
end

function dlg_1_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Thank you for your advice.")
	StartConversation(conversation, NPC, Spawn, "You will need to see a mender, someone who is able to repair your items back to 100% durability. Speaker to Trainer Kaali to learn more about repairing your gear. Should your equipment take damage, Mender Kaarlo at Gearheart's Forge in Kelethin can repair things for you.")
end
