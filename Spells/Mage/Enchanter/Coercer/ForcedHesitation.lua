function cast(Caster, Target)
  AddControlEffect(Target, 5)
  CastSpell(Target, 173468532, 1)
  AddProc(Target, 15, 5)
end

function proc(Caster, Target, ProcType)
  CancelSpell()
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 5)
  RemoveProc(Target)
end