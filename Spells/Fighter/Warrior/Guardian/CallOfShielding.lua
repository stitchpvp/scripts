function cast(Caster, Target, Amount, Defensive)
  AddSpellBonus(Target, 1, Amount)
  AddSkillBonus(Target, GetSkillIDByName("Defense"), Defensive)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
  RemoveSkillBonus(Target)
end