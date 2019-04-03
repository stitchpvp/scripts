function cast(Caster, Target)
  SetPlayerTriggerCount(Target, 1)
  AddProc(Target, 13, 100)
end

function proc(Caster, Target, ProcType)
  if GetPlayerTriggerCount(Caster) > 0 then

    RemoveTriggerFromPlayer(Caster)

    CastSpell(Target, 234372797, 1, Caster)
  end
end

function remove(Caster, Target)
  RemoveProc(Target)
end
