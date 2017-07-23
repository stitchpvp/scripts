function precast (Caster, Target)
local Pet = GetPet(Caster)
  if Pet == true
   cast(Caster, Pet, dmg, power)
   SpellDamage(Target, 305, dmg)
   SpellHeal("Power", power)
  end
end

function tick(Caster, Pet, dmg, power)
    SpellDamage(Target, 305, dmg)
    SpellHeal("Power", power)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end
