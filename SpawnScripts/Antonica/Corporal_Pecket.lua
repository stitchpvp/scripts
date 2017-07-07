function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I shall be fine. Thank you for the warning.")
	StartConversation(conversation, NPC, Spawn, "Hail, adventurer. I must warn you that Coldwind Point is not the safest place. Most of the garrison is on the march and the gnolls have been sighted nearby. I cannot guarantee your safety.")
end
