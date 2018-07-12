function cast(Caster, Target, AttackSpeed, MaxHP, HateGain, Aggression, Mitigation)
  local pet = GetPet(Caster)
  AddSpellBonus(pet, 617, AttackSpeed)
  AddSpellBonus(pet, 607, MaxHP)
  AddSpellBonus(pet, 624, HateGain)
  AddSkillBonus(pet, GetSkillIDByName("Aggression"), Aggression)

  AddSpellBonus(pet, 201, Mitigation)
  AddSpellBonus(pet, 202, Mitigation)
  AddSpellBonus(pet, 203, Mitigation)

  AddProc(pet, 1, 100)
  AddProc(pet, 2, 100)
  CastSpell(pet, 145538487, 1, Caster)
end

function proc(Caster, Target, Type, AttackSpeed, MaxHP, HateGain, Aggression, Mitigation, DmgAmt, HealAmt, MinHate, MaxHate)
  if Type == 1 then
    local HateAmt = math.random(MinHate, MaxHate)
    AddHate(Caster, Target, HateAmt)
  elseif Type == 2 then
    ProcDamage(Caster, Target, "Grisly Feedback", 8, DmgAmt)
    SpellHeal(Caster, "Heal", HealAmt)
  end
end

function remove(Caster, Target)
  local pet = GetPet(Caster)

  if pet ~= nil then
	CastSpell(pet, 145538487, 1, Caster)
	RemoveSpellBonus(pet)
	RemoveSkillBonus(pet)
	RemoveProc(pet)
  end
end