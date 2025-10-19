return {
  "m4xshen/hardtime.nvim",
  dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
  event = "VeryLazy",
  opts = {
    -- Teaches you better motions by blocking inefficient ones
    max_count = 4, -- Max number of repeated keys (like jjjj)
    disable_mouse = false, -- Set to true to force keyboard only
    hint = true, -- Show hints when you do something inefficient
    notification = true,
    allow_different_key = true,
    enabled = true,
  },
}
