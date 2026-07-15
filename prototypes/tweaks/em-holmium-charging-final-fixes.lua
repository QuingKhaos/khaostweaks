local khaoslib_technology = require("__khaoslib__.technology")

if mods["em-holmium-charging"] then
  -- Update prerequisites and science packs to note that it requires the foundry
  khaoslib_technology:load("solid-state-holmium-refining")
    :add_prerequisite("metallurgic-science-pack")
    :add_science_pack({"metallurgic-science-pack", 1})
    :commit()
end
