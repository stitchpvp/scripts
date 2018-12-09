function cast(Caster, Target, SnareAmount, CastingDebuff, ReuseDebuff)
  SetSpellSnareValue(SnareAmount, Target)
  AddControlEffect(Target, 11)
  AddSpellBonus(Target, 662, ReuseDebuff)
  AddSpellBonus(Target, 664, CastingDebuff)
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 11)
  RemoveSpellBonus(Target)
end
