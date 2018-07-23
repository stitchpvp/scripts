function spawn(NPC)
  SetPlayerProximityFunction(NPC, 15, "InRange")
end

function InRange(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  Say(NPC, "Ahoy! Ye'll be feedin' the fish without me swag.", Spawn)
  PlayAnimation(NPC, 12187, Spawn)
end

function hailed(NPC, Spawn)
  Say(NPC, "If you are looking for Captain Stovka and the rest of the crews, they are down at the Seafarer's Roost in East Freeport. In the meantime, want to buy something?", Spawn)
end