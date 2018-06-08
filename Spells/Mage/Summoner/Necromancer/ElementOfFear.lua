function cast(Caster, Target)
  AddControlEffect(Target, 6)
  AddControlEffect(Target, 11)
  SetSpellSnareValue(27.9, Target)
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
