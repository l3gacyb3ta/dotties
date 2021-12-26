---[[-----------------]]---
--    LSP Keybindings    --
---]]-----------------[[---

local mappings = require("doom.utils.mappings")
local check_plugin = require("doom.utils").check_plugin

local opts = { silent = true }
local lsp_opts = vim.tbl_extend("force", opts, { expr = true })

-- gd: jump to definition
mappings.map(
  "n",
  "gd",
  ":lua vim.lsp.buf.definition()<CR>",
  opts,
  "LSP",
  "jump_to_definition",
  "Jump to definition"
)
-- gr: go to reference
mappings.map(
  "n",
  "gr",
  ":lua vim.lsp.buf.references()<CR>",
  opts,
  "LSP",
  "goto_reference",
  "Goto reference"
)
-- gi: buf implementation
mappings.map(
  "n",
  "gi",
  ":lua vim.lsp.buf.implementation()<CR>",
  opts,
  "LSP",
  "goto_implementation",
  "List implementations"
)
-- ca: code actions
mappings.map(
  "n",
  "ca",
  ":lua vim.lsp.buf.code_action()<CR>",
  opts,
  "LSP",
  "code_action",
  "Code action"
)
-- K: hover doc
mappings.map(
  "n",
  "K",
  ":lua vim.lsp.buf.hover()<CR>",
  opts,
  "LSP",
  "hover_doc",
  "Hover documentation"
)
-- Control+p: Jump to previous diagnostic
mappings.map(
  "n",
  "<C-p>",
  ":lua vim.lsp.diagnostic.goto_prev()<CR>",
  opts,
  "LSP",
  "prev_diagnostic",
  "Jump to previous diagnostic"
)
-- Control+n: Jump to next diagnostic
mappings.map(
  "n",
  "<C-n>",
  ":lua vim.lsp.diagnostic.goto_next()<CR>",
  opts,
  "LSP",
  "next_diagnostic",
  "Jump to next diagnostic"
)

vim.cmd('command! -nargs=0 LspVirtualTextToggle lua require("lsp/virtual_text").toggle()')

-- LuaSnip mappings
if check_plugin("LuaSnip", "opt") then
  mappings.map(
    "i",
    "<C-E>",
    'luasnip#choice_active() ? "<Plug>luasnip-next-choice" : "<C-E>"',
    lsp_opts,
    "Snippets",
    "luasnip_next_choice",
    "Next snippets field"
  )
  mappings.map(
    "s",
    "<C-E>",
    'luasnip#choice_active() ? "<Plug>luasnip-next-choice" : "<C-E>"',
    lsp_opts,
    "Snippets",
    "luasnip_next_choice_s",
    "Next snippet field"
  )
end
