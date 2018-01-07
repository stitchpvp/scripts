function cast(Caster, Pet, AttackSpeed, MaxHP, HateGain, Aggression, Mitigation)
  AddSpellBonus(Pet, 617, AttackSpeed)
  AddSpellBonus(Pet, 607, MaxHP)
  AddSpellBonus(Pet, 624, HateGain)
  AddSkillBonus(Pet, GetSkillIDByName("Aggression"), Aggression)

  AddSpellBonus(Pet, 201, Mitigation)
  AddSpellBonus(Pet, 202, Mitigation)
  AddSpellBonus(Pet, 203, Mitigation)

  AddProc(Pet, 1, 100)
  AddProc(Pet, 2, 100)
end

function proc(Caster, Target, Type, AttackSpeed, MaxHP, HateGain, Aggression, Mitigation, DmgAmt, HealAmt, MinHate, MaxHate)
  if Type == 1 then
    Say(Caster, "I should be taunting, but this didn't get set up yet.")
  elseif Type == 2 then
    ProcDamage(Caster, Target, "Grisly Feedback", 8, DmgAmt)
    SpellHeal(Caster, "Heal", HealAmt)
  end
end

function remove(Caster, Pet)
  RemoveSpellBonus(Pet)
  RemoveSkillBonus(Pet)
  RemoveProc(Pet)
end
