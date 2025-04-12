return {
  "goolord/alpha-nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      "             ,~.                             ",
      "          ,-'__ `-,                          ",
      "         {,-'  `. }              ,')         ",
      "        ,( a )   `-.__         ,',')~,       ",
      "       <=.) (         `-.__,==' ' ' '}       ",
      "         (   )                      /        ",
      "          `-'|   ,                  )        ",
      "              |  |        `~.      /         ",
      "              '   `._        |    /          ",
      "               |     `._____,'   /           ",
      "                `-.            ,'            ",
      "                   `-.      ,-'              ",
      "                      `~~~~'                 ",
      "                      //_||                  ",
      "                   __//--'/`                 ",
      "                 ,--'/`  '                   ",
      "                    '                        ",
    }

    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button("e", "  > New file", ":ene <BAR> startinsert <CR>"),
      dashboard.button("SPC f f", "  > Find file", ":Telescope find_files<CR>"),
      dashboard.button("SPC f r", "  > Recent", ":Telescope oldfiles<CR>"),
      dashboard.button("q", "  > Quit NVIM", ":qa<CR>"),
    }
    alpha.setup(dashboard.opts)
  end,
}
