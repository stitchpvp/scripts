function cast(Caster, Target, MaxPower, ArcaneMit)
  AddSpellBonus(Target, 501, MaxPower)
  AddSpellBonus(Target, 203, ArcaneMit)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end
