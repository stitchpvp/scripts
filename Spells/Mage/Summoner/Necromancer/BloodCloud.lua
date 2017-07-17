function cast(Caster, Target, MinHeal, MaxHeal, MinDmg, MaxDmg)
  SpellHeal(Caster, "Heal", MinHeal, MaxHeal)
  SpellDamage(Target, 8, MinDmg, MaxDmg)
end

--function cast(Caster, Target, Dmg)
  --SpellDamage(Target, 8, Dmg)
--end
