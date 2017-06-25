function cast(Caster, Target, Debuff, Mitigation)
  AddSpellBonus(Caster, 613, Debuff)
  AddSpellBonus(Caster, 204, Mitigation)

  -- AddProc(Caster, 3, 75)
end

function proc(Caster, Target, ProcType)
end

function remove(Caster, Target)
  RemoveSpellBonus(Caster)
  -- RemoveProc(Caster)
end