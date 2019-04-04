function cast(Caster, Target)
  SetPlayerTriggerCount(Caster, 4)
  AddProc(Target, 2, 100)
end

function proc(Caster, Target, ProcType, Percentage)
  local stoneskin = GetMaxHP(Caster) * Percentage
  if GetPlayerTriggerCount(Caster) > 0 then
    RemoveTriggerFromPlayer(Caster)
    AddStoneskin(Caster, stoneskin, 1, 0)
  end
end

function remove(Caster, Target)
  RemoveStoneskin(Caster)
  RemoveProc(Caster)
end
