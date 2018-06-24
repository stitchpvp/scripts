function cast(Caster, Target)
  AddControlEffect(Target, 1)
  AddImmunitySpell(Target, 7)
  AddProc(Target, 15, 100)
end

function proc(Caster, Target, ProcType)
  CancelSpell()
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 3)
  RemoveImmunitySpell(Target, 7)
  RemoveProc(Target)
end