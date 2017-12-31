function cast(Caster, Target)
  AddProc(Caster, 18, 100)
end

function proc(Caster, Target, Type, SpellID)
  CastSpell(Target, SpellID, 1, Caster)
end

function remove(Caster)
  RemoveProc(Caster)
end