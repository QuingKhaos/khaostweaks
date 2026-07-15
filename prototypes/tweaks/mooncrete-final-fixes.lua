local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if mods["mooncrete"] then
  khaoslib_recipe:load("mooncrete")
    :remove_unlock("muluna-advanced-stone-processing")
    :commit()

  khaoslib_recipe:load("refined-mooncrete")
    :remove_unlock("muluna-alumina-processing")
    :commit()
end
