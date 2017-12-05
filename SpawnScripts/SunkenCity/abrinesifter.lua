--[[
  Script Name	: SpawnScripts/SunkenCity/abrinesifter.lua
  Script Purpose	: a brine sifter
  Script Author	: Scatman
  Script Date	: 2009.07.28
  Script Notes	:
--]]

local QUEST_3_FROM_THORSON = 268

function spawn(NPC)
  ChooseMovement(NPC)
end

function ChooseMovement(NPC)
  local choice = math.random(1, 4)
  if choice == 1 then
    clockwise1(NPC)
  elseif choice == 2 then
    clockwise2(NPC)
  elseif choice == 3 then
    counter_clockwise1(NPC)
  elseif choice == 4 then
    counter_clockwise2(NPC)
  end
end

function respawn(NPC)
SpawnMob(NPC)
end

function clockwise1(NPC)
  local x = GetX(NPC)
  local y = GetY(NPC)
  local z = GetZ(NPC)
  MovementLoopAddLocation(NPC, x + 3 , y, z - 4 , 1, math.random(5, 15))
  MovementLoopAddLocation(NPC, x - 1 , y, z - 6, 1, math.random(5, 15))
  MovementLoopAddLocation(NPC, x - 6, y, z + 5 , 1, math.random(5, 15))
  MovementLoopAddLocation(NPC, x + 1 , y, z + 4 , 1, math.random(5, 15))
end

function clockwise2(NPC)
  local x = GetX(NPC)
  local y = GetY(NPC)
  local z = GetZ(NPC)
  MovementLoopAddLocation(NPC, x + 2 , y, z - 4 , 1, math.random(5, 15))
  MovementLoopAddLocation(NPC, x - 7 , y, z - 1 , 1, math.random(5, 15))
  MovementLoopAddLocation(NPC, x     , y, z + 2 , 1, math.random(5, 15))
  MovementLoopAddLocation(NPC, x + 5 , y, z + 1 , 1, math.random(5, 15))
end

function counter_clockwise1(NPC)
  local x = GetX(NPC)
  local y = GetY(NPC)
  local z = GetZ(NPC)
  MovementLoopAddLocation(NPC, x - 3 , y, z + 4 , 1, math.random(5, 15))
  MovementLoopAddLocation(NPC, x + 1 , y, z + 6, 1, math.random(5, 15))
  MovementLoopAddLocation(NPC, x + 4, y, z - 5 , 1, math.random(5, 15))
  MovementLoopAddLocation(NPC, x - 1 , y, z - 4 , 1, math.random(5, 15))
end

function counter_clockwise2(NPC)
  local x = GetX(NPC)
  local y = GetY(NPC)
  local z = GetZ(NPC)
  MovementLoopAddLocation(NPC, x - 2 , y, z + 4 , 1, math.random(5, 15))
  MovementLoopAddLocation(NPC, x + 3 , y, z + 1 , 1, math.random(5, 15))
  MovementLoopAddLocation(NPC, x     , y, z - 2 , 1, math.random(5, 15))
  MovementLoopAddLocation(NPC, x - 5 , y, z - 1 , 1, math.random(5, 15))
end

function respawn(NPC)
SpawnMob(NPC)
end

function hailed(NPC, Spawn)
  FaceTarget(NPC, Spawn)
end

function casted_on(Target, Caster)
  -- TODO: Verify 'Catalog Creature' was casted.
  if HasQuest(Caster, QUEST_3_FROM_THORSON) and not QuestStepIsComplete(Caster, QUEST_3_FROM_THORSON, 1) then
    SetStepComplete(Caster, QUEST_3_FROM_THORSON, 1)
  end
end
