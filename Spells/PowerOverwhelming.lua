function cast(Caster, Target)
  AddImmunitySpell(1, Caster)
  AddImmunitySpell(2, Caster)
  AddImmunitySpell(3, Caster)
  AddImmunitySpell(4, Caster)
  AddImmunitySpell(5, Caster)
  AddImmunitySpell(6, Caster)

  AddProc(Caster, 13, 100)
end

function proc(Caster, Target)
  local hp = GetMaxHP(Caster)

  SpellHeal(Caster, "Heal", hp, hp)
end

function remove(Caster, Target)
  RemoveImmunitySpell(1, Caster)
  RemoveImmunitySpell(2, Caster)
  RemoveImmunitySpell(3, Caster)
  RemoveImmunitySpell(4, Caster)
  RemoveImmunitySpell(5, Caster)
  RemoveImmunitySpell(6, Caster)
  
  RemoveProc(Caster)
end
