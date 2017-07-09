
local Movement = "SpawnScripts.Generic.random_pattern_medium"
require(Movement);
local timerslow = math.random(2000, 8000)
local timerfast = math.random(1000, 3000)

function spawn(NPC)
  SetTimer(NPC)
end

function SetTimer(NPC)
  local choice = math.random(1, 2)

  if choice == 1 then
    AddTimer(npc, timerfast, "DoAnimation")
  elseif choice == 2 then
    AddTimer(npc, timerslow, "DoMovement")
  end
end

function DoAnimation(NPC, Spawn)
  PlayAnimation(NPC, 10815, Spawn, 1)
  SetTimer(NPC)
end

function DoMovement(NPC, Spawn)
  Movement.MovementChoice(NPC) 
  SetTimer(NPC)
end