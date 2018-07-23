function spawn(NPC)
  SetPlayerProximityFunction(NPC, 15, "InRange")
end

function InRange(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  PlayAnimation(NPC, 11150, Spawn)
end

function hailed(NPC, Spawn)
  Say(NPC, "Hello, good friend.  How can I be of service to ye?  Interested in buying an item?  My contacts allow me to get unbelievably low prices on almost any consignment item from anywhere in the world.", Spawn)
end