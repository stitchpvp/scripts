function cast(Caster, Target, AtkSpd, DPS)
  AddSpellBonus(Target, 617, AtkSpd)
  AddSpellBonus(Target, 629, DPS)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end
