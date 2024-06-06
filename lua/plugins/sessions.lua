return {
  {
    "dhruvasagar/vim-prosession",
    dependencies = {
      "tpope/vim-obsession",
    },
    options = {
    },
    config = function()
      vim.api.nvim_create_autocmd("vimenter", {
        command = "Neotree position=left",
      })
    end
  },
}
