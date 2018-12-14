function cast(Caster, Target, Amount)
  SpellHeal(Target, "Power", Amount, Amount, 2, 1)
  SendPopUpMessage(Target, "You gained power from picking up the potion.", 173, 216, 230)
  SendMessage(Target, "\\#00AAAAYou gained power from picking up the potion.")
end
