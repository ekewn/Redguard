local redguard = require("redguard.colors")

local theme = {}

local italic = vim.g.redguard_italic == false and redguard.none or "italic"
local italic_undercurl = vim.g.redguard_italic == false and "undercurl" or "italic,undercurl"
local bold = vim.g.redguard_bold == false and redguard.none or "bold"
local reverse_bold = vim.g.redguard_bold == false and "reverse" or "reverse,bold"
local bold_underline = vim.g.redguard_bold == false and "underline" or "bold,underline"
local bold_italic
if vim.g.redguard_bold == false then
	bold_italic = vim.g.redguard_italic == false and redguard.none or "italic"
elseif vim.g.redguard_italic == false then
	bold_italic = "bold"
else
	bold_italic = "bold,italic"
end

theme.loadSyntax = function()
	-- Syntax highlight groups
	return {
		Type = { fg = redguard.crimson },
		StorageClass = { fg = redguard.crimson },
		Structure = { fg = redguard.crimson },
		Constant = { fg = redguard.darkest_white },
		Character = { fg = redguard.purple },
		Number = { fg = redguard.purple },
		Boolean = { fg = redguard.purple },
		Float = { fg = redguard.purple },
		Statement = { fg = redguard.crimson },
		Label = { fg = redguard.crimson },
		Operator = { fg = redguard.crimson },
		Exception = { fg = redguard.crimson },
		PreProc = { fg = redguard.crimson },
		Include = { fg = redguard.crimson },
		Define = { fg = redguard.crimson },
		Macro = { fg = redguard.crimson },
		Typedef = { fg = redguard.crimson },
		PreCondit = { fg = redguard.yellow },
		Special = { fg = redguard.darkest_white },
		SpecialChar = { fg = redguard.yellow },
		Tag = { fg = redguard.darkest_white },
		Delimiter = { fg = redguard.white },
		SpecialComment = { fg = redguard.pink },
		Debug = { fg = redguard.red },
		Underlined = { fg = redguard.green, bg = redguard.none, style = "underline" },
		Ignore = { fg = redguard.dark_gray },
		Todo = { fg = redguard.yellow, bg = redguard.none, style = bold_italic },
		Conceal = { fg = redguard.none, bg = redguard.black },
		htmlLink = { fg = redguard.green, style = "underline" },
		markdownH1Delimiter = { fg = redguard.pink },
		markdownH2Delimiter = { fg = redguard.red },
		markdownH3Delimiter = { fg = redguard.green },
		htmlH1 = { fg = redguard.pink, style = bold },
		htmlH2 = { fg = redguard.red, style = bold },
		htmlH3 = { fg = redguard.purple, style = bold },
		htmlH4 = { fg = redguard.green, style = bold },
		htmlH5 = { fg = redguard.crimson, style = bold },
		markdownH1 = { fg = redguard.pink, style = bold },
		markdownH2 = { fg = redguard.red, style = bold },
		markdownH3 = { fg = redguard.green, style = bold },
		Error = { fg = redguard.red, bg = redguard.none, style = bold_underline },
		Comment = { fg = redguard.light_gray_bright, style = italic },
		Conditional = { fg = redguard.crimson, style = italic },
		Function = { fg = redguard.pink, style = italic },
		Identifier = { fg = redguard.crimson, style = italic },
		Keyword = { fg = redguard.crimson, style = italic },
		Repeat = { fg = redguard.crimson, style = italic },
		String = { fg = redguard.purple, style = italic },
	}
end

theme.loadEditor = function()
	-- Editor highlight groups

	local editor = {
		NormalFloat = { fg = redguard.redguard4_gui, bg = redguard.float }, -- normal text and background color
		FloatBorder = { fg = redguard.redguard4_gui, bg = redguard.float }, -- normal text and background color
		ColorColumn = { fg = redguard.none, bg = redguard.redguard1_gui }, -- used for the columns set with 'colorcolumn'
		Conceal = { fg = redguard.redguard1_gui }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor = { fg = redguard.redguard4_gui, bg = redguard.none, style = "reverse" }, -- the character under the cursor
		CursorIM = { fg = redguard.redguard5_gui, bg = redguard.none, style = "reverse" }, -- like Cursor, but used when in IME mode
		Directory = { fg = redguard.redguard7_gui, bg = redguard.none }, -- directory names (and other special names in listings)
		EndOfBuffer = { fg = redguard.redguard1_gui },
		ErrorMsg = { fg = redguard.none },
		Folded = { fg = redguard.redguard3_gui_bright, bg = redguard.none, style = italic },
		FoldColumn = { fg = redguard.redguard7_gui },
		IncSearch = { fg = redguard.redguard6_gui, bg = redguard.redguard10_gui },
		LineNr = { fg = redguard.redguard3_gui_bright },
		CursorLineNr = { fg = redguard.redguard4_gui },
		MatchParen = { fg = redguard.redguard15_gui, bg = redguard.none, style = bold },
		ModeMsg = { fg = redguard.redguard4_gui },
		MoreMsg = { fg = redguard.redguard4_gui },
		NonText = { fg = redguard.redguard1_gui },
		Pmenu = { fg = redguard.redguard4_gui, bg = redguard.redguard2_gui },
		PmenuSel = { fg = redguard.redguard4_gui, bg = redguard.redguard10_gui },
		PmenuSbar = { fg = redguard.redguard4_gui, bg = redguard.redguard2_gui },
		PmenuThumb = { fg = redguard.redguard4_gui, bg = redguard.redguard4_gui },
		Question = { fg = redguard.redguard14_gui },
		QuickFixLine = { fg = redguard.redguard4_gui, bg = redguard.none, style = "reverse" },
		qfLineNr = { fg = redguard.redguard4_gui, bg = redguard.none, style = "reverse" },
		Search = { fg = redguard.redguard6_gui, bg = redguard.redguard10_gui },
		Substitute = { fg = redguard.redguard0_gui, bg = redguard.redguard12_gui },
		SpecialKey = { fg = redguard.redguard9_gui },
		SpellBad = { fg = redguard.redguard11_gui, bg = redguard.none, style = italic_undercurl },
		SpellCap = { fg = redguard.redguard7_gui, bg = redguard.none, style = italic_undercurl },
		SpellLocal = { fg = redguard.redguard8_gui, bg = redguard.none, style = italic_undercurl },
		SpellRare = { fg = redguard.redguard9_gui, bg = redguard.none, style = italic_undercurl },
		StatusLine = { fg = redguard.redguard4_gui, bg = redguard.redguard2_gui },
		StatusLineNC = { fg = redguard.redguard4_gui, bg = redguard.redguard1_gui },
		StatusLineTerm = { fg = redguard.redguard4_gui, bg = redguard.redguard2_gui },
		StatusLineTermNC = { fg = redguard.redguard4_gui, bg = redguard.redguard1_gui },
		TabLineFill = { fg = redguard.redguard4_gui, bg = redguard.redguard3_gui },
		TablineSel = { fg = redguard.redguard1_gui, bg = redguard.redguard9_gui },
		Tabline = { fg = redguard.redguard4_gui, bg = redguard.redguard1_gui },
		Title = { fg = redguard.redguard14_gui, bg = redguard.none, style = bold },
		Visual = { fg = redguard.none, bg = redguard.redguard2_gui },
		VisualNOS = { fg = redguard.none, bg = redguard.redguard2_gui },
		WarningMsg = { fg = redguard.redguard15_gui },
		WildMenu = { fg = redguard.redguard12_gui, bg = redguard.none, style = bold },
		CursorColumn = { fg = redguard.none, bg = redguard.cursorlinefg },
		CursorLine = { fg = redguard.none, bg = redguard.cursorlinefg },
		ToolbarLine = { fg = redguard.redguard4_gui, bg = redguard.redguard1_gui },
		ToolbarButton = { fg = redguard.redguard4_gui, bg = redguard.none, style = bold },
		NormalMode = { fg = redguard.redguard4_gui, bg = redguard.none, style = "reverse" },
		InsertMode = { fg = redguard.redguard14_gui, bg = redguard.none, style = "reverse" },
		ReplacelMode = { fg = redguard.redguard11_gui, bg = redguard.none, style = "reverse" },
		VisualMode = { fg = redguard.redguard9_gui, bg = redguard.none, style = "reverse" },
		CommandMode = { fg = redguard.redguard4_gui, bg = redguard.none, style = "reverse" },
		Warnings = { fg = redguard.redguard15_gui },

		healthError = { fg = redguard.redguard11_gui },
		healthSuccess = { fg = redguard.redguard14_gui },
		healthWarning = { fg = redguard.redguard15_gui },

		-- dashboard
		DashboardShortCut = { fg = redguard.redguard7_gui },
		DashboardHeader = { fg = redguard.redguard9_gui },
		DashboardCenter = { fg = redguard.redguard8_gui },
		DashboardFooter = { fg = redguard.redguard14_gui, style = italic },

		-- Barbar
		BufferTabpageFill = { bg = redguard.redguard0_gui },

		BufferCurrent = { bg = redguard.redguard1_gui },
		BufferCurrentMod = { bg = redguard.redguard1_gui, fg = redguard.redguard15_gui },
		BufferCurrentIcon = { bg = redguard.redguard1_gui },
		BufferCurrentSign = { bg = redguard.redguard1_gui },
		BufferCurrentIndex = { bg = redguard.redguard1_gui },
		BufferCurrentTarget = { bg = redguard.redguard1_gui, fg = redguard.redguard11_gui },

		BufferInactive = { bg = redguard.redguard0_gui, fg = redguard.redguard3_gui },
		BufferInactiveMod = { bg = redguard.redguard0_gui, fg = redguard.redguard15_gui },
		BufferInactiveIcon = { bg = redguard.redguard0_gui, fg = redguard.redguard3_gui },
		BufferInactiveSign = { bg = redguard.redguard0_gui, fg = redguard.redguard3_gui },
		BufferInactiveIndex = { bg = redguard.redguard0_gui, fg = redguard.redguard3_gui },
		BufferInactiveTarget = { bg = redguard.redguard0_gui, fg = redguard.redguard11_gui },

		BufferVisible = { bg = redguard.redguard2_gui },
		BufferVisibleMod = { bg = redguard.redguard2_gui, fg = redguard.redguard15_gui },
		BufferVisibleIcon = { bg = redguard.redguard2_gui },
		BufferVisibleSign = { bg = redguard.redguard2_gui },
		BufferVisibleIndex = { bg = redguard.redguard2_gui },
		BufferVisibleTarget = { bg = redguard.redguard2_gui, fg = redguard.redguard11_gui },

		-- nvim-notify
		NotifyDEBUGBorder = { fg = redguard.redguard3_gui },
		NotifyDEBUGIcon = { fg = redguard.redguard3_gui },
		NotifyDEBUGTitle = { fg = redguard.redguard3_gui },
		NotifyERRORBorder = { fg = redguard.redguard11_gui },
		NotifyERRORIcon = { fg = redguard.redguard11_gui },
		NotifyERRORTitle = { fg = redguard.redguard11_gui },
		NotifyINFOBorder = { fg = redguard.redguard14_gui },
		NotifyINFOIcon = { fg = redguard.redguard14_gui },
		NotifyINFOTitle = { fg = redguard.redguard14_gui },
		NotifyTRACEBorder = { fg = redguard.redguard15_gui },
		NotifyTRACEIcon = { fg = redguard.redguard15_gui },
		NotifyTRACETitle = { fg = redguard.redguard15_gui },
		NotifyWARNBorder = { fg = redguard.redguard13_gui },
		NotifyWARNIcon = { fg = redguard.redguard13_gui },
		NotifyWARNTitle = { fg = redguard.redguard13_gui },

		-- leap.nvim
		LeapMatch = { style = "underline,nocombine", fg = redguard.redguard13_gui },
		LeapLabelPrimary = { style = "nocombine", fg = redguard.redguard0_gui, bg = redguard.redguard13_gui },
		LeapLabelSecondary = { style = "nocombine", fg = redguard.redguard0_gui, bg = redguard.redguard15_gui },
	}

	-- Options:

	--Set transparent background
	if vim.g.redguard_disable_background then
		editor.Normal = { fg = redguard.redguard4_gui, bg = redguard.none } -- normal text and background color
		editor.SignColumn = { fg = redguard.redguard4_gui, bg = redguard.none }
	else
		editor.Normal = { fg = redguard.redguard4_gui, bg = redguard.redguard0_gui } -- normal text and background color
		editor.SignColumn = { fg = redguard.redguard4_gui, bg = redguard.redguard0_gui }
	end

	-- Remove window split borders
	if vim.g.redguard_borders then
		editor.VertSplit = { fg = redguard.redguard2_gui }
	else
		editor.VertSplit = { fg = redguard.redguard0_gui }
	end

	if vim.g.redguard_uniform_diff_background then
		editor.DiffAdd = { fg = redguard.redguard14_gui, bg = redguard.redguard1_gui } -- diff mode: Added line
		editor.DiffChange = { fg = redguard.redguard13_gui, bg = redguard.redguard1_gui } -- diff mode: Changed line
		editor.DiffDelete = { fg = redguard.redguard11_gui, bg = redguard.redguard1_gui } -- diff mode: Deleted line
		editor.DiffText = { fg = redguard.redguard15_gui, bg = redguard.redguard1_gui } -- diff mode: Changed text within a changed line
	else
		editor.DiffAdd = { fg = redguard.redguard14_gui, bg = redguard.none, style = "reverse" } -- diff mode: Added line
		editor.DiffChange = { fg = redguard.redguard13_gui, bg = redguard.none, style = "reverse" } -- diff mode: Changed line
		editor.DiffDelete = { fg = redguard.redguard11_gui, bg = redguard.none, style = "reverse" } -- diff mode: Deleted line
		editor.DiffText = { fg = redguard.redguard15_gui, bg = redguard.none, style = "reverse" } -- diff mode: Changed text within a changed line
	end

	return editor
end

theme.loadTerminal = function()
	vim.g.terminal_color_0 = redguard.redguard1_gui
	vim.g.terminal_color_1 = redguard.redguard11_gui
	vim.g.terminal_color_2 = redguard.redguard14_gui
	vim.g.terminal_color_3 = redguard.redguard13_gui
	vim.g.terminal_color_4 = redguard.redguard9_gui
	vim.g.terminal_color_5 = redguard.redguard15_gui
	vim.g.terminal_color_6 = redguard.redguard8_gui
	vim.g.terminal_color_7 = redguard.redguard5_gui
	vim.g.terminal_color_8 = redguard.redguard3_gui
	vim.g.terminal_color_9 = redguard.redguard11_gui
	vim.g.terminal_color_10 = redguard.redguard14_gui
	vim.g.terminal_color_11 = redguard.redguard13_gui
	vim.g.terminal_color_12 = redguard.redguard9_gui
	vim.g.terminal_color_13 = redguard.redguard15_gui
	vim.g.terminal_color_14 = redguard.redguard7_gui
	vim.g.terminal_color_15 = redguard.redguard6_gui
end

theme.loadTreeSitter = function()
	-- TreeSitter highlight groups

	local treesitter = {
		TSConstructor = { fg = redguard.redguard9_gui }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
		TSConstant = { fg = redguard.redguard13_gui }, -- For constants
		TSFloat = { fg = redguard.redguard15_gui }, -- For floats
		TSNumber = { fg = redguard.redguard15_gui }, -- For all number
		TSAttribute = { fg = redguard.redguard15_gui }, -- (unstable) TODO: docs
		TSError = { fg = redguard.redguard11_gui }, -- For syntax/parser errors.
		TSException = { fg = redguard.redguard15_gui }, -- For exception related keywords.
		TSFuncMacro = { fg = redguard.redguard7_gui }, -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
		TSInclude = { fg = redguard.redguard9_gui }, -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
		TSLabel = { fg = redguard.redguard15_gui }, -- For labels: `label:` in C and `:label:` in Lua.
		TSOperator = { fg = redguard.redguard9_gui }, -- For any operator: `+`, but also `->` and `*` in C.
		TSParameter = { fg = redguard.redguard10_gui }, -- For parameters of a function.
		TSParameterReference = { fg = redguard.redguard10_gui }, -- For references to parameters of a function.
		TSPunctDelimiter = { fg = redguard.redguard8_gui }, -- For delimiters ie: `.`
		TSPunctBracket = { fg = redguard.redguard8_gui }, -- For brackets and parens.
		TSPunctSpecial = { fg = redguard.redguard8_gui }, -- For special punctutation that does not fall in the catagories before.
		TSSymbol = { fg = redguard.redguard15_gui }, -- For identifiers referring to symbols or atoms.
		TSType = { fg = redguard.redguard9_gui }, -- For types.
		TSTypeBuiltin = { fg = redguard.redguard9_gui }, -- For builtin types.
		TSTag = { fg = redguard.redguard4_gui }, -- Tags like html tag names.
		TSTagDelimiter = { fg = redguard.redguard15_gui }, -- Tag delimiter like `<` `>` `/`
		TSText = { fg = redguard.redguard4_gui }, -- For strings consideredguard11_gui text in a markup language.
		TSTextReference = { fg = redguard.redguard15_gui }, -- FIXME
		TSEmphasis = { fg = redguard.redguard10_gui }, -- For text to be represented with emphasis.
		TSUnderline = { fg = redguard.redguard4_gui, bg = redguard.none, style = "underline" }, -- For text to be represented with an underline.
		TSLiteral = { fg = redguard.redguard4_gui }, -- Literal text.
		TSURI = { fg = redguard.redguard14_gui }, -- Any URI like a link or email.
		TSAnnotation = { fg = redguard.redguard11_gui }, -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
		["@constructor"] = { fg = redguard.redguard9_gui },
		["@constant"] = { fg = redguard.redguard13_gui },
		["@float"] = { fg = redguard.redguard15_gui },
		["@number"] = { fg = redguard.redguard15_gui },
		["@attribute"] = { fg = redguard.redguard15_gui },
		["@error"] = { fg = redguard.redguard11_gui },
		["@exception"] = { fg = redguard.redguard15_gui },
		["@funtion.macro"] = { fg = redguard.redguard7_gui },
		["@include"] = { fg = redguard.redguard9_gui },
		["@label"] = { fg = redguard.redguard15_gui },
		["@operator"] = { fg = redguard.redguard9_gui },
		["@parameter"] = { fg = redguard.redguard10_gui },
		["@punctuation.delimiter"] = { fg = redguard.redguard8_gui },
		["@punctuation.bracket"] = { fg = redguard.redguard8_gui },
		["@punctuation.special"] = { fg = redguard.redguard8_gui },
		["@symbol"] = { fg = redguard.redguard15_gui },
		["@type"] = { fg = redguard.redguard9_gui },
		["@type.builtin"] = { fg = redguard.redguard9_gui },
		["@tag"] = { fg = redguard.redguard4_gui },
		["@tag.delimiter"] = { fg = redguard.redguard15_gui },
		["@text"] = { fg = redguard.redguard4_gui },
		["@text.reference"] = { fg = redguard.redguard15_gui, style = bold },
		["@text.emphasis"] = { fg = redguard.redguard10_gui, style = italic },
		["@text.underline"] = { fg = redguard.redguard4_gui, bg = redguard.none, style = "underline" },
		["@text.literal"] = { fg = redguard.redguard4_gui },
		["@text.uri"] = { fg = redguard.redguard14_gui, style = "underline" },
		["@text.strike"] = { fg = redguard.redguard4_gui, style = "strikethrough" },
		["@text.math"] = { fg = redguard.redguard7_gui },

		-- @todo Missing highlights
		-- @function.call
		-- @method.call
		-- @type.qualifier
		-- @text.math (e.g. for LaTeX math environments)
		-- @text.environment (e.g. for text environments of markup languages)
		-- @text.environment.name (e.g. for the name/the string indicating the type of text environment)
		-- @text.note
		-- @text.warning
		-- @text.danger
		-- @tag.attribute
		-- @string.special
	}

	treesitter.TSVariableBuiltin = { fg = redguard.redguard4_gui, style = bold }
	treesitter.TSBoolean = { fg = redguard.redguard9_gui, style = bold }
	treesitter.TSConstBuiltin = { fg = redguard.redguard7_gui, style = bold }
	treesitter.TSConstMacro = { fg = redguard.redguard7_gui, style = bold }
	treesitter.TSVariable = { fg = redguard.redguard4_gui, style = bold }
	treesitter.TSTitle = { fg = redguard.redguard10_gui, bg = redguard.none, style = bold }
	treesitter["@variable"] = { fg = redguard.redguard4_gui, style = bold }
	treesitter["@variable.builtin"] = { fg = redguard.redguard4_gui, style = bold }
	treesitter["@variable.global"] = { fg = redguard.redguard4_gui, style = bold }
	treesitter["@boolean"] = { fg = redguard.redguard9_gui, style = bold }
	treesitter["@constant.builtin"] = { fg = redguard.redguard7_gui, style = bold }
	treesitter["@constant.macro"] = { fg = redguard.redguard7_gui, style = bold }
	treesitter["@text.title"] = { fg = redguard.redguard10_gui, bg = redguard.none, style = bold }
	treesitter["@text.strong"] = { fg = redguard.redguard10_gui, bg = redguard.none, style = bold }
	-- Comments
	treesitter.TSComment = { fg = redguard.redguard3_gui_bright, style = italic }
	-- Conditionals
	treesitter.TSConditional = { fg = redguard.redguard9_gui, style = italic } -- For keywords related to conditionnals.
	-- Function names
	treesitter.TSFunction = { fg = redguard.redguard8_gui, style = italic } -- For fuction (calls and definitions).
	treesitter.TSMethod = { fg = redguard.redguard7_gui, style = italic } -- For method calls and definitions.
	treesitter.TSFuncBuiltin = { fg = redguard.redguard8_gui, style = italic }
	-- Namespaces and property accessors
	treesitter.TSNamespace = { fg = redguard.redguard4_gui, style = italic } -- For identifiers referring to modules and namespaces.
	treesitter.TSField = { fg = redguard.redguard4_gui, style = italic } -- For fields.
	treesitter.TSProperty = { fg = redguard.redguard10_gui, style = italic } -- Same as `TSField`, but when accessing, not declaring.
	-- Language keywords
	treesitter.TSKeyword = { fg = redguard.redguard9_gui, style = italic } -- For keywords that don't fall in other categories.
	treesitter.TSKeywordFunction = { fg = redguard.redguard8_gui, style = italic }
	treesitter.TSKeywordReturn = { fg = redguard.redguard8_gui, style = italic }
	treesitter.TSKeywordOperator = { fg = redguard.redguard8_gui, style = italic }
	treesitter.TSRepeat = { fg = redguard.redguard9_gui, style = italic } -- For keywords related to loops.
	-- Strings
	treesitter.TSString = { fg = redguard.redguard15_gui, style = italic } -- For strings.
	treesitter.TSStringRegex = { fg = redguard.redguard7_gui, style = italic } -- For regexes.
	treesitter.TSStringEscape = { fg = redguard.redguard15_gui, style = italic } -- For escape characters within a string.
	treesitter.TSCharacter = { fg = redguard.redguard15_gui, style = italic } -- For characters.

	treesitter["@comment"] = { fg = redguard.redguard3_gui_bright, style = italic }
	treesitter["@conditional"] = { fg = redguard.redguard9_gui, style = italic }
	treesitter["@function"] = { fg = redguard.redguard8_gui, style = italic }
	treesitter["@method"] = { fg = redguard.redguard8_gui, style = italic }
	treesitter["@function.builtin"] = { fg = redguard.redguard8_gui, style = italic }
	treesitter["@namespace"] = { fg = redguard.redguard4_gui, style = italic }
	treesitter["@field"] = { fg = redguard.redguard4_gui, style = italic }
	treesitter["@property"] = { fg = redguard.redguard10_gui, style = italic }
	treesitter["@keyword"] = { fg = redguard.redguard9_gui, style = italic }
	treesitter["@keyword.function"] = { fg = redguard.redguard8_gui, style = italic }
	treesitter["@keyword.return"] = { fg = redguard.redguard8_gui, style = italic }
	treesitter["@keyword.operator"] = { fg = redguard.redguard8_gui, style = italic }
	treesitter["@repeat"] = { fg = redguard.redguard9_gui, style = italic }
	treesitter["@string"] = { fg = redguard.redguard15_gui, style = italic }
	treesitter["@string.regex"] = { fg = redguard.redguard7_gui, style = italic }
	treesitter["@string.escape"] = { fg = redguard.redguard15_gui, style = italic }
	treesitter["@character"] = { fg = redguard.redguard15_gui, style = italic }

	return treesitter
end

theme.loadFiletypes = function()
	-- Filetype-specific highlight groups

	local ft = {
		-- yaml
		yamlBlockMappingKey = { fg = redguard.redguard7_gui },
		yamlBool = { link = "Boolean" },
		yamlDocumentStart = { link = "Keyword" },
		yamlTSField = { fg = redguard.redguard7_gui },
		yamlTSString = { fg = redguard.redguard4_gui },
		yamlTSPunctSpecial = { link = "Keyword" },
		yamlKey = { fg = redguard.redguard7_gui }, -- stephpy/vim-yaml
	}

	return ft
end

theme.loadLSP = function()
	-- Lsp highlight groups

	local lsp = {
		LspDiagnosticsDefaultError = { fg = redguard.redguard11_gui }, -- used for "Error" diagnostic virtual text
		LspDiagnosticsSignError = { fg = redguard.redguard11_gui }, -- used for "Error" diagnostic signs in sign column
		LspDiagnosticsFloatingError = { fg = redguard.redguard11_gui }, -- used for "Error" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextError = { fg = redguard.redguard11_gui }, -- Virtual text "Error"
		LspDiagnosticsUnderlineError = { style = "undercurl", sp = redguard.redguard11_gui }, -- used to underline "Error" diagnostics.
		LspDiagnosticsDefaultWarning = { fg = redguard.redguard15_gui }, -- used for "Warning" diagnostic signs in sign column
		LspDiagnosticsSignWarning = { fg = redguard.redguard15_gui }, -- used for "Warning" diagnostic signs in sign column
		LspDiagnosticsFloatingWarning = { fg = redguard.redguard15_gui }, -- used for "Warning" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextWarning = { fg = redguard.redguard15_gui }, -- Virtual text "Warning"
		LspDiagnosticsUnderlineWarning = { style = "undercurl", sp = redguard.redguard15_gui }, -- used to underline "Warning" diagnostics.
		LspDiagnosticsDefaultInformation = { fg = redguard.redguard10_gui }, -- used for "Information" diagnostic virtual text
		LspDiagnosticsSignInformation = { fg = redguard.redguard10_gui }, -- used for "Information" diagnostic signs in sign column
		LspDiagnosticsFloatingInformation = { fg = redguard.redguard10_gui }, -- used for "Information" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextInformation = { fg = redguard.redguard10_gui }, -- Virtual text "Information"
		LspDiagnosticsUnderlineInformation = { style = "undercurl", sp = redguard.redguard10_gui }, -- used to underline "Information" diagnostics.
		LspDiagnosticsDefaultHint = { fg = redguard.redguard9_gui }, -- used for "Hint" diagnostic virtual text
		LspDiagnosticsSignHint = { fg = redguard.redguard9_gui }, -- used for "Hint" diagnostic signs in sign column
		LspDiagnosticsFloatingHint = { fg = redguard.redguard9_gui }, -- used for "Hint" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextHint = { fg = redguard.redguard9_gui }, -- Virtual text "Hint"
		LspDiagnosticsUnderlineHint = { style = "undercurl", sp = redguard.redguard10_gui }, -- used to underline "Hint" diagnostics.
		LspReferenceText = { fg = redguard.redguard4_gui, bg = redguard.redguard1_gui }, -- used for highlighting "text" references
		LspReferenceRead = { fg = redguard.redguard4_gui, bg = redguard.redguard1_gui }, -- used for highlighting "read" references
		LspReferenceWrite = { fg = redguard.redguard4_gui, bg = redguard.redguard1_gui }, -- used for highlighting "write" references

		DiagnosticError = { link = "LspDiagnosticsDefaultError" },
		DiagnosticWarn = { link = "LspDiagnosticsDefaultWarning" },
		DiagnosticInfo = { link = "LspDiagnosticsDefaultInformation" },
		DiagnosticHint = { link = "LspDiagnosticsDefaultHint" },
		DiagnosticVirtualTextWarn = { link = "LspDiagnosticsVirtualTextWarning" },
		DiagnosticUnderlineWarn = { link = "LspDiagnosticsUnderlineWarning" },
		DiagnosticFloatingWarn = { link = "LspDiagnosticsFloatingWarning" },
		DiagnosticSignWarn = { link = "LspDiagnosticsSignWarning" },
		DiagnosticVirtualTextError = { link = "LspDiagnosticsVirtualTextError" },
		DiagnosticUnderlineError = { link = "LspDiagnosticsUnderlineError" },
		DiagnosticFloatingError = { link = "LspDiagnosticsFloatingError" },
		DiagnosticSignError = { link = "LspDiagnosticsSignError" },
		DiagnosticVirtualTextInfo = { link = "LspDiagnosticsVirtualTextInformation" },
		DiagnosticUnderlineInfo = { link = "LspDiagnosticsUnderlineInformation" },
		DiagnosticFloatingInfo = { link = "LspDiagnosticsFloatingInformation" },
		DiagnosticSignInfo = { link = "LspDiagnosticsSignInformation" },
		DiagnosticVirtualTextHint = { link = "LspDiagnosticsVirtualTextHint" },
		DiagnosticUnderlineHint = { link = "LspDiagnosticsUnderlineHint" },
		DiagnosticFloatingHint = { link = "LspDiagnosticsFloatingHint" },
		DiagnosticSignHint = { link = "LspDiagnosticsSignHint" },
	}

	return lsp
end

theme.loadPlugins = function()
	-- Plugins highlight groups

	local plugins = {

		-- LspTrouble
		LspTroubleText = { fg = redguard.redguard4_gui },
		LspTroubleCount = { fg = redguard.redguard9_gui, bg = redguard.redguard10_gui },
		LspTroubleNormal = { fg = redguard.redguard4_gui, bg = redguard.sidebar },

		-- Diff
		diffAdded = { fg = redguard.redguard14_gui },
		diffRemoved = { fg = redguard.redguard11_gui },
		diffChanged = { fg = redguard.redguard15_gui },
		diffOldFile = { fg = redguard.yellow },
		diffNewFile = { fg = redguard.redguard12_gui },
		diffFile = { fg = redguard.redguard7_gui },
		diffLine = { fg = redguard.redguard3_gui },
		diffIndexLine = { fg = redguard.redguard9_gui },

		-- Neogit
		NeogitBranch = { fg = redguard.redguard10_gui },
		NeogitRemote = { fg = redguard.redguard9_gui },
		NeogitHunkHeader = { fg = redguard.redguard8_gui },
		NeogitHunkHeaderHighlight = { fg = redguard.redguard8_gui, bg = redguard.redguard1_gui },
		NeogitDiffContextHighlight = { bg = redguard.redguard1_gui },
		NeogitDiffDeleteHighlight = { fg = redguard.redguard11_gui, style = "reverse" },
		NeogitDiffAddHighlight = { fg = redguard.redguard14_gui, style = "reverse" },

		-- GitGutter
		GitGutterAdd = { fg = redguard.redguard14_gui }, -- diff mode: Added line |diff.txt|
		GitGutterChange = { fg = redguard.redguard13_gui }, -- diff mode: Changed line |diff.txt|
		GitGutterDelete = { fg = redguard.redguard11_gui }, -- diff mode: Deleted line |diff.txt|

		-- GitSigns
		GitSignsAdd = { fg = redguard.redguard14_gui }, -- diff mode: Added line |diff.txt|
		GitSignsAddNr = { fg = redguard.redguard14_gui }, -- diff mode: Added line |diff.txt|
		GitSignsAddLn = { fg = redguard.redguard14_gui }, -- diff mode: Added line |diff.txt|
		GitSignsChange = { fg = redguard.redguard13_gui }, -- diff mode: Changed line |diff.txt|
		GitSignsChangeNr = { fg = redguard.redguard13_gui }, -- diff mode: Changed line |diff.txt|
		GitSignsChangeLn = { fg = redguard.redguard13_gui }, -- diff mode: Changed line |diff.txt|
		GitSignsDelete = { fg = redguard.redguard11_gui }, -- diff mode: Deleted line |diff.txt|
		GitSignsDeleteNr = { fg = redguard.redguard11_gui }, -- diff mode: Deleted line |diff.txt|
		GitSignsDeleteLn = { fg = redguard.redguard11_gui }, -- diff mode: Deleted line |diff.txt|
		GitSignsCurrentLineBlame = { fg = redguard.redguard3_gui_bright, style = bold },

		-- Telescope
		TelescopePromptBorder = { fg = redguard.redguard4_gui },
		TelescopeResultsBorder = { fg = redguard.redguard4_gui },
		TelescopePreviewBorder = { fg = redguard.redguard4_gui },
		TelescopeSelectionCaret = { fg = redguard.redguard9_gui },
		TelescopeSelection = { fg = redguard.redguard6_gui, bg = redguard.redguard2_gui },
		TelescopeMatching = { link = "Search" },

		-- NvimTree
		NvimTreeRootFolder = { fg = redguard.redguard15_gui },
		NvimTreeSymlink = { fg = redguard.redguard5_gui },
		NvimTreeFolderName = { fg = redguard.redguard4_gui },
		NvimTreeFolderIcon = { fg = redguard.redguard9_gui },
		NvimTreeEmptyFolderName = { fg = redguard.redguard4_gui },
		NvimTreeOpenedFolderName = { fg = redguard.redguard5_gui },
		NvimTreeExecFile = { fg = redguard.redguard4_gui },
		NvimTreeOpenedFile = { fg = redguard.redguard6_gui },
		NvimTreeSpecialFile = { fg = redguard.redguard4_gui, style = bold },
		NvimTreeImageFile = { fg = redguard.redguard4_gui },
		NvimTreeMarkdownFile = { fg = redguard.redguard4_gui },
		NvimTreeIndentMarker = { fg = redguard.redguard9_gui },
		NvimTreeGitDirty = { fg = redguard.redguard13_gui }, -- diff mode: Changed line |diff.txt|
		NvimTreeGitStaged = { fg = redguard.redguard13_gui }, -- diff mode: Changed line |diff.txt|
		NvimTreeGitMerge = { fg = redguard.redguard13_gui }, -- diff mode: Changed line |diff.txt|
		NvimTreeGitRenamed = { fg = redguard.redguard13_gui }, -- diff mode: Changed line |diff.txt|
		NvimTreeGitNew = { fg = redguard.redguard14_gui }, -- diff mode: Added line |diff.txt|
		NvimTreeGitDeleted = { fg = redguard.redguard11_gui }, -- diff mode: Deleted line |diff.txt|
		NvimTreeGitIgnored = { fg = redguard.redguard3_gui_bright },
		LspDiagnosticsError = { fg = redguard.redguard12_gui },
		LspDiagnosticsWarning = { fg = redguard.redguard15_gui },
		LspDiagnosticsInformation = { fg = redguard.redguard10_gui },
		LspDiagnosticsHint = { fg = redguard.redguard9_gui },

		-- WhichKey
		WhichKey = { fg = redguard.redguard8_gui, style = bold },
		WhichKeyGroup = { fg = redguard.redguard5_gui },
		WhichKeyDesc = { fg = redguard.redguard7_gui, style = italic },
		WhichKeySeperator = { fg = redguard.redguard9_gui },
		WhichKeyFloating = { bg = redguard.redguard1_gui },
		WhichKeyFloat = { bg = redguard.redguard1_gui },
		WhichKeyValue = { fg = redguard.redguard7_gui },

		-- LspSaga
		DiagnosticError = { fg = redguard.redguard12_gui },
		DiagnosticWarning = { fg = redguard.redguard15_gui },
		DiagnosticInformation = { fg = redguard.redguard10_gui },
		DiagnosticHint = { fg = redguard.redguard9_gui },
		DiagnosticTruncateLine = { fg = redguard.redguard4_gui },
		LspFloatWinBorder = { fg = redguard.redguard4_gui, bg = redguard.float },
		LspSagaDefPreviewBorder = { fg = redguard.redguard4_gui, bg = redguard.float },
		DefinitionIcon = { fg = redguard.redguard7_gui },
		TargetWord = { fg = redguard.redguard6_gui, style = "bold" },
		-- LspSaga code action
		LspSagaCodeActionTitle = { link = "Title" },
		LspSagaCodeActionBorder = { fg = redguard.redguard4_gui, bg = redguard.float },
		LspSagaCodeActionTrunCateLine = { link = "LspSagaCodeActionBorder" },
		LspSagaCodeActionContent = { fg = redguard.redguard4_gui },
		-- LspSag finder
		LspSagaLspFinderBorder = { fg = redguard.redguard4_gui, bg = redguard.float },
		LspSagaAutoPreview = { fg = redguard.redguard4_gui },
		LspSagaFinderSelection = { fg = redguard.redguard6_gui, bg = redguard.redguard2_gui },
		TargetFileName = { fg = redguard.redguard4_gui },
		FinderParam = { fg = redguard.redguard15_gui, bold = true },
		FinderVirtText = { fg = redguard.redguard15_gui15, bg = redguard.none },
		DefinitionsIcon = { fg = redguard.redguard9_gui },
		Definitions = { fg = redguard.redguard15_gui, bold = true },
		DefinitionCount = { fg = redguard.redguard10_gui },
		ReferencesIcon = { fg = redguard.redguard9_gui },
		References = { fg = redguard.redguard15_gui, bold = true },
		ReferencesCount = { fg = redguard.redguard10_gui },
		ImplementsIcon = { fg = redguard.redguard9_gui },
		Implements = { fg = redguard.redguard15_gui, bold = true },
		ImplementsCount = { fg = redguard.redguard10_gui },
		-- LspSaga finder spinner
		FinderSpinnerBorder = { fg = redguard.redguard4_gui, bg = redguard.float },
		FinderSpinnerTitle = { link = "Title" },
		FinderSpinner = { fg = redguard.redguard8_gui, bold = true },
		FinderPreviewSearch = { link = "Search" },
		-- LspSaga definition
		DefinitionBorder = { fg = redguard.redguard4_gui, bg = redguard.float },
		DefinitionArrow = { fg = redguard.redguard8_gui },
		DefinitionSearch = { link = "Search" },
		DefinitionFile = { fg = redguard.redguard4_gui, bg = redguard.float },
		-- LspSaga hover
		LspSagaHoverBorder = { fg = redguard.redguard4_gui, bg = redguard.float },
		LspSagaHoverTrunCateLine = { link = "LspSagaHoverBorder" },
		-- Lsp rename
		LspSagaRenameBorder = { fg = redguard.redguard4_gui, bg = redguard.float },
		LspSagaRenameMatch = { fg = redguard.redguard6_gui, bg = redguard.redguard9_gui },
		-- Lsp diagnostic
		LspSagaDiagnosticSource = { link = "Comment" },
		LspSagaDiagnosticError = { link = "DiagnosticError" },
		LspSagaDiagnosticWarn = { link = "DiagnosticWarn" },
		LspSagaDiagnosticInfo = { link = "DiagnosticInfo" },
		LspSagaDiagnosticHint = { link = "DiagnosticHint" },
		LspSagaErrorTrunCateLine = { link = "DiagnosticError" },
		LspSagaWarnTrunCateLine = { link = "DiagnosticWarn" },
		LspSagaInfoTrunCateLine = { link = "DiagnosticInfo" },
		LspSagaHintTrunCateLine = { link = "DiagnosticHint" },
		LspSagaDiagnosticBorder = { fg = redguard.redguard4_gui, bg = redguard.float },
		LspSagaDiagnosticHeader = { fg = redguard.redguard4_gui },
		DiagnosticQuickFix = { fg = redguard.redguard14_gui, bold = true },
		DiagnosticMap = { fg = redguard.redguard15_gui },
		DiagnosticLineCol = { fg = redguard.redguard4_gui },
		LspSagaDiagnosticTruncateLine = { link = "LspSagaDiagnosticBorder" },
		ColInLineDiagnostic = { link = "Comment" },
		-- LspSaga signture help
		LspSagaSignatureHelpBorder = { fg = redguard.redguard4_gui, bg = redguard.float },
		LspSagaShTrunCateLine = { link = "LspSagaSignatureHelpBorder" },
		-- Lspsaga lightbulb
		LspSagaLightBulb = { link = "DiagnosticSignHint" },
		-- LspSaga shadow
		SagaShadow = { fg = "black" },
		-- LspSaga float
		LspSagaBorderTitle = { link = "Title" },
		-- LspSaga Outline
		LSOutlinePreviewBorder = { fg = redguard.redguard4_gui, bg = redguard.float },
		OutlineIndentEvn = { fg = redguard.redguard15_gui },
		OutlineIndentOdd = { fg = redguard.redguard12_gui },
		OutlineFoldPrefix = { fg = redguard.redguard11_gui },
		OutlineDetail = { fg = redguard.redguard4_gui },
		-- LspSaga all floatwindow
		LspFloatWinNormal = { fg = redguard.redguard4_gui, bg = redguard.float },
		-- Saga End

		-- Sneak
		Sneak = { fg = redguard.redguard0_gui, bg = redguard.redguard4_gui },
		SneakScope = { bg = redguard.redguard1_gui },

		-- Cmp
		CmpItemKind = { fg = redguard.redguard15_gui },
		CmpItemAbbrMatch = { fg = redguard.redguard5_gui, style = bold },
		CmpItemAbbrMatchFuzzy = { fg = redguard.redguard5_gui, style = bold },
		CmpItemAbbr = { fg = redguard.redguard4_gui },
		CmpItemMenu = { fg = redguard.redguard14_gui },

		-- Indent Blankline
		IndentBlanklineChar = { fg = redguard.redguard3_gui },
		IndentBlanklineContextChar = { fg = redguard.redguard10_gui },

		-- headline
		-- bg = (10 * redguard0 + fg) / 11
		Headline1 = { fg = redguard.redguard12_gui, bg = "#3d3c44", bold = true },
		Headline2 = { fg = redguard.redguard13_gui, bg = "#3f4247", bold = true },
		Headline3 = { fg = redguard.redguard14_gui, bg = "#394147", bold = true },
		Headline4 = { fg = redguard.redguard9_gui, bg = "#363e4c", bold = true },
		Headline5 = { fg = redguard.redguard15_gui, bg = "#3a3c4a", bold = true },
		Headline6 = { fg = redguard.redguard4_gui, bg = "#3d434f", bold = true },

		Quote = { fg = redguard.redguard2_gui },
		CodeBlock = { bg = redguard.redguard1_gui },
		Dash = { redguard.redguard10_gui, bold = true },

		-- Illuminate
		illuminatedWord = { bg = redguard.redguard3_gui },
		illuminatedCurWord = { bg = redguard.redguard3_gui },
		IlluminatedWordText = { bg = redguard.redguard3_gui },
		IlluminatedWordRead = { bg = redguard.redguard3_gui },
		IlluminatedWordWrite = { bg = redguard.redguard3_gui },

		-- nvim-dap
		DapBreakpoint = { fg = redguard.redguard14_gui },
		DapStopped = { fg = redguard.redguard15_gui },

		-- nvim-dap-ui
		DapUIVariable = { fg = redguard.redguard4_gui },
		DapUIScope = { fg = redguard.redguard8_gui },
		DapUIType = { fg = redguard.redguard9_gui },
		DapUIValue = { fg = redguard.redguard4_gui },
		DapUIModifiedValue = { fg = redguard.redguard8_gui },
		DapUIDecoration = { fg = redguard.redguard8_gui },
		DapUIThread = { fg = redguard.redguard8_gui },
		DapUIStoppedThread = { fg = redguard.redguard8_gui },
		DapUIFrameName = { fg = redguard.redguard4_gui },
		DapUISource = { fg = redguard.redguard9_gui },
		DapUILineNumber = { fg = redguard.redguard8_gui },
		DapUIFloatBorder = { fg = redguard.redguard8_gui },
		DapUIWatchesEmpty = { fg = redguard.redguard11_gui },
		DapUIWatchesValue = { fg = redguard.redguard8_gui },
		DapUIWatchesError = { fg = redguard.redguard11_gui },
		DapUIBreakpointsPath = { fg = redguard.redguard8_gui },
		DapUIBreakpointsInfo = { fg = redguard.redguard8_gui },
		DapUIBreakpointsCurrentLine = { fg = redguard.redguard8_gui },
		DapUIBreakpointsLine = { fg = redguard.redguard8_gui },

		-- Hop
		HopNextKey = { fg = redguard.redguard4_gui, style = bold },
		HopNextKey1 = { fg = redguard.redguard8_gui, style = bold },
		HopNextKey2 = { fg = redguard.redguard4_gui },
		HopUnmatched = { fg = redguard.redguard3_gui },

		-- Fern
		FernBranchText = { fg = redguard.redguard3_gui_bright },

		-- nvim-ts-rainbow
		rainbowcol1 = { fg = redguard.redguard15_gui },
		rainbowcol2 = { fg = redguard.redguard13_gui },
		rainbowcol3 = { fg = redguard.redguard11_gui },
		rainbowcol4 = { fg = redguard.redguard7_gui },
		rainbowcol5 = { fg = redguard.redguard8_gui },
		rainbowcol6 = { fg = redguard.redguard15_gui },
		rainbowcol7 = { fg = redguard.redguard13_gui },

		-- rainbow-delimiters.nvim
		RainbowDelimiterRed = { fg = redguard.redguard11_gui },
		RainbowDelimiterYellow = { fg = redguard.redguard13_gui },
		RainbowDelimiterBlue = { fg = redguard.redguard9_gui },
		RainbowDelimiterOrange = { fg = redguard.redguard12_gui },
		RainbowDelimiterGreen = { fg = redguard.redguard14_gui },
		RainbowDelimiterCyan = { fg = redguard.redguard8_gui },
		RainbowDelimiterViolet = { fg = redguard.redguard15_gui },

		-- lightspeed
		LightspeedLabel = { fg = redguard.redguard8_gui, style = bold },
		LightspeedLabelOverlapped = { fg = redguard.redguard8_gui, style = "bold,underline" },
		LightspeedLabelDistant = { fg = redguard.redguard15_gui, style = bold },
		LightspeedLabelDistantOverlapped = { fg = redguard.redguard15_gui, style = "bold,underline" },
		LightspeedShortcut = { fg = redguard.redguard10_gui, style = bold },
		LightspeedShortcutOverlapped = { fg = redguard.redguard10_gui, style = "bold,underline" },
		LightspeedMaskedChar = { fg = redguard.redguard4_gui, bg = redguard.redguard2_gui, style = bold },
		LightspeedGreyWash = { fg = redguard.redguard3_gui_bright },
		LightspeedUnlabeledMatch = { fg = redguard.redguard4_gui, bg = redguard.redguard1_gui },
		LightspeedOneCharMatch = { fg = redguard.redguard8_gui, style = "bold,reverse" },
		LightspeedUniqueChar = { style = "bold,underline" },

		-- copilot
		CopilotLabel = { fg = redguard.redguard3_gui, bg = redguard.none },

		-- Statusline
		StatusLineDull = { fg = redguard.redguard3_gui, bg = redguard.redguard1_gui },
		StatusLineAccent = { fg = redguard.redguard0_gui, bg = redguard.redguard13_gui },

		-- mini.nvim
		MiniCompletionActiveParameter = { style = "underline" },

		MiniCursorword = { bg = redguard.redguard3_gui },
		MiniCursorwordCurrent = { bg = redguard.redguard3_gui },

		MiniIndentscopeSymbol = { fg = redguard.redguard10_gui },
		MiniIndentscopePrefix = { style = "nocombine" }, -- Make it invisible

		MiniJump = { fg = redguard.redguard0_gui, bg = redguard.redguard4_gui },

		MiniJump2dSpot = { fg = redguard.redguard12_gui, style = "bold,nocombine" },

		MiniStarterCurrent = { style = "nocombine" },
		MiniStarterFooter = { fg = redguard.redguard14_gui, style = italic },
		MiniStarterHeader = { fg = redguard.redguard9_gui },
		MiniStarterInactive = { link = "Comment" },
		MiniStarterItem = { link = "Normal" },
		MiniStarterItemBullet = { fg = redguard.redguard4_gui },
		MiniStarterItemPrefix = { fg = redguard.redguard15_gui },
		MiniStarterSection = { fg = redguard.redguard4_gui },
		MiniStarterQuery = { fg = redguard.redguard10_gui },

		MiniStatuslineDevinfo = { fg = redguard.redguard4_gui, bg = redguard.redguard2_gui },
		MiniStatuslineFileinfo = { fg = redguard.redguard4_gui, bg = redguard.redguard2_gui },
		MiniStatuslineFilename = { fg = redguard.redguard4_gui, bg = redguard.redguard1_gui },
		MiniStatuslineInactive = { fg = redguard.redguard4_gui, bg = redguard.redguard0_gui, style = bold },
		MiniStatuslineModeCommand = { fg = redguard.redguard0_gui, bg = redguard.redguard15_gui, style = bold },
		MiniStatuslineModeInsert = { fg = redguard.redguard1_gui, bg = redguard.redguard4_gui, style = bold },
		MiniStatuslineModeNormal = { fg = redguard.redguard1_gui, bg = redguard.redguard9_gui, style = bold },
		MiniStatuslineModeOther = { fg = redguard.redguard0_gui, bg = redguard.redguard13_gui, style = bold },
		MiniStatuslineModeReplace = { fg = redguard.redguard0_gui, bg = redguard.redguard11_gui, style = bold },
		MiniStatuslineModeVisual = { fg = redguard.redguard0_gui, bg = redguard.redguard7_gui, style = bold },

		MiniSurround = { link = "IncSearch" },

		MiniTablineCurrent = { bg = redguard.redguard1_gui },
		MiniTablineFill = { link = "TabLineFill" },
		MiniTablineHidden = { bg = redguard.redguard0_gui, fg = redguard.redguard3_gui },
		MiniTablineModifiedCurrent = { bg = redguard.redguard1_gui, fg = redguard.redguard15_gui },
		MiniTablineModifiedHidden = { bg = redguard.redguard0_gui, fg = redguard.redguard15_gui },
		MiniTablineModifiedVisible = { bg = redguard.redguard2_gui, fg = redguard.redguard15_gui },
		MiniTablineTabpagesection = { fg = redguard.redguard10_gui, bg = redguard.redguard6_gui, style = reverse_bold },
		MiniTablineVisible = { bg = redguard.redguard2_gui },

		MiniTestEmphasis = { style = bold },
		MiniTestFail = { fg = redguard.redguard11_gui, style = bold },
		MiniTestPass = { fg = redguard.redguard14_gui, style = bold },

		MiniTrailspace = { bg = redguard.redguard11_gui },

		-- Aerail
		AerialLine = { bg = redguard.redguard2_gui },
		AerialLineNC = { bg = redguard.redguard2_gui },

		AerialArrayIcon = { fg = redguard.redguard13_gui },
		AerialBooleanIcon = { fg = redguard.redguard9_gui, style = bold },
		AerialClassIcon = { fg = redguard.redguard9_gui },
		AerialConstantIcon = { fg = redguard.redguard13_gui },
		AerialConstructorIcon = { fg = redguard.redguard9_gui },
		AerialEnumIcon = { fg = redguard.redguard9_gui },
		AerialEnumMemberIcon = { fg = redguard.redguard4_gui },
		AerialEventIcon = { fg = redguard.redguard9_gui },
		AerialFieldIcon = vim.g.redguard_italic and { fg = redguard.redguard4_gui, style = italic }
			or { fg = redguard.redguard4_gui },
		AerialFileIcon = { fg = redguard.redguard14_gui },
		AerialFunctionIcon = vim.g.redguard_italic and { fg = redguard.redguard8_gui, style = italic }
			or { fg = redguard.redguard8_gui },
		AerialInterfaceIcon = { fg = redguard.redguard9_gui },
		AerialKeyIcon = { fg = redguard.redguard9_gui },
		AerialMethodIcon = vim.g.redguard_italic and { fg = redguard.redguard7_gui, style = italic }
			or { fg = redguard.redguard7_gui },
		AerialModuleIcon = vim.g.redguard_italic and { fg = redguard.redguard4_gui, style = italic }
			or { fg = redguard.redguard4_gui },
		AerialNamespaceIcon = vim.g.redguard_italic and { fg = redguard.redguard4_gui, style = italic }
			or { fg = redguard.redguard4_gui },
		AerialNullIcon = { fg = redguard.redguard9_gui },
		AerialNumberIcon = { fg = redguard.redguard15_gui },
		AerialObjectIcon = { fg = redguard.redguard9_gui },
		AerialOperatorIcon = { fg = redguard.redguard9_gui },
		AerialPackageIcon = vim.g.redguard_italic and { fg = redguard.redguard4_gui, style = italic }
			or { fg = redguard.redguard4_gui },
		AerialPropertyIcon = vim.g.redguard_italic and { fg = redguard.redguard4_gui, style = italic }
			or { fg = redguard.redguard10_gui },
		AerialStringIcon = vim.g.redguard_italic and { fg = redguard.redguard14_gui, style = italic }
			or { fg = redguard.redguard14_gui },
		AerialStructIcon = { fg = redguard.redguard9_gui },
		AerialTypeParameterIcon = { fg = redguard.redguard10_gui },
		AerialVariableIcon = { fg = redguard.redguard4_gui, style = bold },

		AerialArray = { fg = redguard.redguard13_gui },
		AerialBoolean = { fg = redguard.redguard9_gui, style = bold },
		AerialClass = { fg = redguard.redguard9_gui },
		AerialConstant = { fg = redguard.redguard13_gui },
		AerialConstructor = { fg = redguard.redguard9_gui },
		AerialEnum = { fg = redguard.redguard9_gui },
		AerialEnumMember = { fg = redguard.redguard4_gui },
		AerialEvent = { fg = redguard.redguard9_gui },
		AerialField = vim.g.redguard_italic and { fg = redguard.redguard4_gui, style = italic }
			or { fg = redguard.redguard4_gui },
		AerialFile = { fg = redguard.redguard14_gui },
		AerialFunction = vim.g.redguard_italic and { fg = redguard.redguard8_gui, style = italic }
			or { fg = redguard.redguard8_gui },
		AerialInterface = { fg = redguard.redguard9_gui },
		AerialKey = { fg = redguard.redguard9_gui },
		AerialMethod = vim.g.redguard_italic and { fg = redguard.redguard7_gui, style = italic }
			or { fg = redguard.redguard7_gui },
		AerialModule = vim.g.redguard_italic and { fg = redguard.redguard4_gui, style = italic }
			or { fg = redguard.redguard4_gui },
		AerialNamespace = vim.g.redguard_italic and { fg = redguard.redguard4_gui, style = italic }
			or { fg = redguard.redguard4_gui },
		AerialNull = { fg = redguard.redguard9_gui },
		AerialNumber = { fg = redguard.redguard15_gui },
		AerialObject = { fg = redguard.redguard9_gui },
		AerialOperator = { fg = redguard.redguard9_gui },
		AerialPackage = vim.g.redguard_italic and { fg = redguard.redguard4_gui, style = italic }
			or { fg = redguard.redguard4_gui },
		AerialProperty = vim.g.redguard_italic and { fg = redguard.redguard4_gui, style = italic }
			or { fg = redguard.redguard10_gui },
		AerialString = vim.g.redguard_italic and { fg = redguard.redguard14_gui, style = italic }
			or { fg = redguard.redguard14_gui },
		AerialStruct = { fg = redguard.redguard9_gui },
		AerialTypeParameter = { fg = redguard.redguard10_gui },
		AerialVariable = { fg = redguard.redguard4_gui, style = bold },

		-- nvim-navic
		NavicIconsArray = { fg = redguard.redguard13_gui },
		NavicIconsBoolean = { fg = redguard.redguard9_gui, style = bold },
		NavicIconsClass = { fg = redguard.redguard9_gui },
		NavicIconsConstant = { fg = redguard.redguard13_gui },
		NavicIconsConstructor = { fg = redguard.redguard9_gui },
		NavicIconsEnum = { fg = redguard.redguard9_gui },
		NavicIconsEnumMember = { fg = redguard.redguard4_gui },
		NavicIconsEvent = { fg = redguard.redguard9_gui },
		NavicIconsField = { fg = redguard.redguard4_gui, style = italic },
		NavicIconsFile = { fg = redguard.redguard14_gui },
		NavicIconsFunction = { fg = redguard.redguard8_gui, style = italic },
		NavicIconsInterface = { fg = redguard.redguard9_gui },
		NavicIconsKey = { fg = redguard.redguard9_gui },
		NavicIconsMethod = { fg = redguard.redguard7_gui, style = italic },
		NavicIconsModule = { fg = redguard.redguard4_gui, style = italic },
		NavicIconsNamespace = { fg = redguard.redguard4_gui, style = italic },
		NavicIconsNull = { fg = redguard.redguard9_gui },
		NavicIconsNumber = { fg = redguard.redguard15_gui },
		NavicIconsObject = { fg = redguard.redguard9_gui },
		NavicIconsOperator = { fg = redguard.redguard9_gui },
		NavicIconsPackage = { fg = redguard.redguard4_gui, style = italic },
		NavicIconsProperty = { fg = redguard.redguard4_gui, style = italic },
		NavicIconsString = { fg = redguard.redguard14_gui, style = italic },
		NavicIconsStruct = { fg = redguard.redguard9_gui },
		NavicIconsTypeParameter = { fg = redguard.redguard10_gui },
		NavicIconsVariable = { fg = redguard.redguard4_gui, style = bold },
		NavicText = { fg = redguard.redguard4_gui },
		NavicSeparator = { fg = redguard.redguard4_gui },
	}
	-- Options:

	-- Disable nvim-tree background
	if vim.g.redguard_disable_background then
		plugins.NvimTreeNormal = { fg = redguard.redguard4_gui, bg = redguard.none }
	else
		plugins.NvimTreeNormal = { fg = redguard.redguard4_gui, bg = redguard.sidebar }
	end

	if vim.g.redguard_enable_sidebar_background then
		plugins.NvimTreeNormal = { fg = redguard.redguard4_gui, bg = redguard.sidebar }
	else
		plugins.NvimTreeNormal = { fg = redguard.redguard4_gui, bg = redguard.none }
	end

	return plugins
end

return theme
