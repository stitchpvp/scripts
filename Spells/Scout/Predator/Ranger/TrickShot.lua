function cast(Caster, Target, SpellID, MinDmg, MaxDmg)
  local DamageType = GetWeaponDamageType(Caster)

  AddProc(Target, 3, 100)
  SpellDamage(Target, DamageType, MinDmg, MaxDmg)
end

function proc(Caster, Target, ProcType, SpellID)
  CastSpell(Target, SpellID, 1)
  CancelSpell()
end

function remove(Caster, Target)
  RemoveProc(Target)
end