function hailed(NPC, Spawn)
	choice = math.random(1,2)
	if choice == 1 then
		PlayFlavor(NPC, "", "By will of the Overlord!", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "A guard with brains and bite.  You'll definitely need me at some point.", "", 1689589577, 4560189, Spawn)
	else
	end
end
