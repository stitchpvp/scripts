function cast(Caster, Target, healVal, tickHealVal, dispelLevels)
    SpellHeal("Heal", healVal)

    CureByType(1, 1, 0, dispelLevels)
    CureByType(1, 2, 0, dispelLevels)
    CureByType(1, 3, 0, dispelLevels)
    CureByType(1, 4, 0, dispelLevels)
end

function tick(Caster, Target, healVal, tickHealVal, dispelLevels)
    SpellHeal("Heal", tickHealVal)
end