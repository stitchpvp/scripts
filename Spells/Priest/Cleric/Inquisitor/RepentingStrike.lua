function cast(Caster, Target)
  if IsEpic(Caster) ~= true then
    AddControlEffect(Caster, 4)
  end
end

function remove(Caster, Target)
  if IsEpic(Caster) ~= true then
    RemoveControlEffect(Caster, 4)
  end
end