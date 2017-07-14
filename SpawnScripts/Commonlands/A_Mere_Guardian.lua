require('SpawnScripts/Generic/Required_random_pattern_medium');

function spawn(NPC)
  MovementChoice(NPC)
end

function hailed(NPC, Spawn) 
  FaceTarget(NPC, Spawn) 
end 
