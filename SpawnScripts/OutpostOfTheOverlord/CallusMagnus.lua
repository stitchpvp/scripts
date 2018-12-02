function hailed(NPC, Spawn)
	local choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "", "Have a stout for Freeport!", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Watch out for those sneaky Tunarians.", "", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Here's to the Overlord!", "", 1689589577, 4560189, Spawn)
	else
	end
end
