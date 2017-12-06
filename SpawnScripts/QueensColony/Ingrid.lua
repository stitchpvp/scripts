--[[
    Script Name    : SpawnScripts/QueensColony/Ingrid.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.27
    Script Purpose : Ingrid dialog
                   :
--]]

function spawn(NPC)
end

function respawn(NPC)
spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)

    choice = math.random(1,3)
    if choice == 1 then
        Say(NPC, "Yo ho ho and a bottle of rum!")
    elseif choice == 2 then
        Say(NPC, "Don/'t you just love the sea?")
    else
        Say(NPC, "I hate rats, every time we dock they get on board and eat our supplies.")
    end
end



