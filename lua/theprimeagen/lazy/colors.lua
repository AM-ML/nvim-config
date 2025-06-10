-- Ensure lazy.nvim is installed and configured
-- Define the ColorMyPencils function
function ColorMyPencils(color)
  color = color or "tokyonight"
  vim.cmd.colorscheme(color)

  -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
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
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        background = { -- :h background
          light = "latte",
          dark = "mocha",
        },
        -- transparent_background = false, -- disables setting the background color.
        -- show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
        term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
        no_italic = true, -- Force no italic
        no_bold = false, -- Force no bold
        no_underline = true, -- Force no underline
        styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
          -- comments = { "italic" }, -- Change the style of comments
          -- conditionals = { "italic" },
          loops = {},
          functions = {},
          keywords = {},
          strings = {},
          variables = {},
          numbers = {},
          booleans = {},
          properties = {},
          types = {},
          operators = { "bold" },
          -- miscs = {}, -- Uncomment to turn off hard-coded styles
        },
        color_overrides = {},
        custom_highlights = {},
        default_integrations = true,
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          treesitter = true,
          notify = false,
          mini = {
            enabled = true,
            indentscope_color = "",
          },
          -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
        },
      })
    end
  },
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
      ColorMyPencils("catppuccin")
    end,
  },
}
