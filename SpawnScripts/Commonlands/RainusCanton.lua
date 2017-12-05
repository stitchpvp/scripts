QUEST_1_FROM_RAINUS = nil
QUEST_2_FROM_RAINUS = nil
QUEST_3_FROM_RAINUS = nil

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

  if HasQuest(Spawn, QUEST_1_FROM_RAINUS) then
		AddConversationOption(conversation, "I have, here are the root samples.", "Option4")
		StartConversation(conversation, NPC, Spawn, "Have you done as I asked?")
	elseif HasQuest(Spawn, QUEST_2_FROM_RAINUS) then
		AddConversationOption(conversation, "I did. Here you go.", "Option5")
		StartConversation(conversation, NPC, Spawn, "Did you slay the orcs and get the orders?")
  elseif HasQuest(Spawn, QUEST_3_FROM_RAINUS) then
		AddConversationOption(conversation, "I'll return when it's done.")
		AddConversationOption(conversation, "Taken care of.", "Option6")
		StartConversation(conversation, NPC, Spawn, "The orcs?")
	else
		AddConversationOption(conversation, GetName(Spawn) .. ", my loyalties remain private.", "Option1")
		AddConversationOption(conversation, GetName(Spawn) .. ", bound in service to none.", "Option2")
		AddConversationOption(conversation, GetName(Spawn) .. ", proudly enacting the will of the Overlord.", "Option3")
		StartConversation(conversation, NPC, Spawn, "Rainus Canton, a once wandering sword now bound in service to the Overlord. And yourself?")
	end
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "My business is my own.", "Option7")
	AddConversationOption(conversation, "No, I am not.", "Option8")
	AddConversationOption(conversation, "I am.", "Option9")
	StartConversation(conversation, NPC, Spawn, GetName(Spawn) .. ", indeed. Your name has graced the lips of many I have had the fortune--or misfortune--to listen to. It is a, ehm--a pleasure to meet you. Are you out here in the service of the Overlord as well?")
end

function Option7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	StartConversation(conversation, NPC, Spawn, "Well, that is why I am here, anyway. If you would care to help, then you may join me in earning his favor.")
end

function Option8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	StartConversation(conversation, NPC, Spawn, "Well, that is why I am here, anyway. If you would care to help, then you may join me in earning his favor.")
end

function Option9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "How?", "Option10")
	StartConversation(conversation, NPC, Spawn, "Splendid. Perhaps you would care to join me in earning his favor.")
end

function Option10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "And what are you doing?", "Option11")
	StartConversation(conversation, NPC, Spawn, "Captain Feralis has been tasked with re-confirming the orc threat to Freeport. No, that doesn't mean we fear they could ever bring the city down, but even a gnat can annoy and pester. Feralis has asked me to help him, and I have agreed.")
end

function Option11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Reliance on a root?", "Option12")
	StartConversation(conversation, NPC, Spawn, "Harassing the Bloodskulls, of course! And in doing so learning of their strengths and weaknesses. I've found them typical, so far. But one thing does stand out, their reliance on a thick root that grows around here.")
end

function Option12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What can I do?", "Option13")
	StartConversation(conversation, NPC, Spawn, "Bloodskull Frenzy Root. The Bloodskull shamans provide their orcs with a solution that combines with the root to create an elixir that sends the orcs into a rage once they're in combat. All the tests we've run on the weed have so far turned up nothing and we've run out of samples. Care to lend a hand?")
end

function Option13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "All right.", "Option14")
	StartConversation(conversation, NPC, Spawn, "Head west of here. Once you find the orcs, pay your respects to the Overlord: kill some of the Bloodskull warriors and priests. However, and this is the important part, I would also like some samples of the Frenzy Root. The shaman mixture we have, don't worry about that, but bring me at least five root samples.")
end

function Option14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Ok.", "Option15")
	StartConversation(conversation, NPC, Spawn, "Return to me once this is done, I'll have more work for you.")
end

function Option15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Ok.")
	StartConversation(conversation, NPC, Spawn, "Return to me once this is done, I'll have more work for you.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "My business is my own.", "Option16")
	AddConversationOption(conversation, "I am.", "Option17")
	StartConversation(conversation, NPC, Spawn, GetName(Spawn) .. ", indeed. Your name has graced the lips of many I have had the fortune--or misfortune--to listen to. It is a, ehm--a pleasure to meet you. Are you out here in the service of the Overlord as well?")
end

function Option16(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	StartConversation(conversation, NPC, Spawn, "Well, that is why I am here, anyway. If you would care to help, then you may join me in earning his favor.")
end

function Option17(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	StartConversation(conversation, NPC, Spawn, "Splendid. Perhaps you would care to join me in earning his favor.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "My business is my own.", "Option18")
	AddConversationOption(conversation, "No, I am not.", "Option19")
	AddConversationOption(conversation, "I am.", "Option20")
	StartConversation(conversation, NPC, Spawn, GetName(Spawn) .. ", indeed. Your name has graced the lips of many I have had the fortune--or misfortune--to listen to. It is a, ehm--a pleasure to meet you. Are you out here in the service of the Overlord as well?")
end

function Option18(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	StartConversation(conversation, NPC, Spawn, "Well, that is why I am here, anyway. If you would care to help, then you may join me in earning his favor.")
end

function Option19(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	StartConversation(conversation, NPC, Spawn, "Well, that is why I am here, anyway. If you would care to help, then you may join me in earning his favor.")
end

function Option20(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "How?", "Option21")
	AddConversationOption(conversation, "Not today.")
	StartConversation(conversation, NPC, Spawn, "Splendid. Perhaps you would care to join me in earning his favor.")
end

function Option21(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "And what are you doing?", "Option22")
	StartConversation(conversation, NPC, Spawn, "Captain Feralis has been tasked with re-confirming the orc threat to Freeport. No, that doesn't mean we fear they could ever bring the city down, but even a gnat can annoy and pester. Feralis has asked me to help him, and I have agreed.")
end

function Option22(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Reliance on a root?", "Option23")
	StartConversation(conversation, NPC, Spawn, "Harassing the Bloodskulls, of course! And in doing so learning of their strengths and weaknesses. I've found them typical, so far. But one thing does stand out, their reliance on a thick root that grows around here.")
end

function Option23(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What can I do?", "Option24")
	StartConversation(conversation, NPC, Spawn, "Bloodskull Frenzy Root. The Bloodskull shamans provide their orcs with a solution that combines with the root to create an elixir that sends the orcs into a rage once they're in combat. All the tests we've run on the weed have so far turned up nothing and we've run out of samples. Care to lend a hand?")
end

function Option24(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "All right.")
	StartConversation(conversation, NPC, Spawn, "Head west of here. Once you find the orcs, pay your respects to the Overlord: kill some of the Bloodskull warriors and priests. However, and this is the important part, I would also like some samples of the Frenzy Root. The shaman mixture we have, don't worry about that, but bring me at least five root samples.")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "You mentioned having more work for me.", "Option25")
	StartConversation(conversation, NPC, Spawn, "Good work, " .. GetName(Spawn) .. ". I'll get these to our alchemist for study.")
end

function Option25(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "All right.", "Option26")
	StartConversation(conversation, NPC, Spawn, "That's right. I believe the orcs in this region are acting without new orders, they seem to be somewhat stagnant, or at the very least slow. They either have an inept leader or an absent one. I'd like you to head to the ruined towers west of here. There are some Bloodskull tower guards, kill them and search the corpses for the standing orders for these Bloodskull orcs. I'd like to see what they're working toward, if anything.")
end

function Option26(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Thanks.")
	StartConversation(conversation, NPC, Spawn, "While you do that maybe we can figure out how better to unlock the power of this root. Good luck!")
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What do the orders say?", "Option27")
	StartConversation(conversation, NPC, Spawn, "Wonderful. Unfortunately we still don't have any word on the root.")
end

function Option27(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "...", "Option28")
	StartConversation(conversation, NPC, Spawn, "Give me a moment, the orcs aren't known for their grammar.")
end

function Option28(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What for?", "Option29")
	StartConversation(conversation, NPC, Spawn, "It looks like these are orders to build up a \"cha nu durk.\" Which is--I think--the minimum size of a orc fighting unit.")
end

function Option29(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What?", "Option30")
	StartConversation(conversation, NPC, Spawn, "Carnage, no doubt. Orcs always wear their hearts upon their sleeves. The only thing a force that small would be useful for is routing civilians... Maybe a hit and run force for the Crossroads... ah hah!")
end

function Option30(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "A siege tower?", "Option31")
	StartConversation(conversation, NPC, Spawn, "I read the orcs as books. They've two camps south-west of the Crossroads, just south of the kerran and ratonga villages. The orcs of these two camps will likely make up the cha nu durk... Kill the orcs and destroy their supplies. If they have a siege tower, destroy it as well.")
end

function Option31(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Hah-hah, good one!")
	StartConversation(conversation, NPC, Spawn, "It's just a theory, but if they harass the kerrans and ratongans enough it may attract some militia attention. If that is their goal, perhaps they're looking to attack the Crossroads. If that isn't their plan, I am near certain they are going after the villagers, so put a stop to them regardless. We can't have the orcs killing civilians, who would we tax otherwise, eh?")
end

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What did you discover?", "Option32")
	StartConversation(conversation, NPC, Spawn, "Wonderful job, " .. GetName(Spawn) .. "! The orcs will be feeling this for a while. In theory we could harry them endlessly if their leader never returned. That would make an interesting study to return home with. Speaking of that, I got word back on the orc roots.")
end

function Option32(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Perfect?", "Option33")
	StartConversation(conversation, NPC, Spawn, "That the orcs are more stupid than we thought. The elixir they create is triggered whenever the orc's adrenaline gets high enough. When this happens it actually eats away at the orc's brain! This damages the orc permanently. This is, of course, perfect.")
end

function Option33(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I can do that.", "Option34")
	StartConversation(conversation, NPC, Spawn, "If it's good enough for one clan of orcs why not others? I'd like you to deliver some of these treated roots to Captain Feralis at the Crossroads for me.")
end

function Option34(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I know it was.")
  AddConversationOption(conversation, "Thanks.")
	StartConversation(conversation, NPC, Spawn, "Good, good. He may have work for you once you get there. Once again, great work out there!")
end
