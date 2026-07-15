local khaoslib_recipe = require("__khaoslib__.recipe")

if mods["carbonut_agriculture"] then
  khaoslib_recipe:load {
    type = "recipe",
    name = "carbonut-spoilage",
    order = "b[agriculture]-a[carbonut]c",
    subgroup = "agriculture-processes",
    enabled = false,
    auto_recycle = false,
    allow_productivity = true,
    allow_decomposition = false,
    energy_required = 1.6,
  } :set_categories {mods["alloy-smelting"] and "kiln-smelting" or "smelting"}
    :set_icons {
      {icon = "__carbonut_agriculture__/graphics/carbonut.png", icon_size = 64, shift = {-12, -12}, scale = 0.4},
      {icon = "__space-age__/graphics/icons/spoilage.png", draw_background = true},
    }
    :set_ingredients {
      {type = "item", name = "carbonut", amount = 2},
    }
    :set_results {
      {type = "item", name = "spoilage", amount = 1},
    }
    :add_unlock("carbonut-agriculture")
    :commit()
end
