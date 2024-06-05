local highlight = {
  "CursorColumn",
  "Whitespace",
}

return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = {
},
  config = function()
    vim.api.nvim_set_hl(0, "Green", { fg = "#5ccc96" })
    require("ibl").setup({
      indent = { highlight = highlight, char = " " },
      whitespace = {
        highlight = highlight,
        remove_blankline_trail = false,
      },
      scope = {
        enabled = true,
        char = "▏",
        show_start = true,
        show_end = true,
        show_exact_scope = true,
      },
    })
  end
}
