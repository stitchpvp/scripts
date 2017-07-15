function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
  Say(NPC, "Can you not see the disease spreads? Leave this place 'er your fate be sealed here, too!", Spawn)
  AddTimer(NPC, 2000, "DoAnimation2")
end

local timerslow = math.random(5000, 8000)
function spawn(NPC)
  SetTimer(NPC)
end

function SetTimer(NPC)
    AddTimer(NPC, timerslow, "DoAnimation1")
end

function DoAnimation1(NPC)
  PlayAnimation(NPC, 12191)
  SetTimer(NPC)
end

function DoAnimation2(NPC, Spawn)
  PlayAnimation(Spawn, 11756, Spawn, 1)
  SetTimer(NPC)
end
