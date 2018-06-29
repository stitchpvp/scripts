function cast(Caster, Target)
  SetTempVariable(Caster, "didnt_expire", nil)
end

function remove(Caster, Target)
  local Grummus = GetSpawn(Caster, 2520012)
  local most_hated = GetMostHated(Grummus)
  local sendmsgtoall = GetGroup(most_hated)

  if not HasGroup(most_hated) then
    if GetTempVariable(Caster, "didnt_expire") == nil then
      SendPopUpMessage(Target, "" .. GetName(Target) .. " failed to cure in time. Grummus casts Plaguish Dominance on the raid!", 255, 0, 0)
      SendMessage(Target, "" .. GetName(Target) .. " failed to cure in time. Grummus casts Plaguish Dominance on the raid!", "red")
      Say(Grummus, "Hahaha! Die!")
      SetTempVariable(Caster, "didnt_expire", nil)
      CastSpell(Grummus, 209997759, 1, Caster) --Consume Soul
      CastSpell(Grummus, 242847223, 1) --Plaguish Dominance
    end
  else
    if GetTempVariable(Caster, "didnt_expire") == nil then
      for _, players in ipairs(sendmsgtoall) do
        SendPopUpMessage(players, "" .. GetName(Target) .. " failed to cure in time. Grummus casts Plaguish Dominance on the raid!", 255, 0, 0)
        SendMessage(players, "" .. GetName(Target) .. " failed to cure in time. Grummus casts Plaguish Dominance on the raid!", "red")
        CastSpell(Target, 209997759, 1, Caster) --Consume Soul
        CastSpell(Grummus, 242847223, 1) --Plaguish Dominance
      end
      Say(Grummus, "Hahaha! Die!")
      SetTempVariable(Caster, "didnt_expire", nil)
    end
  end
end
