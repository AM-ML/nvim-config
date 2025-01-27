-- Ensure lazy.nvim is installed and configured
-- Define the ColorMyPencils function
function ColorMyPencils(color)
  color = color or "tokyonight"
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
  -- Ensure lazy.nvim is loaded
  {
    "folke/lazy.nvim",
    lazy = true,
  },

  -- TokyoNight theme
  {
    'folke/tokyonight.nvim',
    config = function()
      require("tokyonight").setup({
        -- your configuration here
        style = "moon",
        transparent = true,
        terminal_colors = true,
        styles = {
          comments = { italic = false },
          keywords = { italic = false },
          sidebars = "dark",
          floats = "dark",
        },
      })
    end,
  },

  -- Gruvbox theme
  {
    'ellisonleao/gruvbox.nvim',
    priority = 1000,
    config = function()
      require("gruvbox").setup({
        terminal_colors = true,
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
          strings = false,
          emphasis = false,
          comments = false,
          operators = false,
          folds = false,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true,
        contrast = "",
        palette_overrides = {},
        overrides = {},
        dim_inactive = false,
        transparent_mode = false,
      })
    end,
  },

  -- Palenight theme
  {
    'alexmozaidze/palenight.nvim',
    priority = 1000,
    config = function()
      -- Set the colorscheme
      ColorMyPencils("palenight")
    end,
  },
}

