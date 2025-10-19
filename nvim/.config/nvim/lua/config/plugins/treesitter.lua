return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "javascript",
        "typescript",
        "tsx",
        "html",
        "css",
        "scss",
        "python",
        "markdown",
        "markdown_inline",
        "json",
        "yaml",
        "toml",
        "bash",
        "graphql",
        "sql",
      },
      sync_install = false,
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = {
        enable = true
      },
    })
  end
}
