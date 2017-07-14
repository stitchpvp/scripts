require('SpawnScripts/Generic/random_pattern_small');

function spawn(NPC)
  MovementChoice(NPC)
end

function hailed(NPC, Spawn) 
  FaceTarget(NPC, Spawn) 
end 
