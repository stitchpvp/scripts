function cast(Caster, Target)
  AddControlEffect(Target, 2)
  AddProc(Target, 15, 100)

  BlurVision(Target, 1)
end

function proc(Caster, Target, ProcType)
  CancelSpell()
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 3)
  RemoveProc(Target)

  BlurVision(Target, 0)
end
