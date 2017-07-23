function cast(Caster, Target, Debuff, Buff, MaxHp, Mit)
  AddSpellBonus(Target, 4, Debuff)
  AddSpellBonus(Caster, 4, Buff)
  AddSpellBonus(Caster, 1, Buff)
  --AddSpellBonus(Target 607, MaxHp)
  AddSpellBonus(Caster, 201, Mit)
  AddSpellBonus(Caster, 202, Mit)
  AddSpellBonus(Caster, 203, Mit)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
  RemoveSpellBonus(Caster)
end
