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

-- Copy on mouse selection (left-button release)
config.mouse_bindings = config.mouse_bindings or {}
table.insert(config.mouse_bindings, {
  event = { Up = { streak = 1, button = "Left" } },
  mods = "NONE",
  -- Copies the selection to both the system Clipboard and the X11 Primary selection
  action = wezterm.action { CompleteSelection = "ClipboardAndPrimarySelection" },
})

-- Optional: paste with middle click from primary selection (Linux/Wayland/X11)
-- table.insert(config.mouse_bindings, {
--   event = { Down = { streak = 1, button = "Middle" } },
--   mods = "NONE",
--   action = wezterm.action { PasteFrom = "PrimarySelection" },
-- })

-- add near other config fields
-- config.set_environment_variables = {
--   -- use XDG_RUNTIME_DIR if present; else fallback to /run/user/<uid>
--   SSH_AUTH_SOCK = (os.getenv("XDG_RUNTIME_DIR") or ("/run/user/" .. os.getenv("UID"))) .. "/keyring/ssh",
-- }

return config
