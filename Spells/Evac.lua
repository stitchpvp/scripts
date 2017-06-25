function cast(Caster, Target)
  x,y,z = GetCurrentZoneSafeLocation(Target)
  -- SetPosition(Target, x, y, z)
  Zone(GetZone(Target), Target, x, y, z)
end