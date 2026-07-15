local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if mods["aquilo-seabloom-algaculture"] then
  if mods["alloy-smelting"] then
    khaoslib_recipe:load("seawilt-spoilage")
      :set_categories {"kiln-smelting"}
      :commit()
  end
end
