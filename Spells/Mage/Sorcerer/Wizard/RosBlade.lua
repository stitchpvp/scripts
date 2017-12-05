function cast(Caster, Target)
  AddProc(Target, 1, 5)
end

function proc(Caster, Target, ProcType, SpellId)
  CastSpell(Target, SpellId, 1, Caster)
end

function remove(Caster, Target)
  RemoveProc(Target)
end
