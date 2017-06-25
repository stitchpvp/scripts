--[[
    Script Name    : SpawnScripts/QueensColony/NebbleUnderroot.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.27
    Script Purpose : Nebble Unfderroot dialog
                   : 
--]]

function spawn(NPC)
end

function respawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)

    choice = math.random(1,2)
    if choice == 1 then
        Say(NPC, "Mmm, triggerfish pie! I can smell it now.")
    elseif choice == 2 then
        Say(NPC, "Shark fin soup! Maybe I'll get luck.")
    end
end



