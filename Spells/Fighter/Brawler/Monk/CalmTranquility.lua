function cast(Caster, Target, CastSpeed, AttackSpeed)
  AddSpellBonus(Target, 617, AttackSpeed)
  AddSpellBonus(Target, 664, CastSpeed)
end

function remove(Caster, Target)
  RemoveSpellBonus(Caster)
end