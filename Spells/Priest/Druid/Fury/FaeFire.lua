function cast(Caster, Target)
  SetPlayerTriggerCount(Target, 3)
  AddProc(Target, 1, 100)
end

function proc(Caster, Target, ProcType, MinDmg)
  if GetPlayerTriggerCount(Caster) > 0 then
    local spell_caster = GetCaster()

    RemoveTriggerFromPlayer(Caster)

    ProcDamage(spell_caster, Target, "Fae Fires", 3, MinDmg, MinDmg)
  end
end

function remove(Caster, Target)
  RemoveProc(Target)
end
