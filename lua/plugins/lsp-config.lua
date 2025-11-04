return {
  { "neovim/nvim-lspconfig" },

  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "neovim/nvim-lspconfig", "williamboman/mason.nvim" },
    config = function()
      local mlsp = require("mason-lspconfig")

      mlsp.setup({
        automatic_installation = true,
      })

      local function autostart(server_name, opts)
        local c = vim.lsp.config(server_name, opts or {})
        if not c or not c.filetypes or #c.filetypes == 0 then return end

        local group = vim.api.nvim_create_augroup("lsp-auto-" .. server_name, { clear = true })
        vim.api.nvim_create_autocmd("FileType", {
          group = group,
          pattern = c.filetypes,
          callback = function()
            vim.lsp.start(c)
          end,
          desc = "Start " .. server_name .. " via vim.lsp.start",
        })
      end

      local default_opts = {}

      local overrides = {
        pylsp = {
          settings = {
            pylsp = {
              plugins = {
                pycodestyle = { maxLineLength = 120 },
              },
            },
          },
        },
      }

      for _, server_name in ipairs(mlsp.get_installed_servers()) do
        autostart(server_name, overrides[server_name] or default_opts)
      end
    end,
  },
}
