function cast(Caster, Target)
  SetTempVariable(Target, "moved", false)
  AddSpellTimer(5000, "movement_check")
end

function movement_check(Caster, Target)
  local Tunare = GetSpawn(Target, 2520001)
  local most_hated = GetMostHated(Tunare)
  local sendmsgtoall = GetGroup(most_hated)

  if Tunare ~= nil then
    if HasMoved(Target) == true and GetTempVariable(Target, "moved") == false then
      SetTempVariable(Target, "moved", true)
    elseif HasMoved(Target) == false and GetTempVariable(Target, "moved") == true then
      SetTempVariable(Target, "moved", false)
    elseif HasMoved(Target) == false and GetTempVariable(Target, "moved") == false then
      SetTempVariable(Target, "moved", false)
      AddSpellTimer(1000, "SpawnLurker")
      for _, players in ipairs(sendmsgtoall) do
        SendPopUpMessage(players, "A lurker has spawned at " .. GetName(Target) .. "'s location due to lack of movement!'", 255, 0, 0)
        SendMessage(players, "A lurker has spawned at " .. GetName(Target) .. "'s location due to lack of movement!", "red")
      end
    end
    AddSpellTimer(5000, "movement_check")
  else
    return
  end
end

function SpawnLurker(Caster, Target)
  local Tunare = GetSpawn(Target, 2520001)
  local player = GetMostHated(Tunare)

  if Tunare ~= nil then
    local lurker = SpawnMob(GetZone(Tunare), 25200043, false, GetX(Target), GetY(Target), GetZ(Target), 90)
    AddHate(player, lurker, 1)
  else
    return
  end
end

function remove(Caster, Target)
  SetTempVariable(Target, "moved", nil)
end
