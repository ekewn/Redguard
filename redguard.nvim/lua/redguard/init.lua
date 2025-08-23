-- Colorscheme name:    redguard.nvim
-- Description:         Port of articicestudio's redguard theme for neovim
-- Author:              https://github.com/shaunsingh

local util = require("redguard.util")

local bufferline = require("bufferline.theme")

-- Load the theme
local set = function()
	util.load()
end

return { set = set, bufferline = bufferline }
