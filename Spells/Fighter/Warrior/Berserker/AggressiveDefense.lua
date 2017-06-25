function cast(Caster, Target, Mitigation)
  AddSpellBonus(Caster, 201, Mitigation)
  AddSpellBonus(Caster, 202, Mitigation)
  AddSpellBonus(Caster, 203, Mitigation)

  AddProc(Caster, 4, 20)
  AddProc(Caster, 7, 100)
end

function proc(Caster, Target, ProcType, Mitigation, Threat, MinDmg, MaxDmg)
  if ProcType == 4 then
    ProcDamage(Caster, Target, "Provoking Counterattack", 0, MinDmg, MaxDmg)
  end

  AddHate(Caster, Target, Threat)
end

function remove(Caster, Target)
  RemoveProc(Caster)
  RemoveSpellBonus(Caster)
end