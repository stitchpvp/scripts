function cast(Caster, Target, AttackSpeed, DefenseDebuff, OffenseBuff)
  AddSpellBonus(Caster, 617, AttackSpeed)
  AddSkillBonus(Caster, GetSkillIDByName("Defense"), DefenseDebuff)
  AddSkillBonus(Caster, GetSkillIDByName("Slashing"), OffenseBuff)
  AddSkillBonus(Caster, GetSkillIDByName("Piercing"), OffenseBuff)
  AddSkillBonus(Caster, GetSkillIDByName("Crushing"), OffenseBuff)
  AddSkillBonus(Caster, GetSkillIDByName("Ranged"), OffenseBuff)
end

function remove(Caster, Target)
  RemoveSpellBonus(Caster)
  RemoveSkillBonus(Caster)
end
