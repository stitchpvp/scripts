function cast(Caster, Target, DPS)
  AddSpellBonus(Target, 629, DPS)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end