return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      style = "moon"
      styles = {
        functions = {}
      }
      on_colors = function(colors)
        colors.hint = colors.orange
        colors.error = "#ff0000"
      end
    -- borderles telescope
      on_highlights = function(hl, c)
        local prompt = "#2f334d"
            hl.TelescopeNormal = {
              bg = c.blue7,
              fg = c.fg_dark,
            }
            hl.TelescopeBorder = {
              bg = c.blue7,
              fg = c.blue,
            }
            hl.TelescopePromptNormal = {
              bg = prompt,
            }
            hl.TelescopePromptBorder = {
              bg = prompt,
              fg = prompt,
            }
            hl.TelescopePromptTitle = {
              bg = prompt,
              fg = prompt,
            }
            hl.TelescopePreviewTitle = {
              bg = c.blue7,
              fg = c.blue,
            }
            hl.TelescopeResultsTitle = {
              bg = c.blue7,
              fg = c.blue,
            }
          end
      vim.cmd.colorscheme "tokyonight"
    end
}
