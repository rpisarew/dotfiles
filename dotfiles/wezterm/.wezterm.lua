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
  left = 5,
  right = 5,
  top = 5,
  bottom = 5,
}

wezterm.on("copy-selection", function(window, pane)
  local sel = window:get_selection_text_for_pane(pane)
  if sel and sel ~= "" then
    window:perform_action(wezterm.action.CompleteSelection("ClipboardAndPrimarySelection"), pane)
    wezterm.background_child_process({ "paplay", "/usr/share/sounds/freedesktop/stereo/network-connectivity-established.oga" })
  end
end)

config.mouse_bindings = config.mouse_bindings or {}
for streak = 1, 3 do
  table.insert(config.mouse_bindings, {
    event = { Up = { streak = streak, button = "Left" } },
    mods = "NONE",
    action = wezterm.action.EmitEvent("copy-selection"),
  })
end

return config
