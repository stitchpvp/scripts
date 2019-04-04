function cast(Caster, Target)
  local check = GetClassName(Target)

  SetPlayerTriggerCount(Target, 1)

  if check == "Guardian" then
    AddProc(Target, 2, 25)
  end

  if not check == "Guardian" then
    AddProc(Target, 2, 50)
  end
end

function proc(Caster, Target, ProcType, Percentage)
  if GetPlayerTriggerCount(Caster) > 0 then
    RemoveTriggerFromPlayer(Caster)
    CastSpell(Target, 138308529, 1, Caster)
  end
end

function remove(Caster, Target)
  RemoveStoneskin(Target)
  RemoveProc(Target)
end
