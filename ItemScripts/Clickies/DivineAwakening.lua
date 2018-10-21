function used(Item, Caster)
  local Target = GetTarget(Caster)
  
  if not IsAlive(Target) and Target ~= nil then
	CastSpell(Target, 95088869, 1, Caster)
	RemoveItem(Caster, 45975)
  else
	return
  end
end