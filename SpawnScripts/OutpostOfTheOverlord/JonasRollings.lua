function hailed(NPC, Spawn)
	choice = math.random(1,2)
	if choice == 1 then
		PlayFlavor(NPC, "", "Maybe I shouldn't have drank so much last night.", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "One too many Coagulated Surprises last night is my guess.", "", 1689589577, 4560189, Spawn)
	else
	end
end
