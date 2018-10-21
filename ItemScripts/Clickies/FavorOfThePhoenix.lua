function used(Item, Caster)
  local Target = GetTarget(Caster)
  
  if not IsAlive(Target) and Target ~= nil then
	CastSpell(Target, 194628300, 1, Caster)
	RemoveItem(Caster, 45833)
  else
	return
  end
end