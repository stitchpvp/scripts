--[[
    Script Name    : SpawnScripts/QueensColony/Waulon.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.27
    Script Purpose : Waulon dialog
                   :
--]]

function spawn(NPC)
end

function respawn(NPC)
spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)

    choice = math.random(1,2)
    if choice == 1 then
        Say(NPC, "Where's me hat? Needs me luck hat!")
    else
        Say(NPC, "What? Can't you see? Busy, away with ye!")
    end
end



