function cast(Caster, Target)
  AddProc(Target, 5, 33)
  SpellDamage(Target, 8, 5, 25, 2)
end

function tick(Caster, Target)
  ProcDamage(Caster, Target, "Shimmer of Disease", 8, 1, 10)
end

function proc(Caster, Target, ProcType)
  if HasSpellEffect(Caster, 203266846) then
	SpellDamage(Caster, 8, 5, 25, 2)
  else
    CastSpell(Target, 203266846, 1)
  end
end

function remove(Caster, Target)
  RemoveProc(Target)
end