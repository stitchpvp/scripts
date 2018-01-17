function cast(Caster, Target)
  AddProc(Target, 16, 5)
end

function proc(Caster, Target, Type, SpellID)
  CastSpell(Caster, SpellID, 1, Target)
  CancelSpell()
end

function remove(Caster, Target)
  RemoveProc(Target)
end