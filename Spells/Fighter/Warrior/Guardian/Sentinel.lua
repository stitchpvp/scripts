function cast(Caster, Target)
  AddProc(Target, 2, 7)
end

function proc(Caster, Target, ProcType)
  if not HasSpellEffect(Target, 179921359) then
    CastSpell(Target, 179921359, 1, GetCaster())
  end
end

function remove(Caster, Target)
  RemoveProc(Target)
end