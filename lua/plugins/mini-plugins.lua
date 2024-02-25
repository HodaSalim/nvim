return {
  {

    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      -- Lua
      vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle() end)
      vim.keymap.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end)
      vim.keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end)
    end
  }, {
  'lukas-reineke/indent-blankline.nvim',
  -- Enable `lukas-reineke/indent-blankline.nvim`
  -- See `:help ibl`
  main = 'ibl',
  opts = {},
},
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
        -- surr*ound_words             ysiw)           (surround_words)
        -- *make strings               ys$"            "make strings"
        -- [delete ar*ound me!]        ds]             delete around me!
        -- remove <b>HTML t*ags</b>    dst             remove HTML tags
        -- 'change quot*es'            cs'"            "change quotes"
        -- <b>or tag* types</b>        csth1<CR>       <h1>or tag types</h1>
        -- delete(functi*on calls)     dsf             function calls
      })
    end
  }, {
  'ThePrimeagen/harpoon',
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("harpoon"):setup()
  end,
  keys = {
    { "<leader>h", function() require("harpoon"):list():append() end,                                              desc = "harpoon file", },
    { "<leader>a", function()
      local harpoon = require("harpoon")
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end,                                                                                                           desc = "harpoon quick menu", },
    { "<leader>1", function() require("harpoon"):list():select(1) end,                                             desc = "harpoon to file 1", },
    { "<leader>2", function() require("harpoon"):list():select(2) end,                                             desc = "harpoon to file 2", },
    { "<leader>3", function() require("harpoon"):list():select(3) end,                                             desc = "harpoon to file 3", },
    { "<leader>4", function() require("harpoon"):list():select(4) end,                                             desc = "harpoon to file 4", },
    { "<leader>5", function() require("harpoon"):list():select(5) end,                                             desc = "harpoon to file 5", },
  },
}
}
