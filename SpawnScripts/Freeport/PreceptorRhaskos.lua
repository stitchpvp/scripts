function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "You're speaking of the Red Hoods, I assume?", "Option1")
	StartConversation(conversation, NPC, Spawn, "Bloody rangers! Their kind 'ave no business 'ere.")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "They work for the Overlord?", "Option2")
	StartConversation(conversation, NPC, Spawn, "Bloody right I am! I 'ear they 'ave eyes 'an ears everywhere! Gods 'elp ya should they 'ear ya speak an ill word 'bout the Overlord.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Continue.", "Option3")
	StartConversation(conversation, NPC, Spawn, "Aye, though not directly. Rumor 'as it that their leader, some bloke named Jackal, came 'ere lookin' to settle a score wit one o' dem nasty Bloodskull orcs. Seems he an 'is mates were causin' a bit of a ruckus out there in the Commonlands, attackin' travelers, orcish or otherwise.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What happened to Jackal?", "Option4")
	StartConversation(conversation, NPC, Spawn, "Well, with all the madness 'appening 'round 'ere after the Overlord's disappearance, the Militia and the Lucanic Knights 'ad their hands full. The Commonlands quickly became a very dangerous place.  Once ol' one-eye returned, however, he wasted little time before sendin' out 'is Knights to apprehend the criminals. ")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Continue.", "Option5")
	StartConversation(conversation, NPC, Spawn, "The Lucanic Knights did eventually track down Jackal and 'is merry band o' thieves. I don' know what 'appened when they met, but it's obvious the Overlord 'as come to some sorta agreement wit these Red Hoods. Now the same bloody lot who once robbed us is walkin' about plain as day through our city.")
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Thanks for the information.", "Option6")
	StartConversation(conversation, NPC, Spawn, "I even seen some 'o them train'n Militia members to become archers. Bloody wonderful that is! Only in Freeport can you be shot in the bloody 'ead by some greenhorn ranger as you walk to the bloody farmer's market.")
end

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Right.")
	StartConversation(conversation, NPC, Spawn, "Aye. Life in Freeport is a fickle existence. Wear a bloody 'elmet.")
end
