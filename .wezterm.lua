-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.front_end = "OpenGL"
config.default_cursor_style = "BlinkingBlock"
config.term = "xterm-256color"
-- This is where you actually apply your config choices
config.prefer_egl = true
config.use_fancy_tab_bar = false
-- For example, changing the color scheme:
config.color_scheme = 'Dracula (Official)'
config.font = wezterm.font('0xProto Nerd Font Mono Normal')
config.window_background_opacity = 1 

config.window_decorations = "NONE | RESIZE"

config.default_prog = { "powershell.exe", "-NoLogo" }

config.initial_cols = 80
-- and finally, return the configuration to wezterm
return config
