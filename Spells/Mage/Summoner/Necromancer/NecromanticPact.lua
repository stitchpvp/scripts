function cast(Caster, Pet)
  AddProc(Pet, 1, 5)
  AddProc(Pet, 2, 25)
end

function proc(Caster, Target, Type, SpellID)
end

function remove(Caster, Pet)
  RemoveProc(Pet)
end
