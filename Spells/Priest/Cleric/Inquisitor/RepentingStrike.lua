function cast(Caster, Target)
  if IsEpic(Target) ~= true then
    AddControlEffect(Target, 4)
  end
end

function remove(Caster, Target)
  if IsEpic(Target) ~= true then
    RemoveControlEffect(Target, 4)
  end
end