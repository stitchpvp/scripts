function hailed(NPC, Spawn)
	choice = math.random(1,3)
	if choice == 1 then
		PlayFlavor(NPC, "", "Have you tried the Coagulated Surprise from the fishmonger?  Good stuff!", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1001.mp3", "", "", 0, 0, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Have an ale!", "", 1689589577, 4560189, Spawn)
	else
	end
end
