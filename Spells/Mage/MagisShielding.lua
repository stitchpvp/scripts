function cast(Caster, Target, MaxHP, Avoidance, Offensive, Resists, WardAmt)
  AddSkillBonus(Caster, GetSkillIDByName("Defense"), Offensive)
  AddSkillBonus(Caster, GetSkillIDByName("Focus"), Offensive)

  AddSpellBonus(Caster, 500, MaxHP)
  AddSpellBonus(Caster, 201, Resists)
  AddSpellBonus(Caster, 202, Resists)
  AddSpellBonus(Caster, 203, Resists)
  AddSpellBonus(Caster, 696, Avoidance)
  AddWard(Caster, WardAmt, 1, 1)
end

function tick(Caster, Target, MaxHP, Avoidance, Offensive, Resists, WardAmt)
  AddToWard(Caster, WardAmt)
end

function remove(Caster, Target)
  RemoveSpellBonus(Caster)
  RemoveWard(Caster)
end