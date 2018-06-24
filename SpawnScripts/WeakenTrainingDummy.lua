function spawn(NPC)
  SetMaxHPBase(NPC, 1500)
  SetHP(NPC, 1500)

	SetBrainTick(NPC, 600000)
	SetLuaBrain(NPC)
end

function respawn(NPC)
  spawn(NPC)
end

function Think(NPC)
	return
end
