local khaoslib_entity = require("__khaoslib__.prototypes.entity")
local khaoslib_item = require("__khaoslib__.prototypes.item")
local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if mods["factorissimo-2-notnotmelon"] then
  khaoslib_entity:load("assembling-machine", "borehole-pump"):set {subgroup = "extraction-machine"} :commit()
  khaoslib_item:load("borehole-pump"):set {subgroup = "extraction-machine"} :commit()
  khaoslib_recipe:load("borehole-pump"):set {subgroup = "extraction-machine"} :commit()
end
