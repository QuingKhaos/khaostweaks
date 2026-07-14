local khaoslib_setting = require("__khaoslib__.settings.setting")

if mods["quantum-fabricator"] then
  khaoslib_setting:load("qf-early-digitizing-chest"):default(true):commit()
end
