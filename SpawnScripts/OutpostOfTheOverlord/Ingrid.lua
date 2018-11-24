function hailed(NPC, Spawn)
  local choice = math.random(1, 3)

  if choice == 1 then
	  Say(NPC, "Yo ho ho and a bottle of rum!", Spawn)
	  PlayAnimation(NPC, 11682, Spawn)
  elseif choice == 2 then
	  Say(NPC, "Don't you just love the sea?", Spawn)
	  PlayAnimation(NPC, 10745, Spawn)
  elseif choice == 3 then
  	Say(NPC, "I hate rats, every time we dock they get on board and eat our supplies.", Spawn)
    PlayAnimation(NPC, 10745, Spawn)
  end
