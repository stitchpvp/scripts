function hailed(NPC, Spawn)
	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "", "I can't wait to get back to Temple Street.", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Wimblewick's the name, Wimblewickin is what I do.  What that means, I have no idea!", "", 1689589577, 4560189, Spawn)
	else
	end
end
