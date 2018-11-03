function cast(Caster, Target)
  SetTempVariable(Target, "spawned", nil)
end

function tick(Caster, Target)
  local power_check = GetPower(Target) / GetMaxPower(Target)
  local most_hated = GetMostHated(Target)
  local sendmsgtoall = GetGroup(most_hated)

  if power_check < 0.30 and GetTempVariable(Target, "spawned") == nil then
    SetTempVariable(Target, "spawned", "true")
    if power_check < 0.30 and GetTempVariable(Target, "spawned") ~= nil then
      local hurricane = SpawnMob(GetZone(Target), 2520047, false, GetX(Target), GetY(Target), GetZ(Target), 90)
      AddHate(Target, hurricane, 1)
      AddSpellTimer(10000, "resettemp")
      if not HasGroup(Target) then
        SendPopUpMessage(Target, "" .. GetName(Target) .. "'s power have diminished and summoned a hurricane as a result!", 255, 0, 0)
        SendMessage(Target, "" .. GetName(Target) .. "'s power have diminished and summoned a hurricane as a result!", "red")
      else
        for _, players in ipairs(sendmsgtoall) do
          SendPopUpMessage(players, "" .. GetName(Target) .. "'s power have diminished and summoned a hurricane as a result!", 255, 0, 0)
          SendMessage(players, "" .. GetName(Target) .. "'s power have diminished and summoned a hurricane as a result!", "red")
        end
      end
    end
  else
    return
  end
end

function resettemp(Caster, Target)
  SetTempVariable(Target, "spawned", nil)
end

function remove(Caster, Target)
  SetTempVariable(Target, "spawned", nil)
end
