function cast(Caster, Target)
  AddControlEffect(Target, 1)
  AddImmunitySpell(Target, 7)
  AddProc(Target, 15, 100)
end

function proc(Caster, Target)
  CancelSpell()
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 1)
  RemoveImmunitySpell(Target, 7)
  RemoveProc(Target)
end
