function cast(Caster, Target)
  AddControlEffect(Target, 3)
  BlurVision(Target, 8.0)
  AddProc(Target, 15, 100)
end

function proc(Caster, Target, ProcType)
  CancelSpell()
end

function remove(Caster, Target)
  BlurVision(Target, 0.0)
  RemoveControlEffect(Target, 3)
  RemoveProc(Target)
end
