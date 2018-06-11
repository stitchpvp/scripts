function cast(Caster, Target, Accuracy, SkillAmt, AttackSpeed, DpsAmount, SkillDebuff)
  AddSpellBonus(Caster, 682, Accuracy)
  AddSkillBonus(Target, GetSkillIDByName("Slashing"), SkillAmt)
  AddSkillBonus(Target, GetSkillIDByName("Crushing"), SkillAmt)
  AddSkillBonus(Target, GetSkillIDByName("Piercing"), SkillAmt)
  AddSkillBonus(Caster, GetSkillIDByName("Ranged"), SkillAmt)
  AddSpellBonus(Caster, 617, AttackSpeed)
  AddSpellBonus(Caster, 629, DpsAmount)
  AddSkillBonus(Caster, GetSkillIDByName("Slashing"), SkillDebuff)
  AddSkillBonus(Caster, GetSkillIDByName("Piercing"), SkillDebuff)
  CastSpell(Caster, 230001333, 1)
end

function remove(Caster, Target)
  RemoveSkillBonus(Target)
  RemoveSpellBonus(Caster)
end