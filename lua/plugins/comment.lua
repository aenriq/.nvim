return {
  'numToStr/Comment.nvim',
  opts = {
    padding = true,
    toggler = {
      line = 'gcc',
      block = 'gbc',
    },
    opleader = {
      line = 'gc',
      block = 'gb'
    },
  },
  lazy = false,
  config = function()
    require('Comment').setup()
  end
}
