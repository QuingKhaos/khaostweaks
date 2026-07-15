local khaoslib_technology = require("__khaoslib__.prototypes.technology")

if mods["tungsten-expansion"] then
  if settings.startup["khaostweaks-tungsten-expansion-modify-tungsten-weaponry-technology"].value then
    khaoslib_technology:load("tungsten-weaponry")
      :remove_prerequisite("tungsten-carbide")
      :add_prerequisite("metallurgic-science-pack")
      :unset("research_trigger")
      :set_unit {
        time = 60,
        count = 250,
        ingredients = {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"military-science-pack", 1},
          {"chemical-science-pack", 1},
          {"utility-science-pack", 1},
          {"space-science-pack", 1},
          {"metallurgic-science-pack", 1},
        },
      }
      :commit()
  end
end
