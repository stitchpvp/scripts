function cast(Caster, Target, MaxHP, DPS)
  AddSpellBonus(Target, 500, MaxHP)
  AddSpellBonus(Target, 629, DPS)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end