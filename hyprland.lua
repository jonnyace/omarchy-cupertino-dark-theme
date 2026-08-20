local active_border_color = { colors = { "rgba(0A84FFee)", "rgba(BF5AF2cc)" }, angle = 45 }
local inactive_border_color = "rgba(8E8E934d)"

hl.config({
  general = {
    gaps_in = 4,
    gaps_out = 9,
    border_size = 1,
    col = {
      active_border = active_border_color,
      inactive_border = inactive_border_color,
    },
  },

  group = {
    col = {
      border_active = active_border_color,
      border_inactive = inactive_border_color,
    },
  },

  decoration = {
    rounding = 10,
    rounding_power = 2,

    shadow = {
      enabled = true,
      range = 22,
      render_power = 3,
      color = "rgba(00000080)",
      color_inactive = "rgba(00000040)",
    },

    blur = {
      enabled = true,
      size = 8,
      passes = 3,
      vibrancy = 0.18,
    },
  },
})

hl.layer_rule({
  match = {
    namespace = "^omarchy-(bar|menu|image-selector|emojis|clipboard|keyboard-panel|network-qr|notifications|osd|polkit|reminders)$",
  },
  blur = true,
  blur_popups = true,
  ignore_alpha = 0.12,
})
