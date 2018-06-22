function cast(Caster, Target)
  AddProc(Target, 3, 20)
end

function proc(Caster, Target, ProcType)
  if HasSpellEffect(Target, 261377806) then
    return
  else
    CastSpell(Target, 261377806, 1, GetCaster())
  end
end

function remove(Caster, Target)
  RemoveProc(Target)
end