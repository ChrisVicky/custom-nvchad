vim.api.nvim_set_var('mkdp_page_title','[${name}]')
vim.api.nvim_set_var('mkdp_auto_start','0')
vim.api.nvim_set_var('mkdp_auto_close','1') -- nvim will auto close current ppreview window change from markdown buffer to another buffer.
vim.api.nvim_set_var('mkdp_open_to_the_world',1) -- preview server available to others in the network
vim.api.nvim_set_var('mkdp_port','8080')
-- use custom ip to open preview page --> FOR detailed : "https://github.com/iamcco/markdown-preview.nvim/pull/9"
-- Echo preview page url in command line
vim.api.nvim_set_var('mkdp_echo_preview_url',1)
-- Set Browser to surf
vim.api.nvim_set_var('mkdp_browser','/usr/bin/surf')
vim.api.nvim_set_var('mkdp_markdown_css', '/home/christopher/.vim/custom/mymarkdown.css')
