function cast(Caster, Target)
  AddControlEffect(Caster, 3)
  BlurVision(Caster, 5)
  AddProc(Caster, 15, 100)
end

function proc(Caster, Target, ProcType)
  CancelSpell()
end

function remove(Caster, Target)
  BlurVision(Caster, 0)
  RemoveControlEffect(Caster, 3)
  RemoveProc(Caster)
end