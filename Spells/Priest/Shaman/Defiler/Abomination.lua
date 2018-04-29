function cast(Caster, Target, StatDebuff, MaxHPDebuff)
  AddSpellBonus(Target, 0, StatDebuff)
  AddSpellBonus(Target, 2, StatDebuff)
  AddSpellBonus(Target, 3, StatDebuff)
  AddSpellBonus(Target, 4, StatDebuff)

  local healthDebuff = GetMaxHP(Target) * (MaxHPDebuff / 100)
  AddSpellBonus(Target, 500, (healthDebuff <= -1 and healthDebuff or -1))
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end
