return {
  "projekt0n/github-nvim-theme",
  name = "github-theme",
  priority = 1000,
  config = function()
    require("github-theme").setup({
      options = {
        transparent = false,
        styles = {
          comments = "italic",
        },
      },
    })
    vim.cmd.colorscheme("github_dark_dimmed")
    -- Disable colorcolumn
    vim.opt.colorcolumn = ""
  end,
}
