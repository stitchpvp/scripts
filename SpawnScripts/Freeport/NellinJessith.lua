function spawn(NPC)
  SetPlayerProximityFunction(NPC, 15, "InRange")
end

function InRange(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  PlayAnimation(NPC, 11150, Spawn)
end

function hailed(NPC, Spawn)
  Say(NPC, "Mind yourself, citizen.  There is little that escapes the notice of the Red Hoods.", Spawn)
  PlayAnimation(NPC, 12028, Spawn)
end