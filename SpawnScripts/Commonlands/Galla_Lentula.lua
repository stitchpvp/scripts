function hailed(NPC, Spawn)
  local timerslow = math.random(5000, 8000)

	FaceTarget(NPC, Spawn)
  Say(NPC, "Can you not see the disease spreads? Leave this place 'er your fate be sealed here, too!", Spawn)

  AddTimer(NPC,  timerslow, "DoAnimation2")
end

function spawn(NPC)
  SetTimer(NPC)
end

function SetTimer(NPC)
  local timerslow = math.random(5000, 8000)

  AddTimer(NPC, timerslow, "DoAnimation1")
end

function DoAnimation1(NPC)
  PlayAnimation(NPC, 12191)
  SetTimer(NPC)
end

function DoAnimation2(NPC, Spawn)
  PlayAnimation(Spawn, 11756, Spawn, 1)
end
