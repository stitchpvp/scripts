function hailed(NPC, Spawn)
  local choice = math.random(1, 2)

  if choice == 1 then
	  Say(NPC, "Thinking I should design a new mechanical boat. It would be perfect! Yes, perfect indeed!", Spawn)
	  PlayAnimation(NPC, 12030, Spawn)
  elseif choice == 2 then
	  Say(NPC, "Do you happen to have any mechanical leg extenders? I want to see  the water.", Spawn)
	  PlayAnimation(NPC, 10745, Spawn)
  end
end
