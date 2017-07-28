function cast(Caster, Target, MinDmg, MaxDmg, MinHeal, MaxHeal, StrDebuff, StrBuff)
  ProcDamage(Caster, Target, "Reaper Strike", 7, MinDmg, MaxDmg, 0, "You hit %t with Reaper Strike")
  ProcHeal(Caster, Caster, "Reaper Strike", "Heal", MinHeal, MaxHeal)
  AddSpellBonus(Target, 0, StrDebuff)
  AddSpellBonus(Caster, 0, StrBuff)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
  RemoveSpellBonus(Caster)
end
