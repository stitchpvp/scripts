require('SpawnScripts/Generic/Required_random_pattern_medium');
require('SpawnScripts/Generic/BrokentuskVoiceOvers');
local timerslow = math.random(2000, 8000)
local timerfast = math.random(1000, 3000)

function spawn(NPC)
  AddPathing(NPC)
  SetTimer(NPC)
end

function SetTimer(NPC)
  local choice = math.random(1, 2)

  if choice == 1 then
    AddTimer(NPC, timerfast, "DoAnimation")
  elseif choice == 2 then
    AddTimer(NPC, timerslow, "DoMovement")
  end
end

function DoAnimation(NPC)
  PauseMovement(NPC)
  PlayAnimation(NPC, 2809)
  SetTimer(NPC)
  Say(NPC, "I am on the animation step", Spawn)
end

function DoMovement(NPC)
  ResumeMovement(NPC)
  SetTimer(NPC)
  Say(NPC, "I should resume moving", Spawn)
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