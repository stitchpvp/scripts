function cast(Caster, Target)
  AddImmunitySpell(Caster, 1)
  AddImmunitySpell(Caster, 2)
  AddImmunitySpell(Caster, 3)
  AddImmunitySpell(Caster, 4)
  AddImmunitySpell(Caster, 5)
  AddImmunitySpell(Caster, 6)

  AddProc(Caster, 13, 100)
end

function proc(Caster, Target)
  local hp = GetMaxHP(Caster)

  SpellHeal(Caster, "Heal", hp, hp)
end

function remove(Caster, Target)
  RemoveImmunitySpell(Caster, 1)
  RemoveImmunitySpell(Caster, 2)
  RemoveImmunitySpell(Caster, 3)
  RemoveImmunitySpell(Caster, 4)
  RemoveImmunitySpell(Caster, 5)
  RemoveImmunitySpell(Caster, 6)

  RemoveProc(Caster)
end
