function hailed(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  conversation = CreateConversation()
	local choice = math.random(1, 3)
	if choice == 1 then
    Say(NPC, "If you ain't a warrior the NEW Steel Warriors don't have time for you. Get!", Spawn)
    PlayAnimation(NPC, 11881, Spawn, 1)
	elseif choice == 2 then
	  Say(NPC, "Back off!", Spawn)
    PlayAnimation(NPC, 10912, Spawn, 1)
  elseif choice == 2 then
	  Say(NPC, "Are you done?", Spawn)
    PlayAnimation(NPC, 10912, Spawn, 1)
  end
end