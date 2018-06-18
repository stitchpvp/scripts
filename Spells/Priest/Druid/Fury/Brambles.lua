function cast(Caster, Target, Threat, SlowAmt)
  AddHate(Caster, Target, Threat)
  AddControlEffect(Target, 2)
  Interrupt(Caster, Target)
  SetSpellSnareValue(SlowAmt, Target)
  AddControlEffect(Target, 11)
  AddProc(Target, 2, 5)

  if IsPlayer(Target) then
    SetTarget(Target, 0xFFFFFFFF)
  end
end

function proc(Caster, Target)
  CancelSpell()
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 2)
  RemoveControlEffect(Target, 11)
  RemoveProc(Target)
end
