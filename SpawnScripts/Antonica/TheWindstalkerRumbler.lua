function attacked(NPC)
  SetTempVariable(NPC, "target_pct", 90)
end

function healthchanged(NPC, Target)
  local target_pct = GetTempVariable(NPC, "target_pct")
  local percent = GetCurrentHP(NPC) / GetMaxHP(NPC)

  if percent <= target_pct then
    Say(NPC, "Casting a spell!")

    if target_pct > 10 then
      SetTempVariable(NPC, "target_pct", target_pct - 10)
    end
  end
end
