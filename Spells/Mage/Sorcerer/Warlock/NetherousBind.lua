function cast(Caster, Target)
  AddControlEffect(Target, 5)
  AddProc(Target, 15, 15)
end

function proc()
  CancelSpell()
end

function remove(Caster, Target, SpellID)
  RemoveProc(Target)
  CastSpell(Target, SpellID, 1, Caster)
end