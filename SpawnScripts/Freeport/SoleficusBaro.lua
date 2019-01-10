function spawn(NPC)
  SetPlayerProximityFunction(NPC, 15, "InRange")
end

function InRange(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  PlayAnimation(NPC, 11150, Spawn)
end

function hailed(NPC, Spawn)
  local choice = math.random(1, 4)

  if choice == 1 then
	Say(NPC, "What services are you interested in, citizen?", Spawn)
  elseif choice == 2 then
	Say(NPC, "Ouch, that's your balance?", Spawn)
  elseif choice == 3 then
	Say(NPC, "I can handle all your banking needs.", Spawn)
  elseif choice == 4 then
	Say(NPC, "This is the Freeport Reserve.  What's your business?", Spawn)
  end
end
