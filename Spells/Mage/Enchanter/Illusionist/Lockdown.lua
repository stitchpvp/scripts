function cast(Caster, Target)
  AddControlEffect(Target, 5)
  AddProc(Target, 15, 5)

  CastSpell(Target, 12911009, 1, Caster)
end

function proc(Caster, Target, ProcType)
  CancelSpell()
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 5)
  RemoveProc(Target)
end
