function cast(Caster, Target) 
  AddProc(Caster, 5, 100)
end

function proc(Caster, Target, ProcType, Dmg) 
  local enemy = GetTarget(Caster)
  local hp_percent = GetHP(enemy) / GetMaxHP(enemy)

  if hp_percent <= 0.20 then
    SpellDamage(Target, 3, Dmg)
  else
    return
  end
end

function remove(Caster, Target)
  RemoveProc(Caster)
end