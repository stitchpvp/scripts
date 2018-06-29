function cast(Caster, Target, StrBuff, MagicResist, BaseAvoidance)
  AddSpellBonus(Caster, 0, StrBuff)
  AddSpellBonus(Caster, 201, MagicResist)
  AddSpellBonus(Caster, 202, MagicResist)
  AddSpellBonus(Caster, 203, MagicResist)
  AddSpellBonus(Caster, 696, BaseAvoidance)
end

function remove(Caster, Target)
  RemoveSpellBonus(Caster)
end