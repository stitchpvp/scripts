function cast(Caster, Target, AtkSpd, DPS)
  AddSpellBonus(Target, 613, AtkSpd)
  AddSpellBonus(Target, 624, DPS)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end
