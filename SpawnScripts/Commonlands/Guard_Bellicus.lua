function hailed(NPC, Spawn)
  FaceTarget(NPC, Spawn)
require('/SpawnScripts/Generic/GenericGuardVoiceOvers.lua');

function hailed(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  GenericGuardHail(NPC, Spawn, Faction)
end 
