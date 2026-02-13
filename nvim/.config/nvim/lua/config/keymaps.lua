-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Pipe selection to Claude and replace
vim.keymap.set("v", "<leader>cp", function()
  local prompt = vim.fn.input("Claude prompt: ")
  if prompt == "" then
    return
  end
  vim.cmd("'<,'>!claude -p " .. vim.fn.shellescape(prompt))
end, { desc = "Claude: pipe & replace" })

-- Pipe selection to Claude and insert below
vim.keymap.set("v", "<leader>ci", function()
  local prompt = vim.fn.input("Claude prompt: ")
  if prompt == "" then
    return
  end
  local start_line = vim.fn.line("'<")
  local end_line = vim.fn.line("'>")
  local lines = vim.api.nvim_buf_get_lines(0, start_line - 1, end_line, false)
  local input = table.concat(lines, "\n")
  local result = vim.fn.system("claude -p " .. vim.fn.shellescape(prompt), input)
  local result_lines = vim.split(result, "\n", { trimempty = true })
  vim.api.nvim_buf_set_lines(0, end_line, end_line, false, result_lines)
end, { desc = "Claude: pipe & insert below" })
