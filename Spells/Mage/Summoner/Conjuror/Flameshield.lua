function cast(Caster, Target, MinDmg, MaxDmg)
  AddProc(Target, 4, 100)
end

function proc(Caster, Target, ProcType, MinDmg, MaxDmg)
  local grp = GetGroup(Target)

  if grp == nil then
    ProcDamage(Caster, Target, "Flameshield", 3, MinDmg, MaxDmg)
  else
    for k, v in ipairs(grp) do
      ProcDamage(Caster, v, "Flameshield", 3, MinDmg, MaxDmg)
    end
  end
end

function remove(Caster, Target)
  RemoveProc(Target)
end
