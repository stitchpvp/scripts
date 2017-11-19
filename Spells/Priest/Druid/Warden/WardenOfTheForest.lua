function cast(Caster, Target, Focus, Mit, Resist)
  SetIllusion(Caster, 216)

  AddSkillBonus(Caster, 2638198038, Focus)

  AddSpellBonus(Caster, 204, Mit)

  AddSpellBonus(Caster, 201, Resist)
  AddSpellBonus(Caster, 202, Resist)
  AddSpellBonus(Caster, 203, Resist)

  AddSpellBonus(Caster, 634, 1)
end

function remove(Caster, Target)
  ResetIllusion(Caster)
  RemoveSpellBonus(Caster)
  RemoveSkillBonus(Caster)
end
