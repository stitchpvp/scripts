function used(Item, Caster)
  local Target = GetTarget(Caster)
  
  if not IsAlive(Target) and Target ~= nil then
	CastSpell(Target, 134401628, 1, Caster)
	RemoveItem(Caster, 48164)
  else
	return
  end
end