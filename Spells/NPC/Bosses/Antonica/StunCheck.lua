function cast(Caster, Target)
  AddControlEffect(Target, 4) --[stun]
  SpellDamage(Target, 8, 203, 534) --[disease-type damage]
  AddSpellBonus(Target, 664, -50) --[casting speed]
end

function tick(Caster, Target)
  SpellDamage(Target, 8, 100, 120)
  SpellDamage(Target, 8, 100, 120)
end