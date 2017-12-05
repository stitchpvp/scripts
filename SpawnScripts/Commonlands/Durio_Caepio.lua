function hailed(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  Say(NPC, "Nice to have a healer here", Spawn)
end

local timerslow = math.random(5000, 8000)
local timerfast = math.random(2000, 4000)
function spawn(NPC)
  SetTimer(NPC)
end

function SetTimer(NPC)
  local choice = math.random(1,2)
  if choice == 1 then
    AddTimer(NPC, timerslow, "DoAnimation1")
  elseif choice == 2 then
    AddTimer(NPC, timerfast, "DoAnimation2")
  end
end

function DoAnimation1(NPC)
  PlayAnimation(NPC, 12191)
  SetTimer(NPC)
  --Say(NPC, "I'm just very itchy, could you scratch my back by chance?", Spawn)
end

function DoAnimation2(NPC)
  PlayAnimation(NPC, 11756)
  SetTimer(NPC)
  --Say(NPC, "I am sure glad Hanif gave us these blankets..", Spawn)
end
