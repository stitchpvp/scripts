function cast(Caster, Target, FlatAmount, SpellName)
  ProcHeal(Caster, Caster, SpellName, "Power", FlatAmount, FlatAmount, false)
end

function tick(Caster, Target, FlatAmount, SpellName)
  ProcHeal(Caster, Caster, SpellName, "Power", FlatAmount, FlatAmount, false)
end
