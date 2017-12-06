--[[
    Script Name    : SpawnScripts/QueensColony/Vim.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.27
    Script Purpose : Vim dialog
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
        Say(NPC, "I am busy right now...")
    elseif choice == 2 then
        Say(NPC, "I love traveling the seas... Oh! Did you need something?")
    else
        Say(NPC, "The Far Journey is a beautiful ship, aint she?")
    end
end



