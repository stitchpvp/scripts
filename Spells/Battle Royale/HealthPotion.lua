function cast(Caster, Target, Amount)
  SpellHeal(Target, "Heal", Amount, Amount, 2, 1)
  SendPopUpMessage(Target, "You gained health for picking up the potion.", 242, 152, 142)
  SendMessage(Target, "\#F2988EYou gained health for picking up the potion.")
end
