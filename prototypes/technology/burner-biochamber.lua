local khaoslib_technology = require("__khaoslib__.prototypes.technology")

if mods["burnerBiochamber"] then
  if settings.startup["khaostweaks-burner-biochamber-custom-technology"].value then
    khaoslib_technology:load {
      type = "technology",
      name = "burner-biochamber",
      localised_name = {"item-name.burner-biochamber"},
    } :set_icons {{icon = "__space-age__/graphics/technology/biochamber.png", icon_size = 256, tint = {r = 0.3, g = 0.3, b = 0.3}}}
      :set_prerequisites {
        "production-science-pack",
        "agricultural-science-pack"
      }
      :set_unit {
        time = 60,
        count = 1000,
        ingredients = {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1},
          {"production-science-pack", 1},
          {"space-science-pack", 1},
          {"agricultural-science-pack", 1},
        },
      }
      :add_unlock_recipe("burner-biochamber")
      :add_unlock_recipe("burner-biochamber-to-biochamber")
      :commit()
  end
end
