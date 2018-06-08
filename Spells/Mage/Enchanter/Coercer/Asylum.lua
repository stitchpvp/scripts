function cast(Caster, Target, MinDmg, MaxDmg)
  SpellDamage(Target, 6, MinDmg, MaxDmg)
end

function tick(Caster, Target, MinDmg, MaxDmg)
  SpellDamage(Target, 6, MinDmg, MaxDmg)
end

function remove(Caster, Target, MinDmg, MaxDmg)
  local spell_caster = GetCaster()
  local power_percent = GetPower(Target) / GetMaxPower(Target)

  if power_percent >= 0.5 then
    ProcDamage(spell_caster, Target, "Forceful Headache", 6, MinDmg, MaxDmg)
  else
    return
  end
end
