function hailed(NPC, Spawn) 
  FaceTarget(NPC, Spawn)
  PlayAnimation(NPC, 11880, Spawn, 1)
end 

local timerslow = math.random(2000, 8000)
local timerfast = math.random(1000, 3000)
function spawn(NPC)
  SetTimer(NPC)
end

function SetTimer(NPC)
  local choice = math.random(1, 2)

  if choice == 1 then
    AddTimer(NPC, timerfast, "DoAnimation1")
  elseif choice == 2 then
    AddTimer(NPC, timerslow, "DoAnimation2")
  end
end

function DoAnimation1(NPC)
  PlayAnimation(NPC, 11880)
  SetTimer(NPC)
end

function DoAnimation2(NPC)
 PlayAnimation(NPC, 11858)
  SetTimer(NPC)
end