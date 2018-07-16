function cast(Caster, Target)
  AddImmunitySpell(Caster, 2)
  AddImmunitySpell(Caster, 4)
end

function remove(Caster, Target)
  RemoveImmunitySpell(Caster, 2)
  RemoveImmunitySpell(Caster, 4)
end