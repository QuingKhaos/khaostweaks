local khaoslib_entity = require("__khaoslib__.prototypes.entity")
local khaoslib_item = require("__khaoslib__.prototypes.item")
local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if mods["wood-logistics"] then
  if mods["SchallTransportGroup"] then
    if settings.startup["wood-logistics-cargo-wagon"].value then
      khaoslib_entity:load("cargo-wagon", "wood-cargo-wagon"):set {subgroup = "vehicles-railway"} :commit()
      khaoslib_item:load("item-with-entity-data", "wood-cargo-wagon"):set {subgroup = "vehicles-railway"} :commit()
      khaoslib_recipe:load("wood-cargo-wagon"):set {subgroup = "vehicles-railway"} :commit()
    end
  end
end
