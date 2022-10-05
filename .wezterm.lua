local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- frontend: "OpenGL", "WebGpu", or "Software"
config.front_end = "WebGpu"

config.font = wezterm.font("FiraCode Nerd Font", {
  weight = "Medium",
  stretch = "Normal",
  style = "Normal",
})
config.font_size = 16

config.color_scheme = "Tokyo Night"
config.enable_tab_bar = false
-- config.window_decorations = "RESIZE"
-- config.window_background_opacity = 0.85
-- config.macos_window_background_blur = 10

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

return config
