function spawn(NPC)
  CastSpell(NPC, 1002187, 1)
  AddTimer(NPC, 45000, "slaughter") --[change back to 390000 when done testing]
end

function slaughter(NPC, Target)
  if IsInCombat(NPC) == false then
    SendPopUpMessage(Target, "Arcane Poxule has not been tagged by a mage or priest, therefore releasing massive diseases and plagues to your raid force!", 255, 0, 0)
    SendMessage(Target, "Arcane Poxule has not been tagged by a mage or priest, therefore releasing massive diseases and plagues to your raid force!", "red")
    CastSpell(NPC, 1002187, 1)
  end
  
  if IsInCombat(NPC) == true then
    SendPopUpMessage(Target, "Arcane Poxule has been up for too long, sending out massive diseases and plagues to your raid force!", 255, 0, 0)
    SendMessage(Target, "Arcane Poxule has been up for too long, sending out massive diseases and plagues to your raid force!", "red")
    CastSpell(NPC, 1002187, 1)
  end
end