function cast(Caster, Target, SnareAmount)
  SetSpellSnareValue(SnareAmount, Target)
  AddControlEffect(Target, 6)
  AddControlEffect(Target, 11)
  AddProc(Target, 15, 30)
end

function proc()
  CancelSpell()
end

function remove(Caster, Target, SpellID)
  RemoveProc(Target, 15)
end