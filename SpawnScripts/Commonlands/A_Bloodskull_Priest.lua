require('SpawnScripts/Generic/Required_random_pattern_medium');
require('SpawnScripts/Generic/BrokentuskVoiceOvers');

function spawn(NPC)
  AddPathing(NPC)
end

function hailed(NPC, Spawn)
  FaceTarget(NPC, Spawn)
end

function aggro(NPC, Spawn)
 generic_aggro(NPC, Spawn)
end

function healthchanged(NPC, Spawn)
  generic_healthchanged(NPC, Spawn)
end

function killed(NPC, Spawn)
  generic_killed(NPC, Spawn)
end

function death(NPC, Spawn)
  generic_death(NPC, Spawn)
end
