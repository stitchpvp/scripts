function cast(Caster, Target)
  AddImmunitySpell(Caster, 3)
  AddImmunitySpell(Caster, 4)
  AddImmunitySpell(Caster, 5)
end

function remove(Caster, Target)
  RemoveImmunitySpell(Caster, 3)
  RemoveImmunitySpell(Caster, 4)
  RemoveImmunitySpell(Caster, 5)
end