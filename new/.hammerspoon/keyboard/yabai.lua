-- send commands to yabai
local function yabai(commands)
	for _, cmd in ipairs(commands) do
		os.execute("/usr/local/bin/yabai -m " .. cmd)
	end
end

local function alt(key, commands)
	hs.hotkey.bind({ "alt" }, key, function()
		yabai(commands)
	end)
end

-- alt + shift bind
local function altShift(key, commands)
	hs.hotkey.bind({ "alt", "shift" }, key, function()
		yabai(commands)
	end)
end

-- alpha
alt("f", { "window --toggle zoom-fullscreen" })
alt("l", { "space --focus recent" })
alt("m", { "space --toggle mission-control" })
alt("p", { "window --toggle pip" })
alt("g", { "space --toggle padding", "space --toggle gap" })
alt("r", { "space --rotate 90" })
alt("t", { "window --toggle float", "window --grid 4:4:1:1:2:2" })
altShift("t", { "window --toggle float", "window --grid 20:20:1:1:18:18" })

-- special characters
alt("'", { "space --layout stack" })
alt(";", { "space --layout bsp" })
alt("tab", { "space --layout float" })

local homeRow = { h = "west", j = "south", k = "north", l = "east" }

for key, direction in pairs(homeRow) do
	alt(key, { "window --focus " .. direction })
	altShift(key, { "window --swap " .. direction })
end
