local GetheHuggs = 2780039

function spawn(NPC)
	MovementLoopAddLocation(NPC, 5.65, -6.50, 208.26, 2, 10, "Gather")
	MovementLoopAddLocation(NPC, 0.71, -5.83, 198.18, 2, 10, "Gather")
	MovementLoopAddLocation(NPC, 10.66, -6.90, 200.55, 2, 10, "Gather")
	MovementLoopAddLocation(NPC, 18.65, -6.87, 194.36, 2, 10, "Gather")
	MovementLoopAddLocation(NPC, 26.80, -6.86, 187.05, 2, 10, "Gather")
	MovementLoopAddLocation(NPC, 31.08, -6.24, 197.45, 2, 10, "Gather")
	MovementLoopAddLocation(NPC, 9.11, -6.80, 206.29, 2, 10, "Gather")

	MovementLoopAddLocation(NPC, -6.18, -4.96, 218.46, 2, 0)
	MovementLoopAddLocation(NPC, -5.91, -4.96, 218.24, 2, 30)
end

function hailed(NPC, Spawn)
	conversation = CreateConversation()

  PlayAnimation(NPC, 11682, Spawn)

  if HasCollectionsToHandIn(Spawn) then
    AddConversationOption(conversation, "I have a collection for you.", "dlg_1_2")
  end
	  AddConversationOption(conversation, "I don't have any at the moment.", "dlg_1_1")
	  StartConversation(conversation, NPC, Spawn, "Hello there!  If you have any collections that you've completed, I can take them off your hands and reward you for your time.  I'm just crazy for collections!")
end

function dlg_1_2(NPC, Spawn)
	conversation = CreateConversation()

  HandInCollections(Spawn)

	AddConversationOption(conversation, "Okay, bye!")
	StartConversation(conversation, NPC, Spawn, "This is a magnificent find! Here, take this for all your hard work.")
end

function Gather(NPC)
	GatherSpawn = GetSpawn(NPC, GetheHuggs)
	SpawnSet(GatherSpawn, "visual_state", "2809")
	AddTimer(NPC, 5000, "stop_gathering")
end

function stop_gathering(NPC)
	GatherSpawn = GetSpawn(NPC, GetheHuggs)
	SpawnSet(GatherSpawn, "visual_state", "0")
end
