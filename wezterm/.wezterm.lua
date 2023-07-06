local wezterm = require("wezterm")
local config = {}

--config.font = wezterm.font("FiraCode Nerd Font Mono", { weight = "bold" })

config.font = wezterm.font("JetBrainsMono Nerd Font Mono", { weight = "Bold" })
config.color_scheme = "tokyonight_night"
--config.color_scheme = "tokyonight_storm"

--config.color_scheme = "ayu"
--config.enable_scroll_bar = true
config.font_size = 14

config.adjust_window_size_when_changing_font_size = false
config.hide_tab_bar_if_only_one_tab = true
config.line_height = 1.3
config.window_padding = {
	left = 0,
	right = 0,
	top = 10,
	bottom = 0,
}
config.window_background_opacity = 0.95
--config.window_decorations = "NONE"
config.keys = {
	{
		key = "n",
		mods = "SHIFT|CTRL",
		action = wezterm.action.ToggleFullScreen,
	},
}

--config.window_background_image = "/run/media/ayga/Backup/Wallpapers/wallpaperflare.com_wallpaper (1).jpg"
--config.background = {
--	{
--	source = { File = "/run/media/ayga/Backup/Wallpapers/wallpaperflare.com_wallpaper8.jpg" },
--opacity =  1,
--	},
--}

config.default_prog = { "/usr/bin/bash" }
return config
