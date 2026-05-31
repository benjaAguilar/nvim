-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>p", function()
  local file = vim.fn.expand("%:p") -- toma la ruta bajo el cursor
  if file:match("%.png$") or file:match("%.jpg$") or file:match("%.jpeg$") or file:match("%.webp$") then
    vim.fn.jobstart({ "imv", file }, { detach = true }) -- usa tu visor preferido
  else
    print("No es una imagen compatible.")
  end
end, { desc = "Abrir preview de imagen externa" })
