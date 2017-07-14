require('SpawnScripts/Generic/GenericSkeletonVoiceOvers');


local spoke = false
function spawn(NPC)
spoke = false
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

function ResetSpoke(NPC)
	spoke = false
end