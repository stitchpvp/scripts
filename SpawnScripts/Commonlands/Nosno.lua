function hailed(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  conversation = CreateConversation()
	local choice = math.random(1, 4)
	if choice == 1 then
    Say(NPC, "I was once small and weak. I have grown.", Spawn)
	elseif choice == 2 then
	  Say(NPC, "We may be long gone by the time the sky loses the strength to fly.", Spawn)
  elseif choice == 3 then
    Say(NPC, "The Overlord's might casts a great shadow over these lands. It is wise of Qeynos to stay far, we would crush them.", Spawn)
  elseif choice == 4 then
    Say(NPC, "Self reflection is the only way to find the High Road.", Spawn)
  end
end
