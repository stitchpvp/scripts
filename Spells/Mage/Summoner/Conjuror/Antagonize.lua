function cast(Caster, Target, Haste, Debuff, MeleeSkills, SpellSkills, AbilityMod)
  local pet = GetPet(Caster)
  if not HasSpellEffect(pet, 96781662) then
    AddSpellBonus(pet, 617, Haste)
    AddSkillBonus(pet, GetSkillIDByName("Defense"), Debuff)
    AddSkillBonus(pet, GetSkillIDByName("Parry"), Debuff)
    AddSkillBonus(pet, GetSkillIDByName("Slashing"), MeleeSkills)
    AddSkillBonus(pet, GetSkillIDByName("Piercing"), MeleeSkills)
    AddSkillBonus(pet, GetSkillIDByName("Crushing"), MeleeSkills)
    AddSkillBonus(pet, GetSkillIDByName("Disruption"), SpellSkills)
    AddSkillBonus(pet, GetSkillIDByName("Subjugation"), SpellSkills)
    AddSkillBonus(pet, GetSkillIDByName("Ordination"), SpellSkills)
    AddSpellBonus(pet, 707, AbilityMod)
  else
    SendMessage(Caster, "You already have a pet stance up!", "yellow")
  end
end

function remove(Caster, Target)
  local pet = GetPet(Caster)
  RemoveSpellBonus(pet)
  RemoveSkillBonus(pet)
end