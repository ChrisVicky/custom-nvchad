-- example file i.e lua/custom/init.lua

-- load your globals, autocmds here or anything .__.
vim.cmd("highlight Comment cterm=bold ctermfg=blue guifg=lightgreen")
vim.cmd("set relativenumber")

-- ################################################
-- ##               V E N N  begin               ##
-- ################################################
-- venn.nvim: enable or disable keymappings
function _G.Toggle_venn()
  local venn_enabled = vim.inspect(vim.b.venn_enabled)
  if venn_enabled == "nil" then
    vim.b.venn_enabled = true
    vim.cmd[[setlocal ve=all]]
    -- draw a line on HJKL keystokes
    vim.api.nvim_buf_set_keymap(0, "n", "J", "<C-v>j:VBox<CR>", {noremap = true})
    vim.api.nvim_buf_set_keymap(0, "n", "K", "<C-v>k:VBox<CR>", {noremap = true})
    vim.api.nvim_buf_set_keymap(0, "n", "L", "<C-v>l:VBox<CR>", {noremap = true})
    vim.api.nvim_buf_set_keymap(0, "n", "H", "<C-v>h:VBox<CR>", {noremap = true})
    -- draw a box by pressing "f" with visual selection
    vim.api.nvim_buf_set_keymap(0, "v", "f", ":VBox<CR>", {noremap = true})
  else
    vim.cmd[[setlocal ve=]]
    vim.cmd[[mapclear <buffer>]]
    vim.b.venn_enabled = nil
  end
end
-- toggle keymappings for venn using <leader>v
vim.api.nvim_set_keymap('n', '<leader>v', ":lua Toggle_venn()<CR>", { noremap = true})

-- ################################################
-- ##               LATEX   autocmd              ##
-- ################################################
-- Auto build latex when save the file
-- use make command `Makefile` to build `Latex Project`
vim.api.nvim_create_autocmd("BufWritePost", {
  group = vim.api.nvim_create_augroup("texfilesave", {clear=true}),
  pattern = "*.tex",
  callback = function ()
    vim.fn.jobstart({"make"}, {
      stdout_buffered = false,
      -- on_stdout = function (_,data)
      --   if data then
      --     local bufnr = vim.api.nvim_create_buf(false, true)
      --     vim.api.nvim_buf_set_lines(bufnr, -1, -1, false, data)
      --     vim.api.nvim_open_win(bufnr, 0, {relative='win', width=100, height=20, col=3, row=3})
      --     -- optional: change highlight, otherwise Pmenu is used
      --   end
      -- end,
    })
  end,
})
