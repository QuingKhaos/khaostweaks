local khaoslib_technology = require("__khaoslib__.technology")

if mods["burnerBiochamber"] then
  if settings.startup["khaostweaks-burner-biochamber-custom-technology"].value then
    khaoslib_technology:load("biochamber")
      :remove_unlock_recipe(function(effect)
        return effect.type == "unlock-recipe" and effect.recipe and effect.recipe:match("burner%-biochamber")
      end, {all = true})
      :commit()
  end
end
