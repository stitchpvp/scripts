function hailed(NPC, Spawn)
  local choice = math.random(1, 4)

  if choice == 1 then
	Say(NPC, "Poison testers, it's been my biggest seller for the past several months.  Of course poison was a close second.", Spawn)
	PlayAnimation(NPC, 12030, Spawn)
  elseif choice == 2 then
	Say(NPC, "I need to get some eye of griffin, a bears paw, the heart of an innocent man.  That'll be tough in this city!", Spawn)
	PlayAnimation(NPC, 11214, Spawn)
  elseif choice == 3 then
	Say(NPC, "Be careful what you touch in here.  You're liable to kill us all!", Spawn)
	PlayAnimation(NPC, 13056, Spawn)
  elseif choice == 4 then
	Say(NPC, "Let me guess, you're looking for poison right?", Spawn)
	PlayAnimation(NPC, 13304, Spawn)
  end
end
