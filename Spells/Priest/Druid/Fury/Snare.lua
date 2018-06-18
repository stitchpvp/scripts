function cast(Caster, Target, SnareAmount)
  SetSpellSnareValue(SnareAmount, Target)
  AddControlEffect(Target, 11)
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 11)
end
