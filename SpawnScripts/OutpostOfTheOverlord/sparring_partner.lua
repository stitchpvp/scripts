function healthchanged(NPC, Spawn)
  local hp_percent = GetHP(NPC) / GetMaxHP(NPC)

  if HasQuest(Spawn, 184) and GetQuestStep(Spawn, 184) == 2 then
    if hp_percent <= 0.20 then
      SetStepComplete(Spawn, 184, 2)
    end
  end

  if hp_percent <= 0.20 then
    ClearHate(NPC, Spawn)
    SpawnSet(NPC, "attackable", "0")
    SpawnSet(NPC, "show_level", "0")
    Say(NPC, "Well done!", Spawn)
    AddTimer(NPC, 5000, "next_emote")
  end
end

function auto_attack_tick(NPC, Spawn)
  local hp_percent = GetHP(Spawn) / GetMaxHP(Spawn)

  if HasQuest(Spawn, 184) and GetQuestStep(Spawn, 184) == 2 then
    if hp_percent <= 0.10 then
      SetStepComplete(Spawn, 184, 2)
    end

  if hp_percent <= 0.10 then
    ClearHate(NPC, Spawn)
    SpawnSet(NPC, "attackable", "0")
    SpawnSet(NPC, "show_level", "0")
    Say(NPC, "Oof, at least you tried. Well done.")
    AddTimer(NPC, 5000, "next_emote")
  end
end

function next_emote(NPC, Spawn)
  local random = math.random(1, 2)

  if random == 1 then
    Say(NPC, "Next!")
  elseif random == 2 then
    Say(NPC, "Okay, who's next?")
  end
  SpawnSet(NPC, "attackable", "1")
  SpawnSet(NPC, "show_level", "1")
end
