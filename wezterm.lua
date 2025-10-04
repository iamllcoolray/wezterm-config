local wezterm = require 'wezterm'
local config = {}

-- Cross-platform default shell
if wezterm.target_triple:match("windows") then
    config.default_prog = { "C:\\Program Files\\PowerShell\\7\\pwsh.exe", "-NoLogo" }
else
    config.default_prog = { "/bin/zsh" } 
end

-- Appearance
config.color_scheme = 'Solarized (dark) (terminal.sexy)'
config.window_background_opacity = 0.9

-- Optional
config.font_size = 11.0
config.window_decorations= "RESIZE"

return config
