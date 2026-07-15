local khaoslib_tile = require("__khaoslib__.prototypes.tile")

if settings.startup["khaostweaks-vanilla-hazard-concrete-slow-movement"].value then
  khaoslib_tile:load("hazard-concrete-left")
    :set {
      walking_speed_modifier = 0.5,
      vehicle_friction_modifier = 2
    }
    :commit()

  khaoslib_tile:load("hazard-concrete-right")
    :set {
      walking_speed_modifier = 0.5,
      vehicle_friction_modifier = 2
    }
    :commit()

  khaoslib_tile:load("refined-hazard-concrete-left")
    :set {
      walking_speed_modifier = 0.5,
      vehicle_friction_modifier = 500
    }
    :commit()

  khaoslib_tile:load("refined-hazard-concrete-right")
    :set {
      walking_speed_modifier = 0.5,
      vehicle_friction_modifier = 500
    }
    :commit()
end
