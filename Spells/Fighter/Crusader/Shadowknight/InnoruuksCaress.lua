function cast(Caster, Target)
  AddProc(Target, 4, 100)
end

function proc(Caster, Target, Type, HateAmt, Dmg)
  AddHate(Caster, Target, HateAmt)

  ProcDamage(Caster, Target, "Caress Feedback", 8, Dmg)

  if IsPlayer(Target) then
    SetTarget(Target, Caster)
  end
end

function remove(Caster, Target)
  RemoveProc(Target)
end
