local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- frontend: "OpenGL", "WebGpu", or "Software"
-- config.front_end = "OpenGL"
config.enable_wayland = true
-- config.prefer_egl = true
config.max_fps = 140

-- config.font = wezterm.font("FiraCode Nerd Font", {
--   weight = "Medium",
--   stretch = "Normal",
--   style = "Normal",
-- })
config.font = wezterm.font_with_fallback({
  { family = "FiraCode Nerd Font", weight = "Medium" }
})

config.font_size = 12

config.color_scheme = "Tokyo Night"
config.enable_tab_bar = false
-- config.window_decorations = "RESIZE"
config.window_background_opacity = 0.75
-- config.macos_window_background_blur = 10

config.colors = {
  background = 'black'
}

config.window_padding = {
  left = 10,
  right = 10,
  top = 10,
  bottom = 10,
}

return config
