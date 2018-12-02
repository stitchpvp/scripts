function hailed(NPC, Spawn)
	local choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "", "Try my Coagulated Surprise!", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "I'll challenge my dried triggerfish to Gorga's stew any day.", "", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Mmm, fish!", "", 1689589577, 4560189, Spawn)
	else
	end
end
