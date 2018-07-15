function cast(Caster, Target, MinHeal, MaxHeal, MaxHealth)
  local maxhealth_percentage = GetMaxHP(Target) * MaxHealth

  AddSpellBonus(Target, 501, maxhealth_percentage)
  AddProc(Target, 15, 100)
end

function proc(Caster, Target, ProcType, MinHeal, MaxHeal)
  local spell_caster = GetCaster()

  ProcHeal(spell_caster, Caster, "Divine Guidance", "Heal", MinHeal, MaxHeal)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
  RemoveProc(Target)
end