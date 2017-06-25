function spawn(npc)
  AddTimer(npc, 300000, "CastPortal")
end

function CastPortal(npc)
  CastSpell(npc, 1001289, 1)
  AddTimer(npc, 300000, "CastPortal")
end