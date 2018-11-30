function cast(Caster, Target, HasteDebuff, SelfSnare, Mitigation, SnareProc, MaxHealth)
  local weapon = GetEquippedItemBySlot(Caster, 0)
  local proc_chance = GetProcPercentageForWeapon(weapon, 5.0)
  local maxhealth_percentage = GetMaxHP(Caster) * MaxHealth

  AddSpellBonus(Caster, 617, HasteDebuff)
  AddSpellBonus(Caster, 200, Mitigation)
  AddSpellBonus(Caster, 201, Mitigation)
  AddSpellBonus(Caster, 202, Mitigation)
  AddSpellBonus(Caster, 203, Mitigation)
  AddSpellBonus(Caster, 500, maxhealth_percentage)
  SetSpellSnareValue(SelfSnare, Caster)
  AddControlEffect(Caster, 11)
  AddProc(Caster, 1, proc_chance)
end

function proc(Caster, Target, ProcType)
  CastSpell(Target, 182658862, 1, Caster)
end

function remove(Caster, Target)
  RemoveControlEffect(Caster, 11)
  RemoveSpellBonus(Caster)
  RemoveProc(Caster)
end
