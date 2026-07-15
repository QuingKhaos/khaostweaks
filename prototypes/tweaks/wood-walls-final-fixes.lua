local khaoslib_item = require("__khaoslib__.prototypes.item")

if mods["Wood-Walls"] then
  khaoslib_item:load("wooden-wall")
    :set {order = "a[stone-wall]-0[wooden-wall]"}
    :commit()
end
