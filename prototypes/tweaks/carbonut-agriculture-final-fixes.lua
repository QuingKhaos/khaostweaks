local khaoslib_recipe = require("__khaoslib__.recipe")
local khaoslib_technology = require("__khaoslib__.technology")

if mods["carbonut_agriculture"] then
  khaoslib_technology:load("planet-discovery-vulcanus")
    :remove_prerequisite("rocket-turret")
    :commit()

  khaoslib_technology:load("carbonut-agriculture")
    :add_unlock_recipe("agricultural-tower")
    :commit()
end
