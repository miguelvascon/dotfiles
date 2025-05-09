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

-- temporary fix for maxing window at startup until i get a wm
wezterm.on('gui-startup', function(window)
  local tab, pane, window = mux.spawn_window(cmd or {})
  local gui_window = window:gui_window();
  gui_window:maximize()
end)
config.native_macos_fullscreen_mode = true
-- temporary fix for maxing window at startup until i get a wm

return config
