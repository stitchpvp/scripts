function cast(Caster, Target)
  AddControlEffect(Target, 5)
  AddProc(Target, 2, 5)
end

function proc(Caster, Target)
  CancelSpell()
end

function remove(Caster, Target)
  RemoveProc(Target)
end
