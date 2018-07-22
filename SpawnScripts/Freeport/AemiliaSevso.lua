function hailed(NPC, Spawn)
  local choice = math.random(1, 3)
  
  if choice == 1 then
	Say(NPC, "Let me guess, you're looking for poison, right?", Spawn)
  elseif choice == 2 then
	Say(NPC, "I need to get some eye of griffin, a bear's paw, the heart of an innocent man.  That'll be tough in this city!", Spawn)
  elseif choice == 3 then
	Say(NPC, "Be careful what you touch in here. You're liable to kill us all!", Spawn)
  end
end