function spawn(NPC)
  SetBrainTick(NPC, 5000)
  SetLuaBrain(NPC)
  PauseMovement(NPC)
end

function respawn(NPC)
  spawn(NPC)
end

function Think(NPC)
  CastSpell(NPC, 77415749, 1)
end