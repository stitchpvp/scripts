function spawn(NPC)
  SetPlayerProximityFunction(NPC, 15, "InRange")
end

function InRange(NPC, Spawn)
  PlayAnimation(NPC, 11150, Spawn)
  FaceTarget(NPC, Spawn)
end

function hailed(NPC, Spawn)
  Say(NPC, "Yes, what is it?  Oh, another one of those adventurers.  If you've got any of that old armor from Kirsteh, give it here and I'll sell you some new armor.", Spawn)
end