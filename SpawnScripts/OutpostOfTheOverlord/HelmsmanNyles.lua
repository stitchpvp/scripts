function hailed(NPC, Spawn)
  local choice = math.random(1, 3)

  if choice == 1 then
	  Say(NPC, "Ale salts!  We're havin' rudder storm!", Spawn)
  elseif choice == 2 then
	  Say(NPC, "Crazy!  What are you talking about?", Spawn)
  elseif choice == 3 then
  	Say(NPC, "Land!  I see land!", Spawn)
  end
end
