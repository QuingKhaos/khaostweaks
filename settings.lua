local khaoslib_setting = require("__khaoslib__.settings.setting")

khaoslib_setting:load {
  type = "bool-setting",
  name = "khaostweaks-vanilla-hazard-concrete-slow-movement",
  setting_type = "startup",
  default_value = true,
  order = "a[tweaks]-a[vanilla]-a[hazard-concrete]-a[slow-movement]",
} :commit()
