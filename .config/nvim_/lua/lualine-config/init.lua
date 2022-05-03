local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
	return
end

local hide_in_width = function()
	return vim.fn.winwidth(0) > 80
end

local diagnostics = {
	"diagnostics",
	sources = { "nvim_lsp", "nvim_diagnostic", "coc", "ale", "vim_lsp" },
	sections = { "error", "warn", "hint" },
  -- diagnostics_color = {
  --       -- Same values as the general color option can be used here.
  --       error = 'DiagnosticError', -- Changes diagnostics' error color.
  --       warn  = 'DiagnosticWarn',  -- Changes diagnostics' warn color.
  --       info  = 'DiagnosticInfo',  -- Changes diagnostics' info color.
  --       hint  = 'DiagnosticHint',  -- Changes diagnostics' hint color.
  --     },
  -- color = { bg = "none", gui = 'bold' },
	symbols = { error = " ", warn = " ", info = " ", hint = " " },
	colored = true,
	update_in_insert = false,
	always_visible = true,
}

local diff = {
	"diff",
	colored = false,
	symbols = { added = " ", modified = " ", removed = " " }, -- changes diff symbols
  cond = hide_in_width
}

local filename = {
  'filename',
  file_status = true,      -- Displays file status (readonly status, modified status)
  path = 0,                -- 0: Just the filename
                           -- 1: Relative path
                           -- 2: Absolute path

  shorting_target = 40,    -- Shortens path to leave 40 spaces in the window
                           -- for other components. (terrible name, any suggestions?)
  symbols = {
    modified = '[+]',      -- Text to show when the file is modified.
    readonly = '[-]',      -- Text to show when the file is non-modifiable or readonly.
    unnamed = '[No Name]', -- Text to show for unnamed buffers.
  },
  -- color = { fg = "#4EC9B0" ,bg = "none", gui = 'bold' },
}

local mode = {
	"mode",
	-- fmt = function(str)
	-- 	return "-- " .. str .. " --"
	-- end,
  -- color = { fg = "#569CD6", bg = "none", gui = 'bold' },
}

local filetype = {
	"filetype",
	icons_enabled = false,
	icon = nil,
  -- color = { fg = "#CE9178" ,bg = "none", gui = 'bold' },
}

local encoding = {
  "encoding",
  -- color = { fg = "#D4D4D4" ,bg = "none", gui = 'bold' },
}

local branch = {
	"branch",
	icons_enabled = true,
	icon = "",
  -- color = { fg = "#C586C0" ,bg = "none", gui = 'bold' },
}

local location = {
	"location",
	padding = 0,
  -- color = { fg = "#9CDCFE" ,bg = "none", gui = 'bold' },
}

local location_inactive = {
	"location",
	padding = 0,
  color = { fg = "#808080" },
}


local filename_inactive = {
  'filename',
  file_status = true,      -- Displays file status (readonly status, modified status)
  path = 0,                -- 0: Just the filename
                           -- 1: Relative path
                           -- 2: Absolute path

  shorting_target = 40,    -- Shortens path to leave 40 spaces in the window
                           -- for other components. (terrible name, any suggestions?)
  symbols = {
    modified = '[+]',      -- Text to show when the file is modified.
    readonly = '[-]',      -- Text to show when the file is non-modifiable or readonly.
    unnamed = '[No Name]', -- Text to show for unnamed buffers.
  },
  color = { fg = "#808080" },
}

-- cool function for progress
local progress = function()
	local current_line = vim.fn.line(".")
	local total_lines = vim.fn.line("$")
	local chars = { "__", "▁▁", "▂▂", "▃▃", "▄▄", "▅▅", "▆▆", "▇▇", "██" }
	local line_ratio = current_line / total_lines
	local index = math.ceil(line_ratio * #chars)
	return chars[index]
end

local spaces = function()
	return "spaces: " .. vim.api.nvim_buf_get_option(0, "shiftwidth")
end

lualine.setup({
	options = {
		icons_enabled = true,
		theme = "onedark",
		-- theme = "onenord",
		-- theme = "nord",
		-- theme = "seoul256",
		-- theme = "gruvbox",
		-- theme = "nord",
		-- theme = "horizon",
		-- theme = "ayu_mirage",
		-- theme = "moonfly",
		-- theme = "nightfly",
		-- theme = "dracula",
		-- theme = "material",
		-- theme = "palenight",
		-- theme = "sonokai",
		-- theme = "vscode",
    -- component_separators = { left = '', right = ''},
    component_separators = { left = ' ', right = ' '},
    section_separators = { left = '', right = ''},
		-- component_separators = { left = "", right = "" },
		-- section_separators = { left = "", right = "" },
		disabled_filetypes = { "alpha", "dashboard", "NvimTree", "Outline" },
		always_divide_middle = true,
	},
	sections = {
		lualine_a = { mode },
		lualine_b = { branch },
		lualine_c = { filename },
		-- lualine_x = { "encoding", "fileformat", "filetype" },
		lualine_x = { encoding },
		lualine_y = { filetype },
		lualine_z = { location },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { filename_inactive },
		lualine_x = { location_inactive },
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	extensions = {},
})
