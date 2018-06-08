function cast(Caster, Target)
  AddControlEffect(Target, 5)
  AddProc(Target, 15, 15)
end

function proc()
  CancelSpell()
end

function remove(Caster, Target)
  RemoveProc(Target)
  CastSpell(Target, 146184762, 1, Caster)
end