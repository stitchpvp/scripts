--[[
	Script Name	: SpawnScripts/Antonica/Lord Bennet
	Script Purpose	: Lord Bennet 
	Script Author	: Jexus
	Script Date	: 2017.07.05
	Script Notes	: 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end


function hailed(NPC, Spawn)
conversation = CreateConversation()
	local choice = math.random(1, 2)
	if choice == 1 then
	Say(conversation, NPC, Spawn, "Ha, " .. Getname(spawn) .. " these guard's can't protect you for too long!".)
    AddConversationOption(conversation, "Am I trapped?", )
	StartConversation(conversation, NPC, Spawn, "Fight with dignity!")
	elseif choice == 2 then
	Say(conversation, NPC, Spawn, " Did I just see a title?".)
	
	
	end
end