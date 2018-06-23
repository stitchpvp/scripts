function cast(Caster, Target, MinDmg, MaxDmg)
  AddImmunitySpell(Target, 7)
  SpellDamage(Target, 3, MinDmg, MaxDmg)
end

function tick(Caster, Target, MinDmg, MaxDmg)
  SpellDamage(Target, 3, MinDmg, MaxDmg)
end

function remove(Caster, Target)
  RemoveImmunitySpell(Caster, 7)
end