local khaoslib_technology = require("__khaoslib__.prototypes.technology")

if mods["mooncrete"] then
  khaoslib_technology:load {
    type = "technology",
    name = "mooncrete",
    localised_name = {"item-name.mooncrete"},
  } :set_icons {{icon = "__khaostweaks__/graphics/technology/mooncrete.png", icon_size = 256}}
    :set_prerequisites {
      "muluna-regolith-digging",
      "muluna-alumina-processing",
      "wood-gas-processing",
      "space-science-pack",
    }
    :set_unit {
      time = 30,
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"space-science-pack", 1},
      },
    }
    :add_unlock_recipe("mooncrete")
    :add_unlock_recipe("refined-mooncrete")
    :commit()
end
