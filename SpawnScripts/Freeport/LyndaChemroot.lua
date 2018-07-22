function hailed(NPC, Spawn)
  local choice = math.random(1, 2)
  
  if choice == 1 then
	Say(NPC, "You look like you need help.  Can I help you find something?", Spawn)
  elseif choice == 2 then
	Say(NPC, "We've all the basic supplies that you'll ever need. Are you looking for anything specific?", Spawn)
  end
end