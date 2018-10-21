function cast(Caster, Target)
  AddControlEffect(Target, 1)
  AddProc(Target, 15, 100)
end

function proc(Caster, Target, ProcType)
  CancelSpell()
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 1)
  RemoveProc(Target)
end