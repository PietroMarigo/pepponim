return {
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate",
  config = function()
    ensure_installed = {"lua", "html", "css", "java"}
    highlight = {enable = true}
    indent = {enable = true}
    end
}
