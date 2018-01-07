function cast(Caster, Pet, Dmg, Power)
  SpellDamage(Pet, 5, Dmg)
  SpellHeal(Caster, "Power", Power)
end

function tick(Caster, Pet, Dmg, Power)
  SpellDamage(Pet, 5, Dmg)
  SpellHeal(Caster, "Power", Power)
end