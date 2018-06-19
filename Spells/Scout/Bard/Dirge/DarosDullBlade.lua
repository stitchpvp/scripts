function cast(Caster, Target, MinDmg, MaxDmg, DPSDebuff)
  SpellDamage(Target, 2, MinDmg, MaxDmg)
  AddSpellBonus(Target, 629, DPSDebuff)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target, 629)
end