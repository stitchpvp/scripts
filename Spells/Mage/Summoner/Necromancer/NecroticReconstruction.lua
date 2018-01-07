function cast(Caster, Pet, DispelLevels, HealAmt, HealTickAmt)
    CureByType(Pet, DispelLevels, 0)

    SpellHeal(Pet, "Heal", HealAmt)
end

function tick(Caster, Pet, DispelLevels, HealAmt, HealTickAmt)
    SpellHeal(Pet, "Heal", HealTickAmt)
end
