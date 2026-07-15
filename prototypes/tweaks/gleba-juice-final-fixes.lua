local khaoslib_item = require("__khaoslib__.prototypes.item")
local khaoslib_item_subgroup = require("__khaoslib__.prototypes.item-subgroup")
local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if mods["gleba-juice"] then
  khaoslib_recipe:load("juice-filtering")
    :set {order = "b[agriculture]-d[bacteria]-a[carbon-bacteria]"}
    :set {subgroup = "agriculture-processes"}
    :commit()

  if mods["bioprocessing-tab"] then
    khaoslib_item_subgroup:load {
      type = "item-subgroup",
      name = "gleba-juice",
      group = "bioprocessing",
      order = "n"
    } :commit()

    khaoslib_item:load("carbon-bacteria"):set {subgroup = "gleba-juice"} :commit()
    khaoslib_recipe:load("carbon-bacteria-breeding"):set {subgroup = "gleba-juice"} :commit()
    khaoslib_recipe:load("juice-filtering"):set {subgroup = "gleba-juice"} :commit()
    khaoslib_recipe:load("jellynut-juicing"):set {subgroup = "gleba-juice"} :commit()
    khaoslib_recipe:load("yumako-juicing"):set {subgroup = "gleba-juice"} :commit()
  end
end
