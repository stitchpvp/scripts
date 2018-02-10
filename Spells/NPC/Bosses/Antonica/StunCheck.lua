function cast(Caster, Target)
  AddControlEffect(Target, 4) --[stun]
  SpellDamage(Target, 8, 203, 534) --[disease-type damage]
  AddSpellBonus(Target, 664, -50) --[casting speed]
end