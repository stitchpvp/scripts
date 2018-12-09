function cast(Caster, Target, Unconscious)
  AddSpellBonus(Caster, 661, Unconscious)
  AddControlEffect(Caster, 2)
  AddControlEffect(Caster, 3)
  SetIllusion(Caster, 235)
end

function remove(Caster, Target)
  ResetIllusion(Caster)
  RemoveSpellBonus(Caster)
  RemoveControlEffect(Caster, 2)
  RemoveControlEffect(Caster, 3)

  if not SpellWasCured(Caster) then
    KillSpawn(Caster)
  end
end
