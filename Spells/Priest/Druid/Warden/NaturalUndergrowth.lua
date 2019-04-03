function precast(Caster, Target)
  if not IsEpic(Target) then
    return true
  else
	  SendMessage(Caster, "Does not affect Epic targets.", "yellow")
	  return false, 43
  end
end

function cast(Caster, Target, Debuff)
  AddControlEffect(Target, 5)
  AddProc(Target, 2, 5)
end

function proc(Caster, Target)
  CancelSpell()
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 5)
  CastSpell(Target, 9387478, 1, Caster)
end
