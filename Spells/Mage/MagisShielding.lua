function cast(Caster, Target)
  local Level = GetLevel(Caster)
  local ExtraMit = 5 * (200 + 40 * Level) / (100 - 5)
  local BaseBonus = math.ceil(Level / 2)

  AddSkillBonus(Caster, GetSkillIDByName("Defense"), BaseBonus)
  AddSkillBonus(Caster, GetSkillIDByName("Focus"), BaseBonus)

  AddSpellBonus(Caster, 500, BaseBonus * 15)
  AddSpellBonus(Caster, 201, BaseBonus)
  AddSpellBonus(Caster, 202, BaseBonus)
  AddSpellBonus(Caster, 203, BaseBonus)
  AddSpellBonus(Caster, 204, ExtraMit)
end

function remove(Caster, Target)
  RemoveSkillBonus(Caster)
  RemoveSpellBonus(Caster)
end
