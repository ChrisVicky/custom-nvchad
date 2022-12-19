local M = {}
M.oldHabit = {
  n = {
    ["<C-left>"] = {":vertical resize +3<CR>", "Resize left"},
    ["<C-right>"] = {":vertical resize -3<CR>", "Resize right"},
    ["<C-up>"] = {":res -3<CR>", "resize up"},
    ["<C-down>"] = {":res +3<CR>", "resize down"},
    ["=="] = {"<C-w>=", "make all windows equally sized"},
  },
  i ={
    ["jk"] = {"<Esc>", "Return to Normal Mode"},
  }
}
M.telescope = {
  n = {
    -- find
    ["<leader>ff"] = { "<cmd> Telescope find_files <CR>", "  find files" },
    ["<leader>fa"] = { "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>", "  find all" },
    ["<leader>fw"] = { "<cmd> Telescope live_grep <CR>", "   live grep" },
    ["<leader>fb"] = { "<cmd> Telescope buffers <CR>", "  find buffers" },
    ["<leader>fh"] = { "<cmd> Telescope help_tags <CR>", "  help page" },
    ["<leader>fo"] = { "<cmd> Telescope oldfiles <CR>", "   find oldfiles" },
    ["<leader>tk"] = { "<cmd> Telescope keymaps <CR>", "   show keys" },
    ["<leader>mf"] = { "<cmd> Telescope media_files <CR>", "   Show media files"},

    -- git
    ["<leader>cm"] = { "<cmd> Telescope git_commits <CR>", "   git commits" },
    ["<leader>gt"] = { "<cmd> Telescope git_status <CR>", "  git status" },

    -- pick a hidden term
    ["<leader>pt"] = { "<cmd> Telescope terms <CR>", "   pick hidden term" },

    -- theme switcher
    ["<leader>th"] = { "<cmd> Telescope themes <CR>", "   nvchad themes" },
  },
}

M.JumpBetweenWindows = {
  n = {
    ["<leader>h"] = { "<C-w>h" ," Jump to the Window to the Left"},
    ["<leader>j"] = { "<C-w>j" ," Jump to the Window to the Down"},
    ["<leader>k"] = { "<C-w>k" ," Jump to the Window to the Up"},
    ["<leader>l"] = { "<C-w>l" ," Jump to the Window to the Right"},
    ["<leader><Right>"] = { "<C-w>l" ," Jump to the Window to the Right"},
    ["<leader><Left>"] = { "<C-w>h" ," Jump to the Window to the Left"},
    ["<leader><Down>"] = { "<C-w>j" ," Jump to the Window to the Down"},
    ["<leader><Up>"] = { "<C-w>k" ," Jump to the Window to the Up"},
  },
  }

  M.mdip = {
    n = {
      ["<leader>pp"] = { ":call mdip#MarkdownClipboardImage()<CR><Esc>F!", "Insert an Image from Clipboard"},
    },
  }

  M.dap = {
    n = {
      ["<leader><F5>"] = {":lua require'dap'.continue()<CR>", "Lauching debug sessions and resuming execution"},
      ["<leader>8"] = {":lua require'dap'.step_over()<CR>","step over"},
      ["<leader>9"] = {":lua require'dap'.step_into()<CR>","step into"},
      ["<leader>0"] = {"<Cmd>lua require'dap'.step_out()<CR>","step out"},
      ["<Leader>b"] = {"<Cmd>lua require'dap'.toggle_breakpoint()<CR>","toggle breakpoint"},
      ["<Leader>B"] = {"<Cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>","set breakpoint with condition"},
      ["<Leader>lp"] = {"<Cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>","set breakpoint with condition and msg"},
      ["<Leader>dr"] = {"<Cmd>lua require'dap'.repl.open()<CR>",""},
      ["<Leader>dl"] = {"<Cmd>lua require'dap'.run_last()<CR>",""},
    }
  }

  return M
