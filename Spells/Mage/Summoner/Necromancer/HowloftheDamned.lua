function precast(Caster, Target)
  local pet = GetPet(Caster)

  if pet == nil then
	return false, 38
  else
    return true
  end
end

function cast(Caster, Target, DmgAmt, HealAmt, AttackSpeed, DefenseDebuff, CastSkills)
  local pet = GetPet(Caster)
  AddSpellBonus(pet, 617, AttackSpeed)
  AddSkillBonus(pet, GetSkillIDByName("Defense"), DefenseDebuff)
  AddSkillBonus(pet, GetSkillIDByName("Parry"), DefenseDebuff)
  AddSkillBonus(pet, GetSkillIDByName("Focus"), CastSkills)
  AddSkillBonus(pet, GetSkillIDByName("Subjugation"), CastSkills)
  AddSkillBonus(pet, GetSkillIDByName("Disruption"), CastSkills)

  AddProc(pet, 1, 100)
  CastSpell(pet, 133049473, 1, Caster)
end

function proc(Caster, Target, Type, DmgAmt, HealAmt, AttackSpeed, DefenseDebuff, CastSkills)
  ProcDamage(Caster, Target, "Clawing of the Soul", 8, DmgAmt)
  SpellHeal(Caster, "Heal", HealAmt)
end

function remove(Caster, Target)
  local pet = GetPet(Caster)

  if pet ~= nil then
	CastSpell(pet, 133049473, 1, Caster)
	RemoveProc(pet)
  end
end
