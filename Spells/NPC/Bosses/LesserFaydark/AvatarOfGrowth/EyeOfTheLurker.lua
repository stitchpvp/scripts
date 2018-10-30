function cast(Caster, Target)
  SetTempVariable(Target, "moved", nil)
  AddSpellTimer(1000, "movement_check")
end

function movement_check(Caster, Target)
  if HasMoved(Target) and GetTempVariable(Target, "moved") == nil then
    SetTempVariable(Target, "moved", "true")
    AddSpellTimer(6000, "movement_check")
  elseif HasMoved(Target) and GetTempVariable(Target, "moved") ~= nil then
    SetTempVariable(Target, "moved", "true")
    AddSpellTimer(6000, "movement_check")
  elseif not HasMoved(Target) and GetTempVariable(Target, "moved") == nil then
    SetTempVariable(Target, "moved", nil)
    AddSpellTimer(6000, "movement_check")
  end
end

function remove(Caster, Target)
  SetTempVariable(Target, "moved", nil)
end
