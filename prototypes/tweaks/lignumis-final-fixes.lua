local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")
local khaoslib_technology = require("__khaoslib__.prototypes.technology")

if mods["lignumis"] then
  if mods["barrel-stages"] then
    khaoslib_technology:load("automation-2")
      :remove_unlock_recipe("wood-pulp-barrel")
      :remove_unlock_recipe("empty-wood-pulp-barrel")
      :commit()

    khaoslib_technology:load("wood-liquefaction")
      :add_unlock_recipe("wood-pulp-barrel")
      :add_unlock_recipe("empty-wood-pulp-barrel")
      :commit()
  end
end
