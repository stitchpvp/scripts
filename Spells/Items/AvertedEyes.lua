function cast(caster, target)
  Say(caster, "I am the victim")
  Say(target, "I am the attacker")
  SetTarget(target, 0xFFFFFFFF)
end