function cast(Caster, Target)
  AddControlEffect(Target, 5)
  AddProc(Target, 2, 15)
end

function proc(Caster, Target)
  CancelSpell()
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 5)
end