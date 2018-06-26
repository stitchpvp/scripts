function cast(Caster, Target, MinDmg, MaxDmg)
  local DamageType = GetWeaponDamageType(Caster)

  SpellDamage(Target, DamageType, MinDmg, MaxDmg)

  if LastSpellAttackHit() then
    for i = 1, 7 do
      ProcDamage(Caster, Target, "One Hundred Hand Punch", DamageType, MinDmg, MaxDmg)

      if not LastProcHit(Caster) then
	    break
      end

    end
  end
end