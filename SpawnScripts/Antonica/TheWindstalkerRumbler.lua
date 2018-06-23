local BURROWING_RUMBLER = 7720034
local SPELL_RUPTURE = 143477816

local SPAWN_LOCATIONS = {
  {-788.74, -31.21, -40.74},
  {-764.08, -31.20, -35.92},
  {-754.49, -30.20, -56.50},
  {-756.30, -29.23, -72.08},
  {-774.54, -28.97, -91.92},
  {-801.27, -28.14, -88.32}
}

function spawn(NPC)
  SetTempVariable(NPC, "target_pct", 90)
end

function CombatReset(NPC)
  spawn(NPC)
end

function healthchanged(NPC, Target)
  local target_pct = tonumber(GetTempVariable(NPC, "target_pct"))
  local percent = (GetHP(NPC) / GetMaxHP(NPC)) * 100

  if percent <= target_pct then
    if target_pct > 10 then
      SetTempVariable(NPC, "target_pct", target_pct - 10)
    end

    CastSpell(Target, SPELL_RUPTURE, 1, NPC)

    for i = 1, 3 do
      local loc = SPAWN_LOCATIONS[math.random(#SPAWN_LOCATIONS)]

      local RumblerAdd = SpawnMob(GetZone(NPC), BURROWING_RUMBLER, false, loc[1], loc[2], loc[3])

      AddHate(Target, RumblerAdd, 1)
    end
  end
end
