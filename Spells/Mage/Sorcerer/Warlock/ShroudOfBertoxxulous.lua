function cast(Caster, Target)
  AddProc(Target, 2, 25)
end

function proc(Caster, Target, Type, SpellID)
  CastSpell(Target, SpellID, 1, Caster)
end

function remove(Caster, Target)
  RemoveProc(Target)
end