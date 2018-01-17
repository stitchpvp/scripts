function cast(Caster, Target)
  AddProc(Target, 16, 5)
end

function proc(Caster, Target, Type, SpellID)
  CastSpell(Target, SpellID, 1, Caster)
  CancelSpell()
end

function remove(Caster, Target)
  RemoveProc(Target)
end