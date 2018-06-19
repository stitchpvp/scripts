function cast(Caster, Target, MinDmg, MaxDmg, WisAmt)
  SpellDamage(Target, 2, MinDmg, MaxDmg)
  AddSpellBonus(Target, 3, WisAmt)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target, 3)
end