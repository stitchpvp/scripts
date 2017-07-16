function cast(caster, target)
  Say(caster, "I am caster")
  Say(target, "I am target")
  SetTarget(target, 0xFFFFFFFF)
end