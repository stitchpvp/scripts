function cast(Caster, Target, MinDmg, MaxDmg)
SpellDamage(Target, 8, MinDmg, MaxDmg)
  if LastSpellAttackHit() then
      SpellDamage(Target, 8, MinDmg, MaxDmg)
      if LastSpellAttackHit() then
        AddControlEffect(Target, 5)
        AddProc(Target, 2, 5)
      end
  end
end

function proc(Caster, Target)
  CancelSpell()
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 5)
  RemoveProc(Target)
end