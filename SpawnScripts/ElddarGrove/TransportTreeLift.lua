--[[
	Script Name	: <script-name>
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

function spawn(NPC)
   Say(NPC, "Hey, I'm a lift!")
   x = GetX(NPC)
   y = GetY(NPC)
   z = GetZ(NPC)

   MovementLoopAddLocation(NPC, x, 10.93, z, 5, 10)
   MovementLoopAddLocation(NPC, x, y, z, 5, 10)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
   spawn(NPC)
end
