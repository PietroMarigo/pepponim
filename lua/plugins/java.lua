return {
	{
		"nvim-java/nvim-java",
		dependencies = {
			"nvim-java/lua-async-await",
			"nvim-java/nvim-java-core",
			"nvim-java/nvim-java-test",
			"nvim-java/nvim-java-dap",
			"MuniTanjim/nui.nvim",
			"neovim/nvim-lspconfig",
			"mfussenegger/nvim-dap",
			{
				"mason-org/mason.nvim",
				opts = {
					registries = {
						"github:nvim-java/mason-registry",
						"github:mason-org/mason-registry",
					},
				},
			},
		},
	},
	{
		"mfussenegger/nvim-jdtls",
		config = function()
			cmd = { vim.fn.expand("~/.local/share/nvim/mason/bin/jdtls") }
			root_dir = vim.fs.dirname(vim.fs.find({ ".git", "mvnw" }, { upward = true })[1])
      settings = {
        java = {
          configuration = {
            runtimes = {
              {
                name = "OpenJDK-21",
                path = "/usr/lib/jvm/java-21-openjdk/",
              },
            }
          }
        }
      }
		end,
	},
}
