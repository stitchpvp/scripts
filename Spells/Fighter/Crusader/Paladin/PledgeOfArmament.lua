function cast(Caster, Target, MitigationBuff, MitigationDebuff)
  AddSpellBonus(Target, 200, MitigationBuff)
  AddSpellBonus(Caster, 200, MitigationDebuff)
end

function remove(Caster, Target)
  RemoveSpellBonus(Caster)
  RemoveSpellBonus(Target)
end