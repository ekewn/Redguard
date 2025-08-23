local named_colors = require("redguard.named_colors")

local dark_colors = {
	redguard0_gui = named_colors.black, -- redguard0 in palette
	redguard1_gui = named_colors.dark_gray, -- redguard1 in palette
	redguard2_gui = named_colors.gray, -- redguard2 in palette
	redguard3_gui = named_colors.light_gray, -- redguard3 in palette
	redguard3_gui_bright = named_colors.light_gray_bright, -- out of palette
	redguard4_gui = named_colors.darkest_white, -- redguard4 in palette
	redguard5_gui = named_colors.darker_white, -- redguard5 in palette
	redguard6_gui = named_colors.white, -- redguard6 in palette
	redguard7_gui = named_colors.rose, -- redguard7 in palette (was teal)
	redguard8_gui = named_colors.pink, -- redguard8 in palette (was off_blue)
	redguard9_gui = named_colors.crimson, -- redguard9 in palette (was glacier)
	redguard10_gui = named_colors.wine, -- redguard10 in palette (was blue)
	redguard11_gui = named_colors.red, -- redguard11 in palette
	redguard12_gui = named_colors.orange, -- redguard12 in palette
	redguard13_gui = named_colors.yellow, -- redguard13 in palette
	redguard14_gui = named_colors.green, -- redguard14 in palette
	redguard15_gui = named_colors.purple, -- redguard15 in palette
	none = "NONE",
}

local light_colors = {
	redguard0_gui = named_colors.white, -- redguard0 in palette
	redguard1_gui = named_colors.darker_white, -- redguard1 in palette
	redguard2_gui = named_colors.darkest_white, -- redguard2 in palette
	redguard3_gui = named_colors.light_gray, -- redguard3 in palette
	redguard3_gui_bright = named_colors.light_gray_bright, -- out of palette
	redguard4_gui = named_colors.gray, -- redguard4 in palette
	redguard5_gui = named_colors.dark_gray, -- redguard5 in palette
	redguard6_gui = named_colors.black, -- redguard6 in palette

	-- Same colors across light and dark from here down...
	redguard7_gui = named_colors.rose, -- redguard7 in palette (was teal)
	redguard8_gui = named_colors.pink, -- redguard8 in palette (was off_blue)
	redguard9_gui = named_colors.crimson, -- redguard9 in palette (was glacier)
	redguard10_gui = named_colors.wine, -- redguard10 in palette (was blue)
	redguard11_gui = named_colors.red, -- redguard11 in palette
	redguard12_gui = named_colors.orange, -- redguard12 in palette
	redguard13_gui = named_colors.yellow, -- redguard13 in palette
	redguard14_gui = named_colors.green, -- redguard14 in palette
	redguard15_gui = named_colors.purple, -- redguard15 in palette
	none = "NONE",
}

local redguard = (vim.o.background == "dark") and dark_colors or light_colors

-- Enable contrast sidebars, floating windows and popup menus
if vim.g.redguard_contrast then
	redguard.sidebar = redguard.redguard1_gui
	redguard.float = redguard.redguard1_gui
else
	redguard.sidebar = redguard.redguard0_gui
	redguard.float = redguard.redguard0_gui
end

if vim.g.redguard_cursorline_transparent then
	redguard.cursorlinefg = redguard.redguard0_gui
else
	redguard.cursorlinefg = redguard.redguard1_gui
end

return redguard
