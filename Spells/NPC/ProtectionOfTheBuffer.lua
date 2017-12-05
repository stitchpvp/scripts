function cast(Caster, Target)
  AddProc(Target, 15, 100)
end

function proc(Caster, Target)
  local Spawn = GetSpawn(Caster, 6870000)

  if Spawn ~= nil and GetName(Target) ~= "The Buffer" then
    AddHate(Target, Spawn, 1)
  end
end


function remove(Caster, Target)
  RemoveProc(Target)
end
