-- ~/.config/nvim/lua/plugins/tokyonight.lua

return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    -- 1) Use the “day” style (light background).
    local style = "day"

    -- 2) Hook into on_colors to force pure white bg / pure black fg:
    local on_colors = function(colors)
      -- Core background/foreground:
      colors.bg_dark      = "#FFFFFF"  -- pure white for main background
      colors.bg_highlight = "#F0F0F0"  -- very light grey (CursorLine, etc.)
      colors.bg_popup     = "#FFFFFF"  -- white for floats/popups
      colors.fg           = "#000000"  -- pure black for main text

      -- Override a few accent tokens so they stand out on white:
      colors.black   = "#000000"
      colors.white   = "#FFFFFF"
      colors.blue    = "#0000FF"  -- pure blue
      colors.blue1   = "#0000E0"
      colors.blue2   = "#0000C0"
      colors.green   = "#008000"  -- pure green
      colors.green1  = "#006000"
      colors.orange  = "#FF5500"  -- crisp orange for warnings
      colors.red     = "#FF0000"  -- pure red for errors
      colors.comment = "#444444"  -- dark grey for comments
      colors.border  = "#DDDDDD"  -- light grey for borders/lines
    end

    -- 3) Override specific highlight groups so they paint correctly on white:
    local on_highlights = function(hl, c)
      -- a) Core Normal / NormalFloat
      hl.Normal       = { fg = c.fg,      bg = c.bg_dark }
      hl.NormalFloat  = { fg = c.fg,      bg = c.bg_popup }
      hl.CursorLine   = { bg = c.bg_highlight }  -- very light grey under cursor
      hl.LineNr       = { fg = "#888888", bg = c.bg_dark }
      hl.CursorLineNr = { fg = "#000000", bg = c.bg_highlight }

      -- b) SignColumn / FoldColumn on white
      hl.SignColumn = { bg = c.bg_dark }
      hl.FoldColumn = { bg = c.bg_dark }

      -- c) GitSigns in gutter
      hl.GitSignsAdd    = { fg = c.green, bg = c.bg_dark }
      hl.GitSignsChange = { fg = c.blue,  bg = c.bg_dark }
      hl.GitSignsDelete = { fg = c.red,   bg = c.bg_dark }

      -- d) Telescope on white/light-grey
      local prompt_bg = "#F0F0F0"
      hl.TelescopeNormal        = { bg = c.bg_popup, fg = c.fg }
      hl.TelescopeBorder        = { bg = c.bg_popup, fg = c.border }
      hl.TelescopePromptNormal  = { bg = prompt_bg,  fg = c.fg }
      hl.TelescopePromptBorder  = { bg = prompt_bg,  fg = prompt_bg }
      hl.TelescopePromptTitle   = { bg = prompt_bg,  fg = prompt_bg }
      hl.TelescopePreviewTitle  = { bg = c.bg_popup, fg = c.blue }
      hl.TelescopeResultsTitle  = { bg = c.bg_popup, fg = c.blue }
      hl.TelescopeSelection     = { bg = "#DDDDDD",  fg = c.fg }
      hl.TelescopeSelectionCaret= { bg = "#DDDDDD",  fg = c.blue }

      -- e) Cursor/Visual highlighting
      hl.CursorColumn = { bg = c.bg_highlight }
      hl.ColorColumn  = { bg = "#EEEEEE" }
      hl.Visual       = { bg = "#EEEEEE" }
    end

    -- 4) Setup Tokyonight with our overrides:
    require("tokyonight").setup({
      style = style,
      styles = {
        -- Remove `dim` (unsupported). Keep `italic = false` for comments to avoid italics.
        functions = {},
        keywords  = {},
        variables = {},
        strings   = {},
        comments  = { italic = false },
      },
      on_colors = on_colors,
      on_highlights = on_highlights,
    })

    -- 5) Activate the colorscheme:
    vim.cmd.colorscheme("tokyonight")
  end,
}

