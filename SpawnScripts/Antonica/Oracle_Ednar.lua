function hailed(NPC, Spawn) 
  FaceTarget(NPC, Spawn)
  local choice = math.random(1, 3)
	if choice == 1 then
    Say(NPC, "Your fate will shape the futrue of this world.", Spawn)
	elseif choice == 2 then
	  Say(NPC, "I sense that you still have much to do before your destiny is complete.", Spawn)
  elseif choice == 3 then
    Say(NPC, "There is something different about you.", Spawn)
  end
end  
