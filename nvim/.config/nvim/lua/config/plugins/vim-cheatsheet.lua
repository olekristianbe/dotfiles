-- Simple Vim motions cheatsheet in a floating window
return {
  "nvim-lua/plenary.nvim", -- Already installed, just using it
  keys = {
    {
      "<leader>?",
      function()
        local buf = vim.api.nvim_create_buf(false, true)

        local cheatsheet = {
          "╔══════════════════════════════════════════════════════════╗",
          "║           VIM MOTIONS CHEATSHEET                         ║",
          "╠══════════════════════════════════════════════════════════╣",
          "║ WORD MOTIONS                                             ║",
          "║  w          → next word start                            ║",
          "║  b          → previous word start                        ║",
          "║  e          → end of word                                ║",
          "║  W/B/E      → same but for WORDS (space-separated)       ║",
          "║                                                           ║",
          "║ LINE MOTIONS                                             ║",
          "║  0          → start of line                              ║",
          "║  ^          → first non-blank character                  ║",
          "║  $          → end of line                                ║",
          "║  g_         → last non-blank character                   ║",
          "║                                                           ║",
          "║ SCREEN MOTIONS                                           ║",
          "║  H          → top of screen                              ║",
          "║  M          → middle of screen                           ║",
          "║  L          → bottom of screen                           ║",
          "║  gg         → first line of file                         ║",
          "║  G          → last line of file                          ║",
          "║  {number}G  → go to line {number}                        ║",
          "║                                                           ║",
          "║ PARAGRAPH/BLOCK MOTIONS                                  ║",
          "║  {          → previous paragraph/block                   ║",
          "║  }          → next paragraph/block                       ║",
          "║  (          → previous sentence                          ║",
          "║  )          → next sentence                              ║",
          "║                                                           ║",
          "║ SEARCH MOTIONS                                           ║",
          "║  f{char}    → find next {char} on line                   ║",
          "║  F{char}    → find previous {char} on line               ║",
          "║  t{char}    → until next {char} on line                  ║",
          "║  T{char}    → until previous {char} on line              ║",
          "║  ;          → repeat last f/F/t/T                        ║",
          "║  ,          → repeat last f/F/t/T backwards              ║",
          "║  *          → search forward for word under cursor       ║",
          "║  #          → search backward for word under cursor      ║",
          "║                                                           ║",
          "║ TEXT OBJECTS (use with d/c/v/y)                          ║",
          "║  iw/aw      → inside/around word                         ║",
          "║  i\"/a\"      → inside/around \"quotes\"                     ║",
          "║  i'/a'      → inside/around 'quotes'                     ║",
          "║  i(/a( i)/a)→ inside/around (parentheses)                ║",
          "║  i{/a{ i}/a}→ inside/around {braces}                     ║",
          "║  i[/a[ i]/a]→ inside/around [brackets]                   ║",
          "║  it/at      → inside/around <tag>                        ║",
          "║                                                           ║",
          "║ OPERATORS (combine with motions/text objects)            ║",
          "║  d          → delete                                     ║",
          "║  c          → change (delete and enter insert mode)     ║",
          "║  y          → yank (copy)                                ║",
          "║  v          → visual select                              ║",
          "║                                                           ║",
          "║ EXAMPLES                                                 ║",
          "║  ci\"        → change inside \"quotes\"                     ║",
          "║  daw        → delete around word                         ║",
          "║  yap        → yank around paragraph                      ║",
          "║  d$         → delete to end of line                      ║",
          "║  c3w        → change next 3 words                        ║",
          "║  v}         → visual select to next paragraph            ║",
          "║                                                           ║",
          "║ Press 'q' or <Esc> to close                              ║",
          "╚══════════════════════════════════════════════════════════╝",
        }

        vim.api.nvim_buf_set_lines(buf, 0, -1, false, cheatsheet)
        vim.bo[buf].modifiable = false
        vim.bo[buf].bufhidden = 'wipe'

        local width = 62
        local height = #cheatsheet
        local win = vim.api.nvim_open_win(buf, true, {
          relative = 'editor',
          width = width,
          height = height,
          col = (vim.o.columns - width) / 2,
          row = (vim.o.lines - height) / 2 - 1,
          style = 'minimal',
          border = 'none',
        })

        -- Close on q or Esc
        vim.api.nvim_buf_set_keymap(buf, 'n', 'q', ':close<CR>', { noremap = true, silent = true })
        vim.api.nvim_buf_set_keymap(buf, 'n', '<Esc>', ':close<CR>', { noremap = true, silent = true })
      end,
      desc = "Show Vim motions cheatsheet",
    },
  },
}
