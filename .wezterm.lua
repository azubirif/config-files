-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.front_end = "OpenGL"
config.default_cursor_style = "BlinkingBlock"
config.term = "xterm-256color"
config.font_size = 16.0
-- This is where you actually apply your config choices
config.prefer_egl = true
config.use_fancy_tab_bar = false
-- For example, changing the color scheme:
config.color_scheme = 'Zenburn'
config.font = wezterm.font('JetBrains Mono')
config.window_background_opacity = 0.9 

-- config.window_decorations = "NONE | RESIZE"

config.initial_cols = 80
-- and finally, return the configuration to wezterm
return config
