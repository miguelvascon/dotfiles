local wezterm = require 'wezterm'
local mux = wezterm.mux
local config = {}

config.font_size = 12.0
config.font = wezterm.font 'JetBrains Mono'
config.color_scheme = 'Catppuccin Mocha'
config.hide_tab_bar_if_only_one_tab = true
config.window_decorations = "RESIZE"

config.window_padding = {
  left = 20,
  right = 20,
  top = 20,
  bottom = 20,
}

return config
