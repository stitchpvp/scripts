function cast(Caster, Target, PowerAmount)
  ProcHeal(Caster, Target, "Mana Boon", "Power", PowerAmount)
  ProcHeal(Caster, Caster, "Mana Boon", "Power", PowerAmount)
end

function tick(Caster, Target, PowerAmount)
  ProcHeal(Caster, Target, "Mana Boon", "Power", PowerAmount)
  ProcHeal(Caster, Caster, "Mana Boon", "Power", PowerAmount)
end