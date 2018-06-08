function cast(Caster, Target)
  AddProc(Caster, 1, 100)
end

function proc(Caster, Target, ProcType, MinDmg, MaxDmg)
  local DamageType = GetWeaponDamageType(Caster)

  ProcDamage(Caster, Target, "Enraged Vigor", DamageType, MinDmg, MaxDmg)

  local percentage = (GetHP(Caster) / GetMaxHP(Caster)) * 100
  if percentage <= 30 then
    MinDmg = MinDmg * 2
    MaxDmg = MaxDmg * 2
  end

  ProcHeal(Caster, Caster, "Enraged Vigor", "Heal", MinDmg, MaxDmg)
end

function remove(Caster, Target)
  RemoveProc(Caster)
end
