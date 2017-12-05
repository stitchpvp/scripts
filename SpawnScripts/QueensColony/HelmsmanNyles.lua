--[[
    Script Name    : SpawnScripts/QueensColony/HelmsmanNyles.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.27
    Script Purpose : Helmsman Nyles dialog
                   :
--]]

function spawn(NPC)
end

function respawn(NPC)
SpawnMob(NPC)
end

function hailed(NPC, Spawn)
    choice = math.random(1,3)
    if choice == 1 then
        Say(NPC, "Land! I see land!")
    elseif choice == 2 then
        Say(NPC, "Ale salts! We're havin' rudder storm!")
    elseif choice == 3 then
        Say(NPC, "Crazy! What are you talking about?")
    end
end



