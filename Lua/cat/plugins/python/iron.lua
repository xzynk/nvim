return {
	"Vigemus/iron.nvim",
	config = function()
		iron = require("iron.core")
		iron.setup({
			config = {
				-- Whether a repl should be discarded or not
				scratch_repl = true,
				-- Your repl definitions come here
				repl_definition = {
					sh = {
						-- Can be a table or a function that
						-- returns a table (see below)
						command = { "zsh" },
					},
					python = {
						command = { "ipython" }, -- or { "ipython", "--no-autoindent" }
						format = require("iron.fts.common").bracketed_paste_python,
					},
				},
				-- How the repl window will be displayed
				repl_open_cmd = require("iron.view").split.vertical.botright(0.4),
			},

			keymaps = {
				send_motion = "<space>sc",
				visual_send = "<space>sc",
				send_file = "<space>sf",
				send_line = "<space>sl",
				send_paragraph = "<space>sp",
				send_until_cursor = "<space>su",
				send_mark = "<space>sm",
				mark_motion = "<space>mc",
				mark_visual = "<space>mc",
				remove_mark = "<space>md",
				cr = "<space>s<cr>",
				interrupt = "<space>s<space>",
				exit = "<space>sq",
				clear = "<space>cl",
			},

			highlight = {
				italic = true,
			},
			ignore_blank_lines = true,
		})
	end,

	vim.keymap.set("n", "<space>rs", "<cmd>IronRepl<cr>"),
	vim.keymap.set("n", "<space>rr", "<cmd>IronRestart<cr>"),
	vim.keymap.set("n", "<space>rf", "<cmd>IronFocus<cr>"),
	vim.keymap.set("n", "<space>rh", "<cmd>IronHide<cr>"),
}
