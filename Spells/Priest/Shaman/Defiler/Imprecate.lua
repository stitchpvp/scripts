function cast(Caster, Target, MinDmg, MaxDmg, DebuffAmt)
  SpellDamage(Target, 8, MinDmg, MaxDmg)
  AddSpellBonus(Target, 202, DebuffAmt)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end
