function cast(Caster, Target, MinDmg, MaxDmg, MinHeal, MaxHeal, FriendlySpellID)
  if not HasSpellEffect(Caster, FriendlySpellID) then
    CastSpell(Caster, FriendlySpellID, 1)
  end

  SpellDamage(Target, 9, MinDmg, MaxDmg)
end

function tick(Caster, Target, MinDmg, MaxDmg)
  SpellDamage(Target, 9, MinDmg, MaxDmg)
end
