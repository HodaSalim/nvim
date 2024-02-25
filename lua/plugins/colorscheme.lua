return {
  "catppuccin/nvim",
  priority = 1000,
  name = "catppuccin",
  lazy = false,
  config = function()
    require("catppuccin").setup({
      flavour = 'mocha',
      transparent_background = true
    })
  end
}
