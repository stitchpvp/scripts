local timerslow = math.random(5000, 8000)

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Good luck with that!")
	StartConversation(conversation, NPC, Spawn, "How did you make it past the servants?!  Please don't tell me that I'll have to raise them all again.")
  PlayAnimation(NPC, 13056)
end

function spawn(NPC)
  SetTimer(NPC)
end

function SetTimer(NPC)
  AddTimer(NPC, timerslow, "DoAnimation1")
end

function DoAnimation1(NPC)
  PlayAnimation(NPC, 12030)
  SetTimer(NPC)
end

