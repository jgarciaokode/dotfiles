local actions = require "telescope.actions"
local bookmark_actions = require('telescope').extensions.vim_bookmarks.actions

local M = {}

function M.reload_modules()
	-- Because TJ gave it to me.  Makes me happpy.  Put it next to his other
	-- awesome things.
	local lua_dirs = vim.fn.glob("./lua/*", 0, 1)
	for _, dir in ipairs(lua_dirs) do
		dir = string.gsub(dir, "./lua/", "")
		require("plenary.reload").reload_module(dir)
	end
end

M.search_dotfiles = function()
	require("telescope.builtin").find_files({
		prompt_title = "< VimRC >",
		cwd = "~/.config/nvim",
		hidden = true,
	})
end

M.git_branches = function()
	require("telescope.builtin").git_branches({
		attach_mappings = function(_, map)
			map("i", "<c-d>", actions.git_delete_branch)
			map("n", "<c-d>", actions.git_delete_branch)
			return true
		end,
	})
end

M.custom_vim_bookmarks = function()
  require('telescope').extensions.vim_bookmarks.all({
    attach_mappings = function(_, map)
      map('n', 'dd', bookmark_actions.delete_selected_or_at_cursor)
      return true
    end
  })
end


return M
