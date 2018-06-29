function cast(Caster, Target, MinDmg, MaxDmg)
  local DamageType = GetWeaponDamageType(Caster)

  SpellDamage(Target, DamageType, MinDmg, MaxDmg)

  if LastSpellAttackHit() then
    for i = 1, 4 do
      ProcDamage(Caster, Target, "Five Rings", DamageType, MinDmg, MaxDmg)

      if not LastProcHit(Caster) then
	    break
      end

    end
  end
end