function cast(Caster, Target)
  AddImmunitySpell(Caster, 5, true)
  AddImmunitySpell(Caster, 6, true)
end

function remove(Caster, Target)
  RemoveImmunitySpell(Caster, 5)
  RemoveImmunitySpell(Caster, 6)
end