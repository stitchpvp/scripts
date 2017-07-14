require('/SpawnScripts/Generic/BrokentuskVoiceOvers');
function spawn(NPC)
end

function hailed(NPC, Spawn) 
  FaceTarget(NPC, Spawn)
  PlayAnimation(NPC, 10912, Spawn, 1)
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


local timerslow = math.random(5000, 8000)
local timerfast = math.random(2000, 4000)

function spawn(NPC)
  SetTimer(NPC)
end

function SetTimer(NPC)
  local choice = math.random(1,3)
  if choice == 1 then
    AddTimer(NPC, timerslow, "DoAnimation1")
  elseif choice == 2 then
    AddTimer(NPC, timerfast, "DoAnimation2")
  elseif choice == 3 then
    AddTimer(NPC, timerslow, "DoAnimation3")  
  end
end

function DoAnimation1(NPC)
  PlayAnimation(NPC, 11214)
  SetTimer(NPC)
end

function DoAnimation2(NPC)
 PlayAnimation(NPC, 125)
  SetTimer(NPC)
end

function DoAnimation3(NPC)
  PlayAnimation(NPC, 11255)
  SetTimer(NPC)
end