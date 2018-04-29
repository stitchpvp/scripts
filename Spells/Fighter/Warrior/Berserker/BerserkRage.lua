function cast(Caster, Target)
  AddProc(Caster, 1, 5)
  AddProc(Caster, 2, 30)
  AddProc(Caster, 14, 100)
end

function proc(Caster, Target, ProcType, SpellID)
  CastSpell(Caster, SpellID, 1)
end

function remove(Caster, Target)
  RemoveProc(Caster)
end
