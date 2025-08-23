local colors = require("redguard.colors")

local redguard = {}

redguard.normal = {
	a = { fg = colors.redguard1_gui, bg = colors.redguard9_gui },
	b = { fg = colors.redguard5_gui, bg = colors.redguard2_gui },
	c = { fg = colors.redguard4_gui, bg = colors.redguard1_gui },
}

redguard.insert = {
	a = { fg = colors.redguard1_gui, bg = colors.redguard4_gui },
	b = { fg = colors.redguard6_gui, bg = colors.redguard2_gui },
	y = { fg = colors.redguard5_gui, bg = colors.redguard2_gui },
}

redguard.visual = {
	a = { fg = colors.redguard0_gui, bg = colors.redguard7_gui },
	b = { fg = colors.redguard4_gui, bg = colors.redguard2_gui },
	y = { fg = colors.redguard5_gui, bg = colors.redguard2_gui },
}

redguard.replace = {
	a = { fg = colors.redguard0_gui, bg = colors.redguard11_gui },
	b = { fg = colors.redguard4_gui, bg = colors.redguard2_gui },
	y = { fg = colors.redguard5_gui, bg = colors.redguard2_gui },
}

redguard.command = {
	a = { fg = colors.redguard0_gui, bg = colors.redguard15_gui, gui = "bold" },
	b = { fg = colors.redguard4_gui, bg = colors.redguard2_gui },
	y = { fg = colors.redguard5_gui, bg = colors.redguard2_gui },
}

redguard.inactive = {
	a = { fg = colors.redguard4_gui, bg = colors.redguard0_gui, gui = "bold" },
	b = { fg = colors.redguard4_gui, bg = colors.redguard0_gui },
	c = { fg = colors.redguard4_gui, bg = colors.redguard1_gui },
}

return redguard
