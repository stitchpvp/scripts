function cast(Caster, Target)
  AddProc(Caster, 1, 5)
  AddProc(Caster, 2, 30)
  AddProc(Caster, 14, 100)
end

function proc(Caster, Target, ProcType, SpellTier)
  CastSpell(Caster, 1001284, SpellTier)
end

function remove(Caster, Target)
  RemoveProc(Caster)
end