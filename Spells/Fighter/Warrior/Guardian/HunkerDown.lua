function cast(Caster, Target, HasteDebuff, SelfSnare, Mitigation)
  local weapon = GetEquippedItemBySlot(Caster, 0)
  local proc_chance = GetProcPercentageForWeapon(weapon, 5.0)

  AddSpellBonus(Caster, 617, HasteDebuff)
  AddSpellBonus(Caster, 204, Mitigation)
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