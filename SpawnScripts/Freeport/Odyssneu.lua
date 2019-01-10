function spawn(NPC)
  SetPlayerProximityFunction(NPC, 15, "InRange")
end

function InRange(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  PlayAnimation(NPC, 13287, Spawn)
  Say(NPC, "Welcome, friend! The wares of an entire city are at your fingertips. So please make your selection.", Spawn)
end

function hailed(NPC, Spawn)
 local choice = math.random(1, 2)

  if choice == 1 then
    Say(NPC, "Welcome, friend! The wares of an entire city are at your fingertips. So please make your selection.", Spawn)
    PlayAnimation(NPC, 13287, Spawn)
  elseif choice == 2 then
    Say(NPC, "What can I help you acquire today?", Spawn)
	PlayAnimation(NPC, 13304, Spawn)
  end
end
