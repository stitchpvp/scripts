function cast(Caster, Target, MinDmg, MaxDmg, MitDebuff)
  AddSpellBonus(Target, 203, MitDebuff)
  SpellDamage(Target, 6, MinDmg, MaxDmg)
end

function tick(Caster, Target, MinDmg, MaxDmg)
  SpellDamage(Target, 6, MinDmg, MaxDmg)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end
