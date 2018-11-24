function hailed(NPC, Spawn)
	local conversation = CreateConversation()

  if not HasQuest(Spawn, 185) then
    AddConversationOption(conversation, "You were expecting me? Who are you?", "part1_intro")
	  AddConversationOption(conversation, "How do I leave the island?", "leave")
	  AddConversationOption(conversation, "I should be going.")
	  StartConversation(conversation, NPC, Spawn, "Ah, there you are, " ... GetName(Spawn) ... ". I have been expecting you. There is much work ahead of us in establishing Freeport's dominance over this island. The Overlord's troops have secured the outpost, but there is a growing nuisance on the other side of the island that must be addressed. That is where you come in.")
  else
    AddConversationOption(conversation, "I'll come back")
	  StartConversation(conversation, NPC, Spawn, "Need to wait for stew to be done, no firsties!  Many Militia to feed, your mouth no bigger than the rest.")
  end
end
