function cast(Caster, Target, CureLevel)
  AddImmunitySpell(Caster, 3)
  AddImmunitySpell(Caster, 4)
  AddImmunitySpell(Caster, 5)
  CureByType(Target, CureLevel, 2)
  CureByType(Target, CureLevel, 3)
  CureByType(Target, CureLevel, 4)
end

function remove(Caster, Target)
  RemoveImmunitySpell(Caster, 3)
  RemoveImmunitySpell(Caster, 4)
  RemoveImmunitySpell(Caster, 5)
end