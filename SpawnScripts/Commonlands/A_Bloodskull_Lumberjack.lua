

require('/SpawnScripts/Generic/Required_random_pattern_medium');
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
  SetInCombat(NPC, true)
  PlayAnimation(NPC, 2809)
  SetTimer(NPC)
end

function DoMovement(NPC)
  SetInCombat(NPC, false) 
  SetTimer(NPC)
end