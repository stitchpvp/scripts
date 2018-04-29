function cast(Caster, Target, MinDmg, MaxDmg, StrDebuff)
  SpellDamage(Target, 2, MinDmg, MaxDmg)
  AddSpellBonus(Target, 0, StrDebuff)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end
