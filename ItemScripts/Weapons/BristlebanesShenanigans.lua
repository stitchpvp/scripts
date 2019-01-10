function equipped(Item, Player)
  AddProc(Player, 1, 33, Item)
  AddProc(Player, 12, 33, Item)
end

function proc(Item, Caster, Target)
  if HasSpellEffect(Caster, 264113811) or HasSpellEffect(Caster, 63457943) or HasSpellEffect(Caster, 212713100) then
    return
  else
    local choice = math.random(1, 3)
    if choice == 1 then
      CastSpell(Caster, 264113811, 1) --Chicanery
    elseif choice == 2 then
	  CastSpell(Caster, 63457943, 1) --Hocus-Pocus Focus
    elseif choice == 3 then
      CastSpell(Caster, 212713100, 1) --Razzle-Dazzle
    end
  end
end

function unequipped(Item, Player)
  RemoveProc(Player, Item)
end
