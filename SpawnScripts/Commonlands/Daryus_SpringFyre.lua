function spawn(NPC)
	SetPlayerProximityFunction(NPC, 14, "InRange")
end

function InRange(NPC, Spawn)
Say(NPC, "You there! Care to make a trade? I've got resources beyond compare!", Spawn)
PlayAnimation(NPC, 12028, Spawn, 1)
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
  Say(NPC, "Well don't take all day now, I can't say for certain how long this area will be safe.", Spawn)
end
  