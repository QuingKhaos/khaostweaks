local khaoslib_setting = require("__khaoslib__.settings.setting")

if mods["burnerBiochamber"] then
  khaoslib_setting:load {
    type = "bool-setting",
    name = "khaostweaks-burner-biochamber-custom-technology",
    setting_type = "startup",
    default_value = true,
    order = "a[tweaks]-a[burner-biochamber]-a[custom-technology]",
  } :commit()
end

if mods["carbonut_agriculture"] then
  if mods["alloy-smelting"] then
    khaoslib_setting:load {
      type = "bool-setting",
      name = "khaostweaks-carbonut-agriculture-alloy-smelting-carbonut-spoilage",
      setting_type = "startup",
      default_value = true,
      order = "a[tweaks]-b[carbonut-agriculture]-a[alloy-smelting]-a[carbonut-spoilage]",
    } :commit()
  end
end

khaoslib_setting:load {
  type = "bool-setting",
  name = "khaostweaks-vanilla-hazard-concrete-slow-movement",
  setting_type = "startup",
  default_value = true,
  order = "a[tweaks]-c[vanilla]-a[hazard-concrete]-a[slow-movement]",
} :commit()

if mods["tungsten-expansion"] then
  khaoslib_setting:load {
    type = "bool-setting",
    name = "khaostweaks-tungsten-expansion-modify-tungsten-weaponry-technology",
    setting_type = "startup",
    default_value = true,
    order = "a[tweaks]-d[tungsten-expansion]-a[modify-tungsten-weaponry-technology]",
  } :commit()
end

if mods["aquilo-seabloom-algaculture"] then
  if mods["alloy-smelting"] then
    khaoslib_setting:load {
      type = "bool-setting",
      name = "khaostweaks-aquilo-seabloom-algaculture-alloy-smelting-seawilt-spoilage",
      setting_type = "startup",
      default_value = true,
      order = "a[tweaks]-e[aquilo-seabloom-algaculture]-a[alloy-smelting]-a[seawilt-spoilage]",
    } :commit()
  end
end
