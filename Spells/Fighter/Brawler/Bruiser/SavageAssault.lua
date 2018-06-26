function cast(Caster, Target, MinDmg, MaxDmg)
  local DamageType = GetWeaponDamageType(Caster)

  SpellDamage(Target, DamageType, MinDmg, MaxDmg)

  if LastSpellAttackHit() then
    for i = 1, 3 do
      ProcDamage(Caster, Target, "Savage Assault", DamageType, MinDmg, MaxDmg)

      if not LastProcHit(Caster) then
        break
      end

    end
  end
end