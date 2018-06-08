function cast(Caster, Target)
  AddControlEffect(Caster, 6)
  AddControlEffect(Caster, 11)
  SetSpellSnareValue(27.9, Caster)
  AddProc(Caster, 15, 30)
end

function proc(Caster, Target, ProcType)
  CancelSpell()
end

function remove(Caster, Target)
  RemoveControlEffect(Caster, 6)
  RemoveControlEffect(Caster, 11)
  RemoveProc(Caster)
end
