function hailed(NPC, Spawn)
  local choice = math.random(1, 2)

  if choice == 1 then
	  Say(NPC, "All the way back to the days of Cabilis, my family has provided goods to those in need.", Spawn)
  elseif choice == 2 then
	  Say(NPC, "All you sseek can be found here!", Spawn)
  end
end
