function cast(Caster, Target, SnareAmount)
  AddControlEffect(Target, 6)
  AddControlEffect(Target, 11)
  SetSpellSnareValue(SnareAmount, Target)
  AddProc(Target, 15, 30)
end

function proc(Caster, Target, ProcType)
  CancelSpell()
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 6)
  RemoveControlEffect(Target, 11)
  RemoveProc(Target)
end
