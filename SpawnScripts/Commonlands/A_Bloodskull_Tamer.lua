require('/SpawnScripts/Generic/tiny_movement_loop.lua');

function spawn(NPC)
  ChooseMovement(NPC)
end

function hailed(NPC, Spawn) 
  FaceTarget(NPC, Spawn) 
end 
