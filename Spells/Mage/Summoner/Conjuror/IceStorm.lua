function cast(Caster, Target, MinDmg, MaxDmg, SnareAmount)
  SpellDamage(Target, 8, MinDmg, MaxDmg)
  SetSpellSnareValue(SnareAmount, Target)
  AddControlEffect(Target, 11)
  AddProc(Target, 2, 5)
end

function proc(Caster, Target)
  CancelSpell()
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 11)
  RemoveProc(Target)
end