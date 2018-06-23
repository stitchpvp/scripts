function cast(Caster, Target, MinDmg, MaxDmg, DebuffAmt)
  SpellDamage(Target, 2, MinDmg, MaxDmg)

  AddSkillBonus(Target, GetSkillIDByName("Disruption"), DebuffAmt)
  AddSkillBonus(Target, GetSkillIDByName("Subjugation"), DebuffAmt)
  AddSkillBonus(Target, GetSkillIDByName("Ordination"), DebuffAmt)
  AddSkillBonus(Target, GetSkillIDByName("Ministration"), DebuffAmt)
end

function tick(Caster, Target, MinDmg, MaxDmg)
  SpellDamage(Target, 2, MinDmg, MaxDmg)
end

function remove(Caster, Target)
  RemoveSkillBonus(Target)
end