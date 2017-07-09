function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What does the job pay?", "Option1")
	AddConversationOption(conversation, "No, I don't have time right now.")
	StartConversation(conversation, NPC, Spawn, "Pah, the orcs and the dervish... Listen, the Freeport Militia requires your help. Will you do a service for the Militia?")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Whatever. I'll work for you. Getting paid is nice, though", "Option2")
	AddConversationOption(conversation, "Right, I'll be on my way.")
	StartConversation(conversation, NPC, Spawn, "Pay... PAY? You insolent pig, you should be bowing down at my feet asking me for forgiveness. You ought to  be paying homage to the Overlord for all he has given you!")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What will I do when I find him?", "Option3")
	AddConversationOption(conversation, "Find someone else. I don't have time.")
	StartConversation(conversation, NPC, Spawn, "You will be compensated for your time. There have been reports of a growing threat in the Commonlands. The militia requires you to travel to the west to the road beyond the druid ring to find the orc emissary.   Our reports tell us the emissary is the one who is passing stolen information to the Deathfist Empire.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I will serve the Overlord.")
	AddConversationOption(conversation, "Maybe later.", "Option4")
	StartConversation(conversation, NPC, Spawn, "Deal with him by any means necessary! Bring back to me any evidence you may find.")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "All right.")
	StartConversation(conversation, NPC, Spawn, "I know you will. Return to me immediately once this is complete.")
end


function spawn(NPC)
	waypoints(NPC)
end

function respawn(NPC)
end

function waypoints(NPC)
MovementLoopAddLocation(NPC, -484.12, -44.93, -294.26, 1, 5)
MovementLoopAddLocation(NPC, -485.11, -45.02, -296.06, 1, 0)
MovementLoopAddLocation(NPC, -487.96, -45.25, -301.25, 1, 0)
MovementLoopAddLocation(NPC, -491.43, -45.47, -307.57, 1, 0))
MovementLoopAddLocation(NPC, -497.68, -45.58, -318.94, 1, 0)
MovementLoopAddLocation(NPC, -504.08, -45.65, -330.24, 1, 0)
MovementLoopAddLocation(NPC, -508.04, -45.11, -336.15, 1, 0)
MovementLoopAddLocation(NPC, -511.79, -44.6, -341.74, 1, 0)
MovementLoopAddLocation(NPC, -512.17, -44.67, -340.52, 1, 0)
MovementLoopAddLocation(NPC, -515.41, -45.15, -318.37, 1, 0)
MovementLoopAddLocation(NPC, -516.17, -44.67, -312.16, 1, 0)
MovementLoopAddLocation(NPC, -511.85, -43.77, -298.21, 1, 0)
MovementLoopAddLocation(NPC, -508.53, -43.8, -293.47, 1, 0)
MovementLoopAddLocation(NPC, -503.48, -43.99, -287.63, 1, 0)
MovementLoopAddLocation(NPC, -495.45, -44.04, -280.77, 1, 0)
MovementLoopAddLocation(NPC, -485.38, -44.51, -274.66, 1, 0)
MovementLoopAddLocation(NPC, -476.81, -45.07, -270.56, 1, 0)
MovementLoopAddLocation(NPC, -462.56, -45.9, -260.12, 1, 0)
MovementLoopAddLocation(NPC, -457.47, -45.02, -253.86, 1, 0)
MovementLoopAddLocation(NPC, -458.58, -45.47, -255.57, 1, 0)
MovementLoopAddLocation(NPC, -461.95, -45.88, -261.56, 1, 0)
MovementLoopAddLocation(NPC, -461.89, -45.79, -265.5, 1, 0)
MovementLoopAddLocation(NPC, -460.85, -45.72, -270.67, 1, 0)
MovementLoopAddLocation(NPC, -459.42, -45.61, -276.16, 1, 0)
MovementLoopAddLocation(NPC, -457.74, -45.43, -282.64, 1, 0)
MovementLoopAddLocation(NPC, -455.41, -45.13, -291.65, 1, 0)
MovementLoopAddLocation(NPC, -453.29, -44.79, -299.79, 1, 0)
MovementLoopAddLocation(NPC, -451.01, -43.36, -308.58, 1, 0)
MovementLoopAddLocation(NPC, -448.98, -43.04, -311.27, 1, 0)
MovementLoopAddLocation(NPC, -439.91, -41.71, -316.61, 1, 0)
MovementLoopAddLocation(NPC, -443.12, -42.01, -315.28, 1, 0)
MovementLoopAddLocation(NPC, -450.99, -43.2, -311.96, 1, 0)
MovementLoopAddLocation(NPC, -460.09, -43.78, -314.92, 1, 0))
MovementLoopAddLocation(NPC, -468.83, -44.53, -316.25, 1, 0)
MovementLoopAddLocation(NPC, -478.13, -45.15, -319.72, 1, 0)
MovementLoopAddLocation(NPC, -485.5, -45.57, -326.71, 1, 0)
MovementLoopAddLocation(NPC, -495.83, -45.57, -330.71, 1, 0)
MovementLoopAddLocation(NPC, -499.04, -45.59, -325.9, 1, 0)
MovementLoopAddLocation(NPC, -496.98, -45.63, -319.21, 1, 0)
MovementLoopAddLocation(NPC, -493.8, -45.6, -313.81, 1, 0)
MovementLoopAddLocation(NPC, -488.73, -45.42, -305.25, 1, 0)
MovementLoopAddLocation(NPC, -483.77, -44.92, -293.92, 1, 5)
end