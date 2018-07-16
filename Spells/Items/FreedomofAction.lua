function cast(Caster, Target)
  AddImmunitySpell(Caster, 5)
  AddImmunitySpell(Caster, 6)
end

function remove(Caster, Target)
  RemoveImmunitySpell(Caster, 5)
  RemoveImmunitySpell(Caster, 6)
end