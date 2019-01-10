local timerslow = math.random(8000, 17000)

function spawn(NPC)
  SetTimer(NPC)
end

function SetTimer(NPC)
  local choice = math.random(1, 4)

  if choice == 1 then
    AddTimer(NPC, timerslow, "DoAnimation1")
  elseif choice == 2 then
    AddTimer(NPC, timerslow, "DoAnimation2")
  elseif choice == 3 then
    AddTimer(NPC, timerslow, "DoAnimation3")
  elseif choice == 4 then
    AddTimer(NPC, timerslow, "DoAnimation4")
  end
end

function DoAnimation1(NPC)
  PlayAnimation(NPC, 12236) --Shiver
  SetTimer(NPC)
end

function DoAnimation2(NPC)
  PlayAnimation(NPC, 12030) --Ponder
  SetTimer(NPC)
end

function DoAnimation3(NPC)
  PlayAnimation(NPC, 11214) --Confused
  SetTimer(NPC)
end

function DoAnimation4(NPC)
  PlayAnimation(NPC, 891) --Yawn
  SetTimer(NPC)
end

function hailed(NPC, Spawn)
  local choice = math.random(1, 4)

  if choice == 1 then
	Say(NPC, "We don't sell contraband furnishings in our shop. We sell only pieces approved by the Overlord!", Spawn)
	PlayAnimation(NPC, 12168, Spawn)
  elseif choice == 2 then
	Say(NPC, "Don't be ashamed, friend.  We have pieces that even ratongas can afford!", Spawn)
	PlayAnimation(NPC, 13304, Spawn)
  elseif choice == 3 then
	Say(NPC, "Welcome friend of the Overlord, please look around.  We have several pieces from the Citadel itself!", Spawn)
	PlayAnimation(NPC, 121, Spawn)
  elseif choice == 4 then
	Say(NPC, "Please don't touch anything.  This isn't a museum. If you break it, you buy it!", Spawn)
	PlayAnimation(NPC, 12187, Spawn)
  end
end
