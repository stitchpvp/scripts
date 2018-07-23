function spawn(NPC)
  SetPlayerProximityFunction(NPC, 15, "InRange")
end

function InRange(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  PlayAnimation(NPC, 11150, Spawn)
end

function hailed(NPC, Spawn)
  Say(NPC, "I'm here to buy any of that old armor you may have from Dytric.  Don't worry, I'll give you a reasonable price for it.  I also have some new armor for sale if you are interested.", Spawn)
end