function cast(Caster, Target)
  AddControlEffect(Target, 1)
  AddImmunitySpell(Target, 7)
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 3)
  RemoveImmunitySpell(Target, 7)
end