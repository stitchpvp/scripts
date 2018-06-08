function cast(Caster, Target, MinDmg, MaxDmg)
  SpellDamage(Target, 6, MinDmg, MaxDmg)
end

function remove(Caster, Target, MinDmg, MaxDmg)
  local spell_caster = GetCaster()
  local power_percent = GetPower(Caster) / GetMaxPower(Caster)

  if power_percent >= 50 then
    ProcDamage(spell_caster, Caster, "Forceful Headache", 6, MinDmg, MaxDmg)
  else
    return
  end
end