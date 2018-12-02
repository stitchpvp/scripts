function hailed(NPC, Spawn)
	choice = math.random(1,2)
	if choice == 1 then
		PlayFlavor(NPC, "", "Got any goods for sale from your adventures?", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Welcome to Ebb Tide's Alehouse.", "", 1689589577, 4560189, Spawn)
	else
	end
end
