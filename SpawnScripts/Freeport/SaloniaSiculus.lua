function spawn(NPC)
  SetPlayerProximityFunction(NPC, 15, "InRange")
end

function InRange(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  local choice = math.random(1, 6)

  if choice == 1 then
	Say(NPC, "Welcome to the Freeport Reserve.  State your business.", Spawn)
  elseif choice == 2 then
	Say(NPC, "No beggars and no solicitors.  If you don't have business to conduct then stand aside!", Spawn)
	PlayAnimation(NPC, 11680, Spawn)
  elseif choice == 3 then
	Say(NPC, "No, the furniture isn't for sale.  Did you have business with the bank?", Spawn)
  elseif choice == 4 then
	Say(NPC, "What services are you interested in, citizen?", Spawn)
	PlayAnimation(NPC, 12168, Spawn)
  elseif choice == 5 then
	Say(NPC, "Ouch, that's your balance?", Spawn)
	PlayAnimation(NPC, 13299, Spawn)
  elseif choice == 6 then
	Say(NPC, "What'll it be today?", Spawn)
  end
end

function hailed(NPC, Spawn)
  local choice = math.random(1, 6)

  if choice == 1 then
	Say(NPC, "Welcome to the Freeport Reserve.  State your business.", Spawn)
  elseif choice == 2 then
	Say(NPC, "No beggars and no solicitors.  If you don't have business to conduct then stand aside!", Spawn)
	PlayAnimation(NPC, 11680, Spawn)
  elseif choice == 3 then
	Say(NPC, "No, the furniture isn't for sale.  Did you have business with the bank?", Spawn)
  elseif choice == 4 then
	Say(NPC, "What services are you interested in, citizen?", Spawn)
	PlayAnimation(NPC, 12168, Spawn)
  elseif choice == 5 then
	Say(NPC, "Ouch, that's your balance?", Spawn)
	PlayAnimation(NPC, 13299, Spawn)
  elseif choice == 6 then
	Say(NPC, "What'll it be today?", Spawn)
  end
end
