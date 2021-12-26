-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = true
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/arc/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/arc/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/arc/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/arc/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/arc/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["AutoSave.nvim"] = {
    loaded = true,
    path = "/home/arc/.local/share/nvim/site/pack/packer/start/AutoSave.nvim",
    url = "https://github.com/Pocco81/AutoSave.nvim"
  },
  ["DAPInstall.nvim"] = {
    config = { '\27LJ\1\2ð\5\0\0\20\3\24\0j4\0\0\0%\1\1\0>\0\2\0027\0\2\0007\1\3\0004\2\0\0%\3\4\0>\2\2\0027\2\5\2>\2\1\0024\3\6\0007\3\a\0034\4\0\0%\5\4\0>\4\2\0027\4\b\4>\4\1\0=\3\0\0022\4\0\0004\5\t\0\16\6\1\0>\5\2\4T\bD€\16\n\t\0\16\f\t\0007\v\n\t%\r\v\0%\14\f\0>\v\4\2\16\f\v\0007\v\n\v%\r\r\0%\14\f\0>\v\4\2\16\t\v\0+\v\0\0006\v\t\v\n\v\0\0T\v\3€+\v\0\0006\t\t\vT\v\3€2\v\3\0;\t\1\v\16\t\v\0004\v\t\0\16\f\t\0>\v\2\4T\14(€\16\17\n\0007\16\14\n%\18\15\0>\16\3\2\15\0\16\0T\17"€+\16\1\0007\16\16\16\16\17\2\0\16\18\15\0>\16\3\2\14\0\16\0T\16\27€+\16\1\0007\16\16\16\16\17\3\0\16\18\15\0>\16\3\2\15\0\16\0T\17\r€+\16\1\0007\16\16\16\16\17\4\0\16\18\15\0>\16\3\2\14\0\16\0T\16\r€4\16\17\0007\16\18\16\16\17\4\0\16\18\15\0>\16\3\1T\16\a€+\16\2\0007\16\19\16%\17\20\0\16\18\15\0%\19\21\0$\17\19\17>\16\2\1A\14\3\3N\14ÖA\b\3\3N\bº4\5\t\0\16\6\4\0>\5\2\4T\b\6€4\n\0\0%\v\22\0>\n\2\0027\n\23\n\16\v\t\0>\n\2\1A\b\3\3N\bøG\0\1\0\3À\1À\0À\21install_debugger\29dap-install.core.installA does not have a DAP client, please remove the "+debug" flag\18The language \twarn\vinsert\ntable\14has_value\f%+debug\tfind\15%s+%+debug\5\r%s+%+lsp\tgsub\vipairs\18get_debuggers\rtbl_keys\bvim\28get_installed_debuggers\30dap-install.api.debuggers\nlangs\fmodules\29doom.core.config.modules\frequire«\3\1\0\a\0\28\0(4\0\0\0%\1\1\0>\0\2\0024\1\0\0%\2\2\0>\1\2\0024\2\0\0%\3\3\0>\2\2\0027\3\4\0023\4\n\0004\5\5\0007\5\6\0057\5\a\5%\6\b\0>\5\2\2%\6\t\0$\5\6\5:\5\v\4>\3\2\0013\3\r\0003\4\f\0:\4\14\0033\4\15\0:\4\16\0033\4\17\0:\4\18\0033\4\19\0:\4\20\0033\4\21\0:\4\22\0033\4\23\0:\4\24\0033\4\25\0:\4\26\0031\4\27\0\16\5\4\0>\5\1\0010\0\0€G\0\1\0\0\truby\1\2\0\0\rruby_vsc\15typescript\1\3\0\0\vchrome\vjsnode\15javascript\1\3\0\0\vchrome\vjsnode\ago\1\2\0\0\rgo_delve\trust\1\2\0\0\14ccppr_vsc\6c\1\2\0\0\14ccppr_vsc\bcpp\1\0\0\1\2\0\0\14ccppr_vsc\22installation_path\1\0\0\17/dapinstall/\tdata\fstdpath\afn\bvim\nsetup\16dap-install\15doom.utils\24doom.extras.logging\frequire\0' },
    load_after = {
      ["nvim-dap"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/arc/.local/share/nvim/site/pack/packer/opt/DAPInstall.nvim",
    url = "https://github.com/Pocco81/DAPInstall.nvim"
  },
  LuaSnip = {
    config = { "\27LJ\1\2M\0\0\2\2\4\0\r+\0\0\0007\0\0\0'\1\1\0>\0\2\2\15\0\0\0T\1\2€%\0\1\0T\1\4€+\0\1\0007\0\2\0%\1\3\0>\0\2\2H\0\2\0\1À\0À\n<Tab>\6t\5\tjumpO\0\0\2\2\4\0\r+\0\0\0007\0\0\0'\1ÿÿ>\0\2\2\15\0\0\0T\1\2€%\0\1\0T\1\4€+\0\1\0007\0\2\0%\1\3\0>\0\2\2H\0\2\0\1À\0À\f<S-Tab>\6t\5\tjumpê\2\1\0\b\0\18\0'4\0\0\0%\1\1\0>\0\2\0024\1\0\0%\2\2\0>\1\2\0027\2\3\0017\2\4\0023\3\5\0>\2\2\0014\2\0\0%\3\6\0>\2\2\0027\2\a\2>\2\1\0011\2\b\0001\3\t\0007\4\n\0%\5\v\0\16\6\2\0003\a\f\0>\4\4\0017\4\r\0%\5\v\0\16\6\2\0003\a\14\0>\4\4\0017\4\n\0%\5\15\0\16\6\3\0003\a\16\0>\4\4\0017\4\r\0%\5\15\0\16\6\3\0003\a\17\0>\4\4\0010\0\0€G\0\1\0\1\0\1\texpr\2\1\0\1\texpr\2\f<S-Tab>\1\0\1\texpr\2\tsmap\1\0\1\texpr\2\n<Tab>\timap\0\0\tload luasnip/loaders/from_vscode\1\0\2\fhistory\2\17updateevents\29TextChanged,TextChangedI\15set_config\vconfig\fluasnip\24doom.utils.mappings\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/arc/.local/share/nvim/site/pack/packer/opt/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip",
    wants = { "friendly-snippets" }
  },
  aniseed = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/arc/.local/share/nvim/site/pack/packer/opt/aniseed",
    url = "https://github.com/Olical/aniseed"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\1\2/\0\1\4\0\4\0\0054\1\0\0007\1\1\1%\2\2\0007\3\3\0@\1\3\0\aid\a%s\vformat\vstringƒ\1\0\4\14\0\a\0\21%\4\0\0004\5\1\0\16\6\2\0>\5\2\4D\b\r€\a\b\2\0T\n\2€%\n\3\0T\v\5€\a\b\4\0T\n\2€%\n\5\0T\v\1€%\n\6\0\16\v\4\0\16\f\t\0\16\r\n\0$\4\r\vB\b\3\3N\bñH\4\2\0\n ï µ \n ï± \fwarning\n ï— \nerror\npairs\6 E\0\1\2\0\4\0\t4\1\0\0007\1\1\0016\1\0\0017\1\2\1\6\1\3\0T\1\2€)\1\2\0H\1\2\0G\0\1\0\14dashboard\rfiletype\abo\bvimX\0\1\4\0\4\0\r7\1\0\0\16\2\1\0007\1\1\1%\3\2\0>\1\3\2\14\0\1\0T\2\5€7\1\0\0\16\2\1\0007\1\1\1%\3\3\0>\1\3\2H\1\2\0\v%_spec\v%_test\nmatch\rfilenameU\0\1\4\0\4\0\r7\1\0\0\16\2\1\0007\1\1\1%\3\2\0>\1\3\2\14\0\1\0T\2\5€7\1\0\0\16\2\1\0007\1\1\1%\3\3\0>\1\3\2H\1\2\0\n%.txt\t%.md\nmatch\rfilenameq\0\1\6\0\4\0\0207\1\0\0\16\2\1\0007\1\1\1%\3\2\0>\1\3\2\14\0\1\0T\2\t€7\1\0\0\16\2\1\0007\1\1\1%\3\3\0'\4\1\0)\5\2\0>\1\5\2\15\0\1\0T\2\2€)\1\2\0H\1\2\0)\1\1\0H\1\2\0\ndoom-\ndoom_\tfind\rfilename\3\0\0\b\0\17\1>2\0\0\0004\1\0\0007\1\1\0017\1\2\0017\1\3\1'\2\0\0%\3\4\0>\1\3\0024\2\0\0007\2\1\0027\2\2\0027\2\3\2'\3\0\0%\4\5\0>\2\3\0024\3\0\0007\3\1\0037\3\2\0037\3\3\3'\4\0\0%\5\6\0>\3\3\0024\4\0\0007\4\1\0047\4\2\0047\4\3\4'\5\0\0%\6\a\0>\4\3\2\b\1\0\0T\5\6€3\5\t\0%\6\b\0\16\a\1\0$\6\a\6:\6\n\5;\5\1\0\b\2\0\0T\5\6€3\5\f\0%\6\v\0\16\a\2\0$\6\a\6:\6\n\5;\5\2\0\b\4\0\0T\5\6€3\5\14\0%\6\r\0\16\a\4\0$\6\a\6:\6\n\5;\5\3\0\b\3\0\0T\5\6€3\5\16\0%\6\15\0\16\a\3\0$\6\a\6:\6\n\5;\5\4\0H\0\2\0\1\0\1\nguifg\f#51afef\n ï µ \1\0\1\nguifg\f#98be65\n ï™ \1\0\1\nguifg\f#ECBE7B\n ï± \ttext\1\0\1\nguifg\f#ff6c6b\n ï— \tHint\16Information\fWarning\nError\14get_count\15diagnostic\blsp\bvim\0Í\b\1\0\a\0!\00014\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1 \0003\2\4\0001\3\3\0:\3\5\0021\3\6\0:\3\a\0021\3\b\0:\3\t\0023\3\v\0003\4\n\0:\4\f\0032\4\4\0003\5\r\0001\6\14\0:\6\15\5;\5\1\0043\5\16\0001\6\17\0:\6\15\5;\5\2\0043\5\18\0001\6\19\0:\6\15\5;\5\3\4:\4\20\3:\3\21\0022\3\6\0003\4\22\0;\4\1\0033\4\23\0;\4\2\0033\4\24\0;\4\3\0033\4\25\0;\4\4\0033\4\26\0;\4\5\3:\3\27\0023\3\29\0001\4\28\0:\4\30\3:\3\31\2:\2\f\1>\0\2\1G\0\1\0\1\0\0\17custom_areas\nright\1\0\0\0\foffsets\1\0\3\ttext\20Plugins manager\15text_align\vcenter\rfiletype\vpacker\1\0\3\ttext\fSymbols\15text_align\vcenter\rfiletype\fOutline\1\0\3\ttext\fMinimap\15text_align\vcenter\rfiletype\fminimap\1\0\3\ttext\18File Explorer\15text_align\vcenter\rfiletype\nnetrw\1\0\3\ttext\18File Explorer\15text_align\vcenter\rfiletype\rNvimTree\vgroups\nitems\0\1\0\2\15auto_close\2\tname\tDoom\0\1\0\2\15auto_close\2\tname\tDocs\fmatcher\0\1\0\2\15auto_close\2\tname\nTests\foptions\1\0\0\1\0\1\27toggle_hidden_on_enter\2\18custom_filter\0\26diagnostics_indicator\0\fnumbers\1\0\19\28show_buffer_close_icons\2\22left_trunc_marker\bï‚¨\fsort_by\14directory\25enforce_regular_tabs\2\16diagnostics\rnvim_lsp\rtab_size\3\25\20separator_style\nthick\27always_show_bufferline\1\24show_tab_indicators\2\22buffer_close_icon\bï™•\20max_name_length\3\20\15close_icon\bï€\22show_buffer_icons\2\24persist_buffer_sort\2\23right_trunc_marker\bï‚©\22max_prefix_length\3\15\20show_close_icon\1\19indicator_icon\bâ–Ž\18modified_icon\bâ—\0\nsetup\15bufferline\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/arc/.local/share/nvim/site/pack/packer/opt/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmd-parser.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/arc/.local/share/nvim/site/pack/packer/opt/cmd-parser.nvim",
    url = "https://github.com/winston0410/cmd-parser.nvim"
  },
  ["cmp-buffer"] = {
    after_files = { "/home/arc/.local/share/nvim/site/pack/packer/opt/cmp-buffer/after/plugin/cmp_buffer.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/arc/.local/share/nvim/site/pack/packer/opt/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    after_files = { "/home/arc/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp/after/plugin/cmp_nvim_lsp.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/arc/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    after_files = { "/home/arc/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua/after/plugin/cmp_nvim_lua.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/arc/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    after_files = { "/home/arc/.local/share/nvim/site/pack/packer/opt/cmp-path/after/plugin/cmp_path.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/arc/.local/share/nvim/site/pack/packer/opt/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    after_files = { "/home/arc/.local/share/nvim/site/pack/packer/opt/cmp_luasnip/after/plugin/cmp_luasnip.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/arc/.local/share/nvim/site/pack/packer/opt/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["dashboard-nvim"] = {
    config = { "\27LJ\1\2¬\25\0\0\t\0009\0y4\0\0\0%\1\1\0>\0\2\0027\0\2\0004\1\3\0007\1\4\0014\2\0\0%\3\6\0>\2\2\0027\2\a\2%\3\b\0$\2\3\2:\2\5\0014\1\3\0007\1\4\1%\2\n\0:\2\t\0014\1\3\0007\1\4\0013\2\15\0003\3\r\0003\4\f\0:\4\14\3:\3\16\0023\3\18\0003\4\17\0:\4\14\3:\3\19\0023\3\21\0003\4\20\0:\4\14\3:\3\22\0023\3\24\0003\4\23\0:\4\14\3:\3\25\0023\3\27\0003\4\26\0:\4\14\3:\3\28\0023\3\30\0003\4\29\0:\4\14\3:\3\31\0023\3!\0003\4 \0:\4\14\3:\3\4\2:\2\v\0014\1\3\0007\1\4\0012\2\3\0%\3#\0004\4\3\0007\4$\0047\4%\4%\5&\0004\6\3\0007\6$\0067\6'\0064\a\3\0007\a$\a7\a(\a4\b\3\0007\b\4\b7\b)\b>\a\2\0=\6\0\0=\4\1\2%\5*\0$\3\5\3;\3\1\2:\2\"\0014\1\3\0007\1\4\0014\2\3\0007\2,\0027\3-\0007\3+\3>\2\2\2\15\0\2\0T\3\3€3\2.\0\14\0\2\0T\3\2€7\2-\0007\2+\2:\2+\0014\1\3\0007\1/\1%\0020\0007\3-\0007\0031\0037\0032\3$\2\3\2>\1\2\0014\1\3\0007\1/\1%\0023\0007\3-\0007\0031\0037\0034\3$\2\3\2>\1\2\0014\1\3\0007\1/\1%\0025\0007\3-\0007\0031\0037\0036\3$\2\3\2>\1\2\0014\1\3\0007\1/\1%\0027\0007\3-\0007\0031\0037\0038\3$\2\3\2>\1\2\1G\0\1\0\17footer_color!hi! dashboardFooter   guifg=\19shortcut_color!hi! dashboardShortcut guifg=\17center_color!hi! dashboardCenter   guifg=\17header_color\28dashboard_custom_colors!hi! dashboardHeader   guifg=\bcmd\1\21\0\0S                                                                              S=================     ===============     ===============   ========  ========S\\\\ . . . . . . .\\\\   //. . . . . . .\\\\   //. . . . . . .\\\\  \\\\. . .\\\\// . . //S||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\\/ . . .||S|| . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||S||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||S|| . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\\ . . . . ||S||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\\_ . .|. .||S|| . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\\ `-_/| . ||S||_-' ||  .|/    || ||    \\|.  || `-_|| ||_-' ||  .|/    || ||   | \\  / |-_.||S||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \\  / |  `||S||    `'         || ||         `'    || ||    `'         || ||   | \\  / |   ||S||            .===' `===.         .==='.`===.         .===' /==. |  \\/  |   ||S||         .=='   \\_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \\/  |   ||S||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \\/  |   ||S||   .=='    _-'          `-__\\._-'         `-_./__-'         `' |. /|  |   ||S||.=='    _-'                                                     `' |  /==.||S=='    _-'                        N E O V I M                         \\/   `==S\\   _-'                                                                `-_   /T `''                                                                      ``'  \tdoom\16tbl_isempty\28dashboard_custom_header\14 seconds.\15start_time\freltime\17reltimefloat\t%.3f\vprintf\afn\25Doom Nvim loaded in \28dashboard_custom_footer\1\0\1\fcommand3lua require(\"doom.core.functions\").open_docs()\1\2\0\0000ï€­  Open Documentation             SPC d d\6f\1\0\1\fcommand5lua require(\"doom.core.functions\").edit_config()\1\2\0\0000ï‘¢  Open Private Configuration     SPC d c\6e\1\0\1\fcommand\24Telescope live_grep\1\2\0\0000ï‡‚  Find Word                      SPC s g\6d\1\0\1\fcommand\25Telescope find_files\1\2\0\0000ïœ¡  Find File                      SPC f f\6c\1\0\1\fcommand\20Telescope marks\1\2\0\0000ï€®  Jump to Bookmark               SPC s m\6b\1\0\1\fcommand\23Telescope oldfiles\1\2\0\0000ï…œ  Recently Opened Files          SPC f r\6a\1\0\0\16description\1\0\1\fcommand5lua require('persistence').load({ last = true })\1\2\0\0000ï€ž  Load Last Session              SPC s r\29dashboard_custom_section\14telescope dashboard_default_executive\14/sessions\14doom_root\21doom.core.system dashboard_session_directory\6g\bvim\vconfig\21doom.core.config\frequire\0" },
    loaded = true,
    path = "/home/arc/.local/share/nvim/site/pack/packer/start/dashboard-nvim",
    url = "https://github.com/glepnir/dashboard-nvim"
  },
  ["format.nvim"] = {
    commands = { "Format", "FormatWrite" },
    config = { "\27LJ\1\2N\0\1\4\1\1\0\4+\1\0\0%\2\0\0\16\3\0\0@\1\3\0\0À9stylua --config-path ~/.config/stylua/stylua.toml %sN\0\1\4\1\1\0\4+\1\0\0%\2\0\0\16\3\0\0@\1\3\0\0À9stylua --config-path ~/.config/stylua/stylua.toml %s$\0\1\4\1\1\0\4+\1\0\0%\2\0\0\16\3\0\0@\1\3\0\0À\15yapf -i %s¢\t\1\0\a\0005\0n4\0\0\0007\0\1\0004\1\2\0%\2\1\0>\1\2\0027\1\3\0013\2\a\0002\3\3\0003\4\5\0003\5\4\0:\5\6\4;\4\1\3:\3\b\0022\3\3\0003\4\n\0002\5\3\0001\6\t\0;\6\1\5:\5\6\4;\4\1\3:\3\v\0022\3\3\0003\4\r\0003\5\f\0:\5\6\4;\4\1\3:\3\14\0022\3\3\0003\4\16\0002\5\3\0001\6\15\0;\6\1\5:\5\6\4;\4\1\3:\3\17\0022\3\3\0003\4\19\0002\5\3\0001\6\18\0;\6\1\5:\5\6\4;\4\1\3:\3\20\0022\3\3\0003\4\22\0003\5\21\0:\5\6\4;\4\1\3:\3\23\0022\3\3\0003\4\25\0003\5\24\0:\5\6\4;\4\1\3:\3\26\0022\3\3\0003\4\28\0003\5\27\0:\5\6\4;\4\1\3:\3\29\0022\3\3\0003\4\31\0003\5\30\0:\5\6\4;\4\1\3:\3 \0022\3\3\0003\4\"\0003\5!\0:\5\6\4;\4\1\0033\4$\0003\5#\0:\5\6\4;\4\2\3:\3%\0022\3\3\0003\4'\0003\5&\0:\5\6\4;\4\1\3:\3(\0022\3\3\0003\4*\0003\5)\0:\5\6\4;\4\1\3:\3+\0022\3\3\0003\4-\0003\5,\0:\5\6\4;\4\1\3:\3.\0022\3\3\0003\0040\0003\5/\0:\5\6\4;\4\1\3:\0031\0022\3\3\0003\0043\0003\0052\0:\5\6\4;\4\1\3:\0034\2>\1\2\0010\0\0€G\0\1\0\tyaml\1\0\0\1\2\0\0\30prettier -w --parser yaml\ttoml\1\0\0\1\2\0\0\30prettier -w --parser toml\tjson\1\0\0\1\2\0\0\30prettier -w --parser json\tscss\1\0\0\1\2\0\0\30prettier -w --parser scss\bcss\1\0\0\1\2\0\0\29prettier -w --parser css\rmarkdown\1\0\3\16end_pattern\n^```$\vtarget\fcurrent\18start_pattern\16^```python$\1\2\0\0\fyapf -i\1\0\0\1\2\0\0\"prettier -w --parser markdown\thtml\1\0\0\1\2\0\0\30prettier -w --parser html\15typescript\1\0\0\1\2\0\0$prettier -w --parser typescript\15javascript\1\0\0\1\3\0\0\16prettier -w%./node_modules/.bin/eslint --fix\ago\1\0\1\21tempfile_postfix\t.tmp\1\3\0\0\rgofmt -w\17goimports -w\vpython\1\0\0\0\blua\1\0\0\0\fvimwiki\1\0\2\16end_pattern\n^}}}$\18start_pattern\20^{{{javascript$\1\2\0\0\31prettier -w --parser babel\bvim\1\0\2\16end_pattern\n^EOF$\18start_pattern\17^lua << EOF$\0\6*\1\0\0\bcmd\1\0\0\1\2\0\0\24sed -i 's/[ \t]*$//'\nsetup\frequire\vformat\vstring\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/arc/.local/share/nvim/site/pack/packer/opt/format.nvim",
    url = "https://github.com/lukas-reineke/format.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/arc/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\1\2K\0\0\2\1\2\0\t+\0\0\0007\0\0\0>\0\1\2\6\0\1\0T\1\2€)\1\1\0T\2\1€)\1\2\0H\1\2\0\5À\14DASHBOARD\24get_buffer_filetypeK\0\0\2\1\2\0\t+\0\0\0007\0\0\0>\0\1\2\a\0\1\0T\1\2€)\1\1\0T\2\1€)\1\2\0H\1\2\0\5À\14DASHBOARD\24get_buffer_filetype\20\0\0\1\0\1\0\2%\0\0\0H\0\2\0\tâ–Š ›\4\0\0\4\1#\0_3\0\1\0+\1\0\0%\2\0\0>\1\2\2:\1\2\0+\1\0\0%\2\3\0>\1\2\2:\1\4\0+\1\0\0%\2\5\0>\1\2\2:\1\6\0+\1\0\0%\2\5\0>\1\2\2:\1\a\0+\1\0\0%\2\5\0>\1\2\2:\1\b\0+\1\0\0%\2\t\0>\1\2\2:\1\n\0+\1\0\0%\2\0\0>\1\2\2:\1\v\0+\1\0\0%\2\f\0>\1\2\2:\1\r\0+\1\0\0%\2\f\0>\1\2\2:\1\14\0+\1\0\0%\2\f\0>\1\2\2:\1\15\0+\1\0\0%\2\16\0>\1\2\2:\1\17\0+\1\0\0%\2\t\0>\1\2\2:\1\18\0+\1\0\0%\2\t\0>\1\2\2:\1\19\0+\1\0\0%\2\0\0>\1\2\2:\1\20\0+\1\0\0%\2\0\0>\1\2\2:\1\21\0+\1\0\0%\2\22\0>\1\2\2:\1\23\0+\1\0\0%\2\22\0>\1\2\2:\1\24\0+\1\0\0%\2\22\0>\1\2\2:\1\25\0+\1\0\0%\2\0\0>\1\2\2:\1\26\0+\1\0\0%\2\0\0>\1\2\2:\1\27\0004\1\28\0007\1\29\0017\1\30\1%\2\31\0004\3\28\0007\3 \0037\3!\3>\3\1\0026\3\3\0>\3\1\2$\2\3\2>\1\2\1%\1\"\0H\1\2\0\2À\nïŒŒ  \tmode\afn\27hi GalaxyViMode guifg=\17nvim_command\bapi\bvim\6t\6!\ar?\arm\6r\tcyan\ace\acv\aRv\6R\aic\vyellow\6\19\6S\6s\vorange\ano\6c\fmagenta\6V\6\22\6v\tblue\6i\ngreen\6n\1\0\0\breds\0\0\6\0\b\0\0164\0\0\0007\0\1\0007\0\2\0%\1\3\0>\0\2\0024\1\0\0007\1\1\0017\1\4\1%\2\3\0>\1\2\0024\2\5\0007\2\6\2%\3\a\0\16\4\0\0\16\5\1\0@\2\4\0\16%3d : %2d  \vformat\vstring\bcol\6.\tline\afn\bvimº\1\0\0\4\1\t\0\24+\0\0\0007\0\0\0>\0\1\2\6\0\1\0T\0\v€4\0\2\0007\0\3\0%\1\4\0004\2\5\0007\2\6\0027\2\a\2+\3\0\0007\3\0\3>\3\1\0?\0\2\0T\0\a€4\0\2\0007\0\3\0%\1\b\0004\2\5\0007\2\6\0027\2\a\2@\0\3\0G\0\1\0\4À\fï %s \rfiletype\abo\bvim\18î˜ %s Â» %s \vformat\vstring\18No Active Lsp\19get_lsp_clientS\0\0\2\0\4\0\v3\0\0\0004\1\1\0007\1\2\0017\1\3\0016\1\1\0\15\0\1\0T\2\2€)\1\1\0H\1\2\0)\1\2\0H\1\2\0\rfiletype\abo\bvim\1\0\2\5\2\14dashboard\2\20\0\0\1\0\1\0\2%\0\0\0H\0\2\0\tïž¡ \19\0\0\1\0\1\0\2%\0\0\0H\0\2\0\b   7\0\0\3\1\3\0\6%\0\0\0+\1\0\0007\1\1\1%\2\2\0$\0\2\0H\0\2\0\0À\6 \17doom_version\vDOOM v\20\0\0\1\0\1\0\2%\0\0\0H\0\2\0\t â–Š\20\0\0\1\0\1\0\2%\0\0\0H\0\2\0\tâ–Š \20\0\0\1\0\1\0\2%\0\0\0H\0\2\0\t â–ŠÂ\30\1\0\16\0‹\1\1Ë\0044\0\0\0%\1\1\0>\0\2\0024\1\0\0%\2\2\0>\1\2\0027\1\3\0014\2\0\0%\3\4\0>\2\2\0027\2\5\0024\3\0\0%\4\6\0>\3\2\0024\4\0\0%\5\a\0>\4\2\0024\5\0\0%\6\b\0>\5\2\0024\6\0\0%\a\t\0>\6\2\0027\a\n\0033\b\f\0:\b\v\0037\b\r\0017\b\14\b\14\0\b\0T\b\5€4\b\15\0007\b\16\b7\t\17\3%\n\18\0>\b\3\0011\b\19\0001\t\20\0007\n\21\a3\v\28\0003\f\23\0001\r\22\0:\r\24\f2\r\3\0\16\14\2\0%\15\25\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r\27\f:\f\29\v;\v\1\n7\n\21\a3\v\"\0003\f\31\0001\r\30\0:\r\24\f3\r!\0\16\14\2\0%\15 \0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\2;\14\2\r:\r\27\f:\f#\v;\v\2\n7\n\21\a3\v*\0003\f$\0007\r%\6\15\0\r\0T\14\1€7\r&\6:\r'\f2\r\3\0\16\14\2\0%\15(\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r\27\f2\r\3\0\16\14\2\0%\15\26\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r)\f:\f+\v;\v\3\n7\n\21\a3\v/\0003\f,\0007\r%\6\15\0\r\0T\14\1€\16\r\t\0:\r'\f2\r\3\0004\14\0\0%\15-\0>\14\2\0027\14.\14;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r\27\f:\f0\v;\v\4\n7\n\21\a3\v6\0003\f3\0007\r\r\0017\r1\r\15\0\r\0T\14\2€%\r2\0T\14\1€%\r4\0:\r\24\f7\r%\6\15\0\r\0T\14\1€\16\r\t\0:\r'\f3\r5\0\16\14\2\0%\15(\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\2;\14\2\r:\r\27\f2\r\3\0\16\14\2\0%\15\26\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r)\f:\f4\v;\v\5\n7\n\21\a3\v:\0003\f8\0001\r7\0:\r\24\f:\t'\f2\r\3\0\16\14\2\0%\0159\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r\27\f:\f;\v;\v\6\n7\n\21\a3\v=\0003\f<\0:\t'\f2\r\3\0\16\14\2\0%\0159\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r\27\f2\r\3\0\16\14\2\0%\15\26\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r)\f:\f>\v;\v\a\n7\n\21\a3\vC\0003\f?\0:\t'\f7\r\r\0017\r@\r%\14A\0$\r\14\r:\rB\f2\r\3\0\16\14\2\0%\15 \0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r\27\f:\fD\v;\v\b\n7\n\21\a3\vH\0003\fE\0:\t'\f7\r\r\0017\rF\r%\14A\0$\r\14\r:\rB\f2\r\3\0\16\14\2\0%\15G\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r\27\f:\fI\v;\v\t\n7\n\21\a3\vL\0003\fJ\0:\t'\f7\r\r\0017\rK\r%\14A\0$\r\14\r:\rB\f2\r\3\0\16\14\2\0%\15\25\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r\27\f:\fM\v;\v\n\n7\nN\a3\vP\0003\fO\0007\r&\6\15\0\r\0T\14\1€\16\r\t\0:\r'\f2\r\3\0\16\14\2\0%\15(\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r\27\f2\r\3\0\16\14\2\0%\15\26\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r)\f:\fQ\v;\v\1\n7\nN\a3\vS\0003\fR\0007\r&\6\15\0\r\0T\14\1€\16\r\t\0:\r'\f2\r\3\0\16\14\2\0%\15(\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r\27\f2\r\3\0\16\14\2\0%\15\26\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r)\f:\fT\v;\v\2\n7\nN\a3\vX\0003\fV\0001\rU\0:\r\24\f1\rW\0:\r'\f2\r\3\0\16\14\2\0%\15\25\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r\27\f2\r\3\0\16\14\2\0%\15\26\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r)\f:\fY\v;\v\3\n7\nN\a3\v]\0003\f[\0001\rZ\0:\r\24\f7\r\\\6:\r'\f2\r\3\0\16\14\2\0%\15 \0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r\27\f2\r\3\0\16\14\2\0%\15\26\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r)\f:\f^\v;\v\4\n7\nN\a3\vb\0003\f_\0007\r\\\6:\r'\f3\ra\0\16\14\2\0%\15`\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\2;\14\2\r:\r\27\f:\fc\v;\v\5\n7\nN\a3\vf\0003\fe\0001\rd\0:\r\24\f7\r&\6:\r'\f2\r\3\0\16\14\2\0%\15\26\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r\27\f:\fg\v;\v\6\n7\nN\a3\vi\0003\fh\0007\r&\6:\r'\f2\r\3\0\16\14\2\0%\15`\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r\27\f:\fj\v;\v\a\n7\nN\a3\vl\0003\fk\0007\r&\6:\r'\f2\r\3\0\16\14\2\0%\15G\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r\27\f:\fm\v;\v\b\n7\nN\a3\vo\0003\fn\0007\r&\6:\r'\f2\r\3\0\16\14\2\0%\15 \0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r\27\f:\fp\v;\v\t\n\15\0\b\0T\n\28€7\nN\a3\vt\0003\fr\0001\rq\0:\r\24\f:\b'\f3\rs\0\16\14\2\0%\15\25\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\2;\14\2\r:\r\27\f2\r\3\0\16\14\2\0%\15\26\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r)\f:\fu\v;\v\n\n7\nN\a3\vx\0003\fw\0001\rv\0:\r\24\f2\r\3\0\16\14\2\0%\15\25\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r\27\f:\fy\v;\v\v\n7\nz\a3\v}\0003\f|\0001\r{\0:\r\24\f2\r\3\0\16\14\2\0%\15\25\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r\27\f:\f~\v;\v\1\n7\nz\a3\v€\0003\f\0:\t'\f2\r\3\0\16\14\2\0%\15(\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r\27\f:\f\v;\v\2\n7\n‚\a3\v…\0003\fƒ\0:\t'\f2\r\3\0\16\14\2\0%\15„\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r\27\f:\f†\v;\v\1\n7\n‚\a3\v‰\0003\fˆ\0001\r‡\0:\r\24\f2\r\3\0\16\14\2\0%\15\25\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r\27\f:\fŠ\v;\v\2\n0\0\0€G\0\1\0\22ShortRainbowRight\1\0\0\1\0\0\0\15BufferIcon\1\0\0\vyellow\1\0\1\rprovider\15BufferIcon\21short_line_right\15BufferType\1\0\0\1\0\1\rprovider\17FileTypeName\21ShortRainbowLeft\1\0\0\1\0\0\0\20short_line_left\17RainbowRight\1\0\0\1\0\0\0\16DoomVersion\1\0\0\1\4\0\0\0\0\tbold\1\0\1\14separator\a  \0\15DiffRemove\1\0\0\1\0\2\ticon\tï‘˜ \rprovider\15DiffRemove\17DiffModified\1\0\0\1\0\2\ticon\tï‘™ \rprovider\17DiffModified\fDiffAdd\1\0\0\1\0\2\ticon\tï‘— \rprovider\fDiffAdd\18DiffSeparator\1\0\0\1\0\0\0\14GitBranch\1\0\0\1\4\0\0\0\0\tbold\ngreen\1\0\1\rprovider\14GitBranch\fGitIcon\1\0\0\24check_git_workspace\1\0\1\14separator\6 \0\28ShowLspClientOrFileType\1\0\0\0\1\0\1\14separator\a  \0\15FileEncode\1\0\0\1\0\2\14separator\6 \rprovider\15FileEncode\15FileFormat\1\0\0\1\0\2\14separator\a  \rprovider\15FileFormat\nright\19DiagnosticInfo\1\0\0\rlsp_hint\1\0\1\rprovider\19DiagnosticInfo\19DiagnosticWarn\1\0\0\vorange\rlsp_warn\1\0\1\rprovider\19DiagnosticWarn\20DiagnosticError\1\0\0\ticon\6 \14lsp_error\1\0\1\rprovider\20DiagnosticError\16LinePercent\1\0\0\1\0\2\14separator\a  \rprovider\16LinePercent\rLineInfo\1\0\0\vfg_alt\1\0\0\0\1\0\0\1\4\0\0\0\0\tbold\rFileName\1\0\1\14separator\6 \rFilePath\30statusline_show_file_path\rFileIcon\1\0\0\24get_file_icon_color\"galaxyline.providers.fileinfo\1\0\1\rprovider\rFileIcon\rFileSize\1\0\0\24separator_highlight\afg\14condition\18hide_in_width\21buffer_not_empty\1\0\2\14separator\6 \rprovider\rFileSize\vViMode\1\0\0\1\4\0\0\0\0\tbold\bred\1\0\0\0\16RainbowLeft\1\0\0\14highlight\abg\tblue\rprovider\1\0\0\0\tleft\0\0\14dashboard\22exclude_filetypes\vinsert\ntable\23dashboard_statline\tdoom\1\a\0\0\rNvimTree\vpacker\fminimap\fOutline\15toggleterm\nnetrw\20short_line_list\fsection\25galaxyline.condition galaxyline.providers.buffer\29galaxyline.providers.lsp\15galaxyline\14get_color\29galaxyline.themes.colors\vconfig\21doom.core.config\15doom.utils\frequire\5€€À™\4\0" },
    loaded = true,
    path = "/home/arc/.local/share/nvim/site/pack/packer/start/galaxyline.nvim",
    url = "https://github.com/NTBBloodbath/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\1\2Ý\n\0\0\4\0\28\0\0314\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\14\0003\2\4\0003\3\3\0:\3\5\0023\3\6\0:\3\a\0023\3\b\0:\3\t\0023\3\n\0:\3\v\0023\3\f\0:\3\r\2:\2\15\0013\2\16\0003\3\17\0:\3\18\0023\3\19\0:\3\20\2:\2\21\0013\2\22\0:\2\23\0013\2\24\0:\2\25\0013\2\26\0:\2\27\1>\0\2\1G\0\1\0\14diff_opts\1\0\1\rinternal\2\28current_line_blame_opts\1\0\2\ndelay\3è\a\rposition\beol\17watch_gitdir\1\0\2\rinterval\3è\a\17follow_files\2\fkeymaps\tn [c\1\2\1\0@&diff ? '[c' : '<cmd>lua require\"gitsigns\".prev_hunk()<CR>'\texpr\2\tn ]c\1\2\1\0@&diff ? ']c' : '<cmd>lua require\"gitsigns\".next_hunk()<CR>'\texpr\2\1\0\n\fnoremap\2\17n <leader>gh2<cmd>lua require\"gitsigns\".preview_hunk()<CR>\17n <leader>gr0<cmd>lua require\"gitsigns\".reset_hunk()<CR>\17n <leader>gb0<cmd>lua require\"gitsigns\".blame_line()<CR>\tx ih2:<C-U>lua require\"gitsigns\".select_hunk()<CR>\17n <leader>gS0<cmd>lua require\"gitsigns\".stage_hunk()<CR>\17n <leader>gu5<cmd>lua require\"gitsigns\".undo_stage_hunk()<CR>\vbuffer\2\17n <leader>gR2<cmd>lua require\"gitsigns\".reset_buffer()<CR>\to ih2:<C-U>lua require\"gitsigns\".select_hunk()<CR>\nsigns\1\0\4\20update_debounce\3d\vlinehl\1\nnumhl\1\18sign_priority\3\6\17changedelete\1\0\4\ttext\6~\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\ahl\19GitSignsChange\14topdelete\1\0\4\ttext\bâ€¾\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\ahl\19GitSignsDelete\vdelete\1\0\4\ttext\6_\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\ahl\19GitSignsDelete\vchange\1\0\4\ttext\bâ”‚\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\ahl\19GitSignsChange\badd\1\0\0\1\0\4\ttext\bâ”‚\nnumhl\18GitSignsAddNr\vlinehl\18GitSignsAddLn\ahl\16GitSignsAdd\nsetup\rgitsigns\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/arc/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  kommentary = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/arc/.local/share/nvim/site/pack/packer/opt/kommentary",
    url = "https://github.com/b3nj5m1n/kommentary"
  },
  ["lsp_signature.nvim"] = {
    config = { "\27LJ\1\2‹\3\0\0\3\0\a\0\f3\0\0\0003\1\1\0:\1\2\0002\1\0\0:\1\3\0004\1\4\0%\2\5\0>\1\2\0027\1\6\1\16\2\0\0>\1\2\1G\0\1\0\nsetup\18lsp_signature\frequire\24extra_trigger_chars\17handler_opts\1\0\1\vborder\vsingle\1\0\17\rlog_path\24debug_log_file_path\14doc_lines\3\n\16hint_prefix\tîž¡ \ndebug\1\tbind\2\16hint_enable\2\14max_width\3x\fpadding\5\15max_height\3\f\20floating_window\1#floating_window_above_cur_line\2\ffix_pos\1\vzindex\3È\1\17hi_parameter\vSearch\16hint_scheme\vString\17shadow_guibg\nBlack\17shadow_blend\3$\0" },
    load_after = {},
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/arc/.local/share/nvim/site/pack/packer/opt/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["lua-dev.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/arc/.local/share/nvim/site/pack/packer/opt/lua-dev.nvim",
    url = "https://github.com/folke/lua-dev.nvim"
  },
  neorg = {
    config = { "\27LJ\1\2í\3\0\0\a\0\17\0%4\0\0\0%\1\1\0>\0\2\0024\1\0\0%\2\2\0>\1\2\0027\2\3\0013\3\b\0004\4\4\0007\4\5\0047\4\6\4%\5\a\0>\4\2\2;\4\1\3>\2\2\0024\3\4\0007\3\5\0037\3\t\3\16\4\2\0\a\2\n\0T\5\2€%\5\v\0T\6\1€%\5\f\0$\4\5\4>\3\2\0028\3\1\3\16\5\3\0007\4\r\3%\6\14\0>\4\3\2\15\0\4\0T\5\3€7\4\15\0%\5\16\0>\4\2\1G\0\1\0Á\1doom-neorg:  clang has poor compatibility compiling treesitter parsers.  We recommend using gcc instead, see issue #246 for details.  (https://github.com/NTBBloodbath/doom-nvim/issues/246)\twarn\nclang\nmatch\15 --version\5\acl\15systemlist\1\a\0\0\0\acc\bgcc\nclang\acl\bzig\aCC\vgetenv\afn\bvim\28find_executable_in_path\15doom.utils\24doom.extras.logging\frequireæ\3\1\0\n\0\29\0*4\0\0\0%\1\1\0>\0\2\0027\0\2\0004\1\0\0%\2\3\0>\1\2\0027\1\4\0013\2\24\0003\3\5\0002\4\0\0:\4\6\0033\4\b\0003\5\a\0:\5\t\4:\4\n\0032\4\0\0:\4\v\0033\4\19\0003\5\17\0003\6\f\0004\a\r\0007\a\14\a%\b\15\0\16\t\0\0>\a\3\2:\a\16\6:\6\18\5:\5\t\4:\4\20\0033\4\22\0003\5\21\0:\5\t\4:\4\23\3:\3\25\2>\1\2\0014\1\26\0007\1\27\0011\2\28\0'\3è\3>\1\3\1G\0\1\0\0\rdefer_fn\bvim\tload\1\0\0\18core.gtd.base\1\0\0\1\0\1\14workspace\bgtd\21core.norg.dirman\1\0\0\15workspaces\1\0\0\14doom_docs\v%s/doc\vformat\vstring\1\0\2\bgtd\16~/neorg/gtd\22default_workspace\f~/neorg\24core.norg.concealer\18core.keybinds\vconfig\1\0\0\1\0\2\17neorg_leader\a,o\21default_keybinds\2\18core.defaults\1\0\0\nsetup\nneorg\14doom_root\21doom.core.system\frequire\0" },
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = true,
    path = "/home/arc/.local/share/nvim/site/pack/packer/opt/neorg",
    url = "https://github.com/nvim-neorg/neorg"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\1\2Ú\1\0\0\5\0\a\0\0164\0\0\0%\1\1\0>\0\2\0027\0\2\0004\1\0\0%\2\3\0>\1\2\0027\1\4\0013\2\6\0\16\3\0\0%\4\5\0>\3\2\2\15\0\3\0T\4\0€>\1\2\1G\0\1\0\1\0\4\21enable_moveright\2\rcheck_ts\2\30enable_check_bracket_line\2\22enable_afterquote\2\15treesitter\nsetup\19nvim-autopairs\23is_plugin_disabled\15doom.utils\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/arc/.local/share/nvim/site/pack/packer/opt/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    after = { "cmp-nvim-lsp", "cmp-nvim-lua", "cmp-buffer", "cmp_luasnip", "cmp-path" },
    config = { "\27LJ\1\2\21\0\1\2\1\0\0\3+\1\0\0006\1\0\1H\1\2\0\2ÀF\0\1\6\0\3\0\b4\1\0\0007\1\1\0017\1\2\1\16\2\0\0)\3\2\0)\4\2\0)\5\2\0@\1\5\0\27nvim_replace_termcodes\bapi\bvim—\1\0\0\5\0\b\2\0274\0\0\0007\0\1\0007\0\2\0%\1\3\0>\0\2\2\21\0\0\0\b\0\1\0T\1\17€4\1\0\0007\1\1\0017\1\4\1%\2\3\0>\1\2\2\16\2\1\0007\1\5\1\16\3\0\0\16\4\0\0>\1\4\2\16\2\1\0007\1\6\1%\3\a\0>\1\3\2T\2\3€)\1\1\0T\2\1€)\1\2\0H\1\2\0\a%s\nmatch\bsub\fgetline\6.\bcol\afn\bvim\2\0ù\1\0\2\6\1\n\0\0234\2\1\0007\2\2\2%\3\3\0+\4\0\0007\5\0\1>\4\2\0027\5\0\1>\2\4\2:\2\0\0013\2\5\0007\3\6\0007\3\a\0036\2\3\2:\2\4\0013\2\t\0007\3\6\0007\3\a\0036\2\3\2\14\0\2\0T\3\1€'\2\0\0:\2\b\1H\1\2\0\3À\1\0\3\tpath\3\1\rnvim_lsp\3\0\vbuffer\3\1\bdup\tname\vsource\1\0\5\tpath\v[Path]\rnvim_lua\n[Lua]\rnvim_lsp\n[LSP]\vbuffer\n[Buf]\fluasnip\n[Snp]\tmenu\n%s %s\vformat\vstring\tkind\2\0\1\4\4\n\0'+\1\0\0007\1\0\1>\1\1\2\15\0\1\0T\2\4€+\1\0\0007\1\1\1>\1\1\1T\1\29€+\1\1\0007\1\2\1>\1\1\2\15\0\1\0T\2\t€4\1\3\0007\1\4\0017\1\5\1+\2\2\0%\3\6\0>\2\2\2%\3\a\0>\1\3\1T\1\15€+\1\3\0>\1\1\2\15\0\1\0T\2\t€4\1\3\0007\1\4\0017\1\5\1+\2\2\0%\3\b\0>\2\2\2%\3\t\0>\1\3\1T\1\2€\16\1\0\0>\1\1\1G\0\1\0\0À\1À\4À\5À\6n\n<Tab>\5!<Plug>luasnip-expand-or-jump\rfeedkeys\afn\bvim\23expand_or_jumpable\21select_next_item\fvisibleÄ\1\0\1\4\3\b\0\27+\1\0\0007\1\0\1>\1\1\2\15\0\1\0T\2\4€+\1\0\0007\1\1\1>\1\1\1T\1\17€+\1\1\0007\1\2\1'\2ÿÿ>\1\2\2\15\0\1\0T\2\t€4\1\3\0007\1\4\0017\1\5\1+\2\2\0%\3\6\0>\2\2\2%\3\a\0>\1\3\1T\1\2€\16\1\0\0>\1\1\1G\0\1\0\0À\1À\4À\5\28<Plug>luasnip-jump-prev\rfeedkeys\afn\bvim\rjumpable\21select_prev_item\fvisibleC\0\1\3\0\4\0\a4\1\0\0%\2\1\0>\1\2\0027\1\2\0017\2\3\0>\1\2\1G\0\1\0\tbody\15lsp_expand\fluasnip\frequireœ\t\1\0\f\0006\0W4\0\0\0%\1\1\0>\0\2\0024\1\0\0%\2\2\0>\1\2\0023\2\3\0001\3\4\0001\4\5\0001\5\6\0007\6\a\0003\a\t\0003\b\b\0:\b\n\a3\b\f\0003\t\v\0:\t\r\b:\b\14\a3\b\16\0001\t\15\0:\t\17\b:\b\18\a3\b\21\0007\t\19\0007\t\20\t>\t\1\2:\t\22\b7\t\19\0007\t\23\t>\t\1\2:\t\24\b7\t\19\0007\t\25\t'\nüÿ>\t\2\2:\t\26\b7\t\19\0007\t\25\t'\n\4\0>\t\2\2:\t\27\b7\t\19\0007\t\28\t>\t\1\2:\t\29\b7\t\19\0007\t\30\t>\t\1\2:\t\31\b7\t\19\0007\t \t3\n#\0007\v!\0007\v\"\v:\v$\n>\t\2\2:\t%\b7\t\19\0001\n&\0003\v'\0>\t\3\2:\t(\b7\t\19\0001\n)\0003\v*\0>\t\3\2:\t+\b:\b\19\a3\b-\0001\t,\0:\t.\b:\b/\a2\b\6\0003\t0\0;\t\1\b3\t1\0;\t\2\b3\t2\0;\t\3\b3\t3\0;\t\4\b3\t4\0;\t\5\b:\b5\a>\6\2\0010\0\0€G\0\1\0\fsources\1\0\1\tname\vbuffer\1\0\1\tname\tpath\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\1\0\1\tname\rnvim_lua\fsnippet\vexpand\1\0\0\0\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-f>\n<C-d>\16scroll_docs\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\15formatting\vformat\1\0\0\0\18documentation\vborder\1\0\0\1\t\0\0\bâ•­\bâ”€\bâ•®\bâ”‚\bâ•¯\bâ”€\bâ•°\bâ”‚\15completion\1\0\0\1\0\1\16completeopt\"menu,menuone,preview,noinsert\nsetup\0\0\0\1\0\25\tText\v ï’ž  \rFunction\n ïž” \rOperator\n ïš” \nColor\n ï£— \nClass\n ï – \vModule\n ï™¨ \rConstant\n ï²€ \rProperty\n ï°  \vMethod\n ïš¦ \15EnumMember\n ï… \tUnit\n ï‘µ \14Interface\n ï°® \vStruct\n ï³¤ \rVariable\n îœ– \fSnippet\n ï‘ \vFolder\n ïŠ \nEvent\n ïƒ§ \nField\n ï´² \18TypeParameter\n ïžƒ \tFile\n ïœ“ \nValue\n ï¢Ÿ \16Constructor\n ï£ \tEnum\t ï©—\fKeyword\n ï Š \14Reference\n ïœœ \fluasnip\bcmp\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/arc/.local/share/nvim/site/pack/packer/opt/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp",
    wants = { "LuaSnip" }
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\1\2o\0\0\3\0\b\0\v4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\4\0:\2\5\0013\2\6\0:\2\a\1>\0\2\1G\0\1\0\thtml\1\0\1\nnames\1\bcss\1\0\1\vrgb_fn\2\1\2\0\0\6*\nsetup\14colorizer\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/arc/.local/share/nvim/site/pack/packer/opt/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-dap"] = {
    after = { "DAPInstall.nvim", "nvim-dap-ui" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/arc/.local/share/nvim/site/pack/packer/opt/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    config = { "\27LJ\1\2\30\0\0\1\1\1\0\4+\0\0\0007\0\0\0>\0\1\1G\0\1\0\1À\topen\31\0\0\1\1\1\0\4+\0\0\0007\0\0\0>\0\1\1G\0\1\0\1À\nclose\31\0\0\1\1\1\0\4+\0\0\0007\0\0\0>\0\1\1G\0\1\0\1À\nclose\4\1\0\6\0\30\0*4\0\0\0%\1\1\0>\0\2\0024\1\0\0%\2\2\0>\1\2\0027\2\3\0007\2\4\0027\2\5\0021\3\a\0:\3\6\0027\2\3\0007\2\b\0027\2\t\0021\3\n\0:\3\6\0027\2\3\0007\2\b\0027\2\v\0021\3\f\0:\3\6\0027\2\r\0013\3\15\0003\4\14\0:\4\16\0033\4\18\0003\5\17\0:\5\19\4:\4\20\0033\4\22\0003\5\21\0:\5\23\4:\4\24\0033\4\26\0003\5\25\0:\5\23\4:\4\27\0033\4\28\0:\4\29\3>\2\2\0010\0\0€G\0\1\0\rfloating\1\0\0\ttray\1\0\2\tsize\3\n\rposition\vbottom\1\2\0\0\trepl\fsidebar\relements\1\0\2\tsize\3(\rposition\tleft\1\5\0\0\vscopes\16breakpoints\vstacks\fwatches\rmappings\vexpand\1\0\4\topen\6o\trepl\6r\tedit\6e\vremove\6d\1\3\0\0\t<CR>\18<2-LeftMouse>\nicons\1\0\0\1\0\2\14collapsed\bâ–¸\rexpanded\bâ–¾\nsetup\0\17event_exited\0\21event_terminated\vbefore\0\17dapui_config\22event_initialized\nafter\14listeners\ndapui\bdap\frequire\0" },
    load_after = {
      ["nvim-dap"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/arc/.local/share/nvim/site/pack/packer/opt/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-lsp-installer"] = {
    config = { "\27LJ\1\2’\2\0\1\3\0\b\0\0194\1\0\0%\2\1\0>\1\2\0027\1\2\1\16\2\0\0>\1\2\0014\1\3\0007\1\4\1%\2\5\0>\1\2\0014\1\3\0007\1\4\1%\2\6\0>\1\2\0014\1\3\0007\1\4\1%\2\a\0>\1\2\1G\0\1\0007hi! LspReferenceRead cterm=underline gui=underline8hi! LspReferenceWrite cterm=underline gui=underline7hi! LspReferenceText cterm=underline gui=underline\bcmd\bvim\14on_attach\15illuminate\frequire)\0\0\3\2\1\0\6+\0\0\0\16\1\0\0007\0\0\0+\2\1\0>\0\3\1G\0\1\0\rÀ\14À\nsetupU\0\0\4\3\4\0\n+\0\0\0\16\1\0\0007\0\0\0003\2\1\0+\3\1\0:\3\2\2+\3\2\0:\3\3\2>\0\3\1G\0\1\0\rÀ\5\0\6\0\14on_attach\17capabilities\1\0\0\nsetupò\r\1\0\22\a6\0§\0024\0\0\0%\1\1\0>\0\2\0024\1\0\0%\2\2\0>\1\2\0027\1\3\0017\2\4\0012\3\0\0004\4\5\0\16\5\2\0>\4\2\4T\aS€\16\n\b\0007\t\6\b%\v\a\0%\f\b\0>\t\4\2\16\n\t\0007\t\6\t%\v\t\0%\f\b\0>\t\4\2\16\n\t\0007\t\6\t%\v\n\0%\f\b\0>\t\4\2\16\v\b\0007\n\v\b%\f\f\0>\n\3\2\n\n\0\0T\v\a€4\v\r\0007\v\14\v\16\f\n\0%\r\15\0>\v\3\2\14\0\v\0T\f\t€+\v\0\0006\v\t\v\n\v\0\0T\v\4€+\v\0\0006\v\t\v\14\0\v\0T\f\1€)\v\0\0\16\r\b\0007\f\16\b%\14\17\0>\f\3\2\15\0\f\0T\r(€\n\v\0\0T\r\23€4\r\5\0\16\14\v\0>\r\2\4T\16\16€4\18\r\0007\18\18\18\16\19\17\0>\18\2\2+\19\1\0007\19\19\19\16\20\3\0\16\21\18\0>\19\3\2\v\19\1\0T\19\5€4\19\20\0007\19\21\19\16\20\3\0\16\21\18\0>\19\3\1A\16\3\3N\16îT\r\15€\16\14\b\0007\r\16\b%\15\22\0>\r\3\2\15\0\r\0T\14\2€/\2\2\0T\r\a€+\r\3\0007\r\23\r%\14\24\0\16\15\b\0%\16\25\0$\14\16\14>\r\2\1A\a\3\3N\a«2\4\0\0004\5\26\0+\6\0\0>\5\2\4D\b\18€4\n\5\0\16\v\t\0>\n\2\4T\r\f€+\15\1\0007\15\19\15\16\16\4\0\16\17\14\0>\15\3\2\14\0\15\0T\15\5€4\15\20\0007\15\21\15\16\16\4\0\16\17\14\0>\15\3\1A\r\3\3N\ròB\b\3\3N\bì2\5\0\0002\6\0\0004\a\5\0\16\b\4\0>\a\2\4T\nF€7\f\27\0\16\r\v\0>\f\2\3\15\0\f\0T\14@€+\14\1\0007\14\19\14\16\15\3\0\16\16\v\0>\14\3\2\14\0\14\0T\14\21€\16\15\r\0007\14\28\r>\14\2\2\15\0\14\0T\0154€4\14\20\0007\14\21\14\16\15\6\0\16\16\v\0>\14\3\1\16\15\r\0007\14\29\r>\14\2\1+\14\3\0007\14\30\14%\15\31\0\16\16\v\0%\17 \0$\15\17\15>\14\2\1T\14$€7\14!\r\a\14\"\0T\14\3€+\14\4\0\14\0\14\0T\15\5€3\14#\0+\15\5\0:\15$\14+\15\6\0:\15%\14\16\16\r\0007\15&\r1\17'\0>\15\3\1\16\16\r\0007\15\28\r>\15\2\2\14\0\15\0T\15\15€4\15\20\0007\15\21\15\16\16\5\0\16\17\v\0>\15\3\1\16\16\r\0007\15(\r>\15\2\1+\15\3\0007\15\30\15%\16)\0\16\17\v\0%\18 \0$\16\18\16>\15\2\0010\14\0€0\f\0€A\n\3\3N\n¸4\a\5\0\16\b\3\0>\a\2\4T\n%€+\f\1\0007\f\19\f\16\r\4\0\16\14\v\0>\f\3\2\14\0\f\0T\f\30€7\f\27\0\16\r\v\0>\f\2\3\15\0\f\0T\14\24€\16\15\r\0007\14&\r1\16*\0>\14\3\1\16\15\r\0007\14\28\r>\14\2\2\14\0\14\0T\14\15€4\14\20\0007\14\21\14\16\15\5\0\16\16\v\0>\14\3\1\16\15\r\0007\14(\r>\14\2\1+\14\3\0007\14\30\14%\15)\0\16\16\v\0%\17 \0$\15\17\15>\14\2\0010\f\0€A\n\3\3N\nÙ+\a\2\0\15\0\a\0T\b\v€4\a\0\0%\b+\0>\a\2\0027\a,\a7\a-\a3\b.\0+\t\5\0:\t$\b+\t\6\0:\t%\b>\a\2\0014\a/\0\16\b\5\0>\a\2\2\v\a\0\0T\a\5€4\a/\0\16\b\6\0>\a\2\2\n\a\0\0T\a\26€%\a0\0\19\b\5\0'\t\0\0\1\t\b\0T\t\5€\16\t\a\0%\n1\0\16\v\b\0%\f2\0$\a\f\t\19\t\6\0'\n\0\0\1\n\t\0T\n\5€\16\n\a\0%\v3\0\16\f\b\0%\r2\0$\a\r\n\16\n\a\0%\v4\0$\a\v\n4\n\r\0007\n5\n\16\v\a\0>\n\2\1G\0\1\0\3À\1À\4€\0À\aÀ\5À\6€\vnotify+Use :LspInstallInfo to check status.  \18Uninstalling \r LSPs.  \16Installing \vDoom: \tnext\1\0\0\nsetup\vmetals\14lspconfig\0+doom-lsp-installer: Installing server \finstall\0\ron_ready\14on_attach\17capabilities\1\0\0\16sumneko_lua\tname\6.-doom-lsp-installer: Uninstalling server \tinfo\14uninstall\17is_installed\15get_server\npairs;\" does not have an LSP, please remove the \"+lsp\" flag.\19The language \"\nerror\nscala\vinsert\ntable\14has_value\ttrim\t+lsp\tfind\6,\nsplit\bvim\17+lsp%((.+)%)\nmatch\15%s+%+debug\r%s+%+lsp\5\22%s+%+lsp(%(%a+%))\tgsub\vipairs\nlangs\fmodules\29doom.core.config.modules\23nvim-lsp-installer\frequire\21\0\0\1\1\0\0\3+\0\0\0>\0\1\1G\0\1\0\bÀÏ\17\1\0\14\0ˆ\1\0½\0014\0\0\0%\1\1\0>\0\2\0024\1\0\0%\2\2\0>\1\2\0024\2\0\0%\3\2\0>\2\2\0027\2\3\0023\3\5\0003\4\4\0:\4\6\0033\4\a\0:\4\b\0033\4\t\0:\4\n\0033\4\v\0:\4\f\0033\4\r\0:\4\14\0033\4\15\0:\4\16\0033\4\17\0:\4\18\0033\4\19\0:\4\20\0033\4\21\0:\4\22\0033\4\23\0:\4\24\0033\4\25\0:\4\26\0033\4\27\0:\4\28\0033\4\29\0:\4\30\0033\4\31\0:\4 \0033\4!\0:\4\"\0033\4#\0:\4$\0033\4%\0:\4&\0033\4'\0:\4(\0033\4)\0:\4*\0033\4+\0:\4,\0033\4-\0:\4.\0033\4/\0:\0040\0033\0041\0:\0042\0033\0043\0:\0044\0033\0045\0:\0046\0033\0047\0:\0048\0033\0049\0:\4:\0033\4;\0:\4<\0033\4=\0:\4>\0033\4?\0:\4@\0033\4A\0:\4B\0033\4C\0:\4D\0033\4E\0:\4F\0033\4G\0:\4H\0033\4I\0:\4J\0033\4K\0:\4L\0033\4M\0:\4N\0033\4O\0:\4P\0033\4Q\0:\4R\0033\4S\0:\4T\3)\4\1\0004\5L\0007\5U\0057\5V\0057\5W\5>\5\1\0027\6X\0057\6Y\0067\6Z\6)\a\2\0:\a[\0067\6X\0057\6Y\0067\6Z\6)\a\2\0:\a\\\0067\6X\0057\6Y\0067\6Z\6)\a\2\0:\a]\0067\6X\0057\6Y\0067\6Z\6)\a\2\0:\a^\0067\6X\0057\6Y\0067\6Z\6)\a\2\0:\a_\0067\6X\0057\6Y\0067\6Z\0063\ab\0003\ba\0:\bc\a:\a`\0067\6X\0057\6Y\0067\6Z\6)\a\2\0:\ad\0067\6X\0057\6Y\0067\6Z\0063\ag\0003\bf\0:\bh\a:\ae\0067\6X\0053\aj\0003\bm\0003\tl\0003\nk\0:\nc\t:\tn\b:\bo\a:\ai\6)\6\0\0\16\a\2\0%\bp\0>\a\2\2\14\0\a\0T\a\5€4\aq\0007\ar\a\15\0\a\0T\b\1€1\6s\0004\a\0\0%\bt\0>\a\2\0027\au\a3\bƒ\0003\t\0003\n}\0003\vw\0003\fv\0:\fx\v3\fz\0003\ry\0:\r{\f:\f|\v:\v~\n:\n€\t:\5\t:\6‚\t:\t„\b>\a\2\0021\b…\0004\tL\0007\t†\t1\n‡\0'\v2\0>\t\3\0010\0\0€G\0\1\0\0\rdefer_fn\0\14lspconfig\1\0\0\14on_attach\17capabilities\rsettings\1\0\0\bLua\1\0\0\16diagnostics\fglobals\1\0\0\1\2\0\0\19packer_plugins\14workspace\1\0\0\1\0\1\20preloadFileSize\3È\1\nsetup\flua-dev\0\19vim-illuminate\19packer_plugins\16illuminated\29codeActionLiteralSupport\19codeActionKind\1\0\0\1\0\0\1\t\0\0\5\rquickfix\rrefactor\21refactor.extract\20refactor.inline\21refactor.rewrite\vsource\27source.organizeImports\1\0\1\24dynamicRegistration\1\15codeAction\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\19snippetSupport\rvalueSet\1\0\0\1\2\0\0\3\1\15tagSupport\28commitCharactersSupport\22deprecatedSupport\24labelDetailsSupport\25insertReplaceSupport\21preselectSupport\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol\blsp\vconfig\1\3\0\0\vjsonls\vyamlls\tyaml\1\2\0\0\vyamlls\bxml\1\2\0\0\flemminx\bvue\1\2\0\0\nvuels\bvim\1\2\0\0\nvimls\15typescript\1\2\0\0\rtsserver\vsvelte\1\2\0\0\vsvelte\trust\1\2\0\0\18rust_analyzer\truby\1\2\0\0\15solargraph\vpython\1\2\0\0\fpyright\15powershell\1\2\0\0\18powershell_es\bphp\1\2\0\0\rphpactor\nocaml\1\2\0\0\rocamells\nlatex\1\2\0\0\vtexlab\vkotlin\1\2\0\0\27kotlin_language_server\15javascript\1\2\0\0\rtsserver\tjava\1\2\0\0\njdtls\njson5\1\2\0\0\vjsonls\tjson\1\2\0\0\vjsonls\vhaskel\1\2\0\0\bhls\thtml\1\2\0\0\thtml\vgroovy\1\2\0\0\rgroovyls\fgraphql\1\2\0\0\fgraphql\ago\1\2\0\0\ngopls\ffortran\1\2\0\0\vfortls\nember\1\2\0\0\nember\belm\1\2\0\0\nelmls\velixer\1\2\0\0\relixerls\bdot\1\2\0\0\ndotls\15dockerfile\1\2\0\0\rdockerls\fclojure\1\2\0\0\16clojure_lsp\bcss\1\2\0\0\ncssls\ncmake\1\2\0\0\ncmake\bcpp\1\2\0\0\vclangd\6c\1\2\0\0\vclangd\fc_sharp\1\2\0\0\14omnisharp\tbash\1\2\0\0\vbashls\fangular\1\2\0\0\14angularls\fansible\1\2\0\0\14ansiblels\blua\1\0\0\1\2\0\0\16sumneko_lua\23is_plugin_disabled\15doom.utils\24doom.extras.logging\frequire\0" },
    loaded = true,
    path = "/home/arc/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    after = { "lsp_signature.nvim" },
    loaded = true,
    only_config = true
  },
  ["nvim-mapper"] = {
    config = { "\27LJ\1\2Ý\1\0\0\b\0\v\0\0224\0\0\0%\1\1\0>\0\2\0027\0\2\0004\1\0\0%\2\1\0>\1\2\0027\1\3\0014\2\0\0%\3\4\0>\2\2\0027\2\5\0023\3\6\0004\4\a\0007\4\b\4%\5\t\0\16\6\0\0\16\a\1\0>\4\4\2:\4\n\3>\2\2\1G\0\1\0\16search_path\f%s%slua\vformat\vstring\1\0\2\vno_map\2\20action_on_enter\fexecute\nsetup\16nvim-mapper\bsep\14doom_root\21doom.core.system\frequire\0" },
    loaded = true,
    path = "/home/arc/.local/share/nvim/site/pack/packer/start/nvim-mapper",
    url = "https://github.com/lazytanuki/nvim-mapper"
  },
  ["nvim-tree-docs"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/arc/.local/share/nvim/site/pack/packer/opt/nvim-tree-docs",
    url = "https://github.com/nvim-treesitter/nvim-tree-docs"
  },
  ["nvim-tree.lua"] = {
    commands = { "NvimTreeClipboard", "NvimTreeClose", "NvimTreeFindFile", "NvimTreeOpen", "NvimTreeRefresh", "NvimTreeToggle" },
    config = { "\27LJ\1\2Î\22\0\0\n\0{\0£\0024\0\0\0%\1\1\0>\0\2\0027\0\2\0004\1\0\0%\2\3\0>\1\2\0027\1\4\0014\2\5\0007\2\6\0023\3\b\0:\3\a\0024\2\5\0007\2\6\2'\3\1\0:\3\t\0024\2\5\0007\2\6\0027\3\v\0007\3\f\3:\3\n\0024\2\5\0007\2\6\2'\3\1\0:\3\r\0024\2\5\0007\2\6\2'\3\1\0:\3\14\0024\2\5\0007\2\6\2%\3\16\0:\3\15\0024\2\5\0007\2\6\2'\3\1\0:\3\17\0024\2\5\0007\2\6\2'\3\1\0:\3\18\0024\2\5\0007\2\6\2'\3ô\1:\3\19\0024\2\5\0007\2\6\0023\3\22\0003\4\21\0:\4\23\0033\4\24\0:\4\25\3:\3\20\0024\2\5\0007\2\6\0023\3\27\0:\3\26\0024\2\5\0007\2\6\0023\3\29\0:\3\28\0024\2\5\0007\2\6\0023\3\31\0003\4 \0:\4!\0033\4\"\0:\4#\0033\4%\0007\5\v\0007\5$\5:\5&\0047\5\v\0007\5'\5:\5(\0047\5\v\0007\5)\5:\5*\0047\5\v\0007\5+\5:\5,\4:\4-\3:\3\30\0024\2\0\0%\3.\0>\2\2\0027\2/\0023\0030\0002\4\0\0:\0041\0033\0044\0004\5\0\0%\0062\0>\5\2\0027\0053\5%\6-\0>\5\2\2\15\0\5\0T\6\0€3\0055\0007\6\v\0007\6$\6:\6&\0057\6\v\0007\6'\6:\6(\0057\6\v\0007\6)\6:\6*\0057\6\v\0007\6+\6:\6,\5:\0056\4:\0047\0033\0048\0002\5\0\0:\0059\4:\4:\0033\4;\0002\5\0\0:\5<\4:\4=\0033\4?\0007\5\v\0007\5>\5:\5@\0047\5\v\0007\5A\5\15\0\5\0T\6\2€%\5B\0T\6\1€%\5C\0:\5D\0043\5E\0002\6\24\0003\aG\0003\bF\0:\bH\a\16\b\1\0%\tI\0>\b\2\2:\bJ\a;\a\1\0063\aL\0003\bK\0:\bH\a\16\b\1\0%\tM\0>\b\2\2:\bJ\a;\a\2\0063\aN\0\16\b\1\0%\tO\0>\b\2\2:\bJ\a;\a\3\0063\aP\0\16\b\1\0%\tQ\0>\b\2\2:\bJ\a;\a\4\0063\aR\0\16\b\1\0%\tS\0>\b\2\2:\bJ\a;\a\5\0063\aT\0\16\b\1\0%\tU\0>\b\2\2:\bJ\a;\a\6\0063\aV\0\16\b\1\0%\tU\0>\b\2\2:\bJ\a;\a\a\0063\aW\0\16\b\1\0%\tX\0>\b\2\2:\bJ\a;\a\b\0063\aY\0\16\b\1\0%\tZ\0>\b\2\2:\bJ\a;\a\t\0063\a[\0\16\b\1\0%\t\\\0>\b\2\2:\bJ\a;\a\n\0063\a]\0\16\b\1\0%\t^\0>\b\2\2:\bJ\a;\a\v\0063\a_\0\16\b\1\0%\t`\0>\b\2\2:\bJ\a;\a\f\0063\aa\0\16\b\1\0%\tb\0>\b\2\2:\bJ\a;\a\r\0063\ac\0\16\b\1\0%\td\0>\b\2\2:\bJ\a;\a\14\0063\ae\0\16\b\1\0%\tf\0>\b\2\2:\bJ\a;\a\15\0063\ag\0\16\b\1\0%\th\0>\b\2\2:\bJ\a;\a\16\0063\ai\0\16\b\1\0%\tj\0>\b\2\2:\bJ\a;\a\17\0063\ak\0\16\b\1\0%\tl\0>\b\2\2:\bJ\a;\a\18\0063\am\0\16\b\1\0%\tn\0>\b\2\2:\bJ\a;\a\19\0063\ao\0\16\b\1\0%\tp\0>\b\2\2:\bJ\a;\a\20\0063\aq\0\16\b\1\0%\tr\0>\b\2\2:\bJ\a;\a\21\0063\as\0\16\b\1\0%\tt\0>\b\2\2:\bJ\a;\a\22\0063\au\0\16\b\1\0%\tv\0>\b\2\2:\bJ\a;\a\23\6:\6w\5:\5x\4:\4y\3>\2\2\0014\2\5\0007\2z\0024\3\0\0%\4.\0>\3\2\0027\3^\3'\4\25\0>\2\3\1G\0\1\0\rdefer_fn\tview\rmappings\tlist\16toggle_help\1\0\1\bkey\ag?\nclose\1\0\1\bkey\6q\vdir_up\1\0\1\bkey\6-\18next_git_item\1\0\1\bkey\a]c\18prev_git_item\1\0\1\bkey\a[c\npaste\1\0\1\bkey\6p\tcopy\1\0\1\bkey\6c\bcut\1\0\1\bkey\6x\16full_rename\1\0\1\bkey\n<C-r>\vrename\1\0\1\bkey\6r\vremove\1\0\1\bkey\6d\vcreate\1\0\1\bkey\6a\frefresh\1\0\1\bkey\6R\20toggle_dotfiles\1\0\1\bkey\6H\19toggle_ignored\1\0\1\bkey\6I\fpreview\1\0\1\bkey\n<Tab>\1\0\1\bkey\v<S-CR>\15close_node\1\0\1\bkey\t<BS>\vtabnew\1\0\1\bkey\n<C-t>\nsplit\1\0\1\bkey\n<C-x>\vvsplit\1\0\1\bkey\n<C-v>\acd\1\0\0\1\4\0\0\t<CR>\19<2-RightMouse>\n<C-]>\acb\tedit\bkey\1\0\0\1\3\0\0\6o\18<2-LeftMouse>\1\0\1\16custom_only\1\tside\tleft\nright\19explorer_right\nwidth\1\0\1\16auto_resize\2\18sidebar_width\16system_open\targs\1\0\0\24update_focused_file\16ignore_list\1\0\2\15update_cwd\2\venable\2\16diagnostics\nicons\1\0\0\1\0\1\venable\2\23is_plugin_disabled\15doom.utils\23ignore_ft_on_setup\1\0\a\15update_cwd\2\16open_on_tab\2\15auto_close\1\18open_on_setup\1\18disable_netrw\1\18hijack_cursor\2\17hijack_netrw\2\nsetup\14nvim-tree\blsp\nerror\14lsp_error\fwarning\rlsp_warn\tinfo\rlsp_info\thint\1\0\0\rlsp_hint\vfolder\1\0\b\topen\bî—¾\15empty_open\bï„•\fdefault\bî—¿\15arrow_open\bï‘¼\nempty\bï„”\fsymlink\bï’‚\17arrow_closed\bï‘ \17symlink_open\bî—¾\bgit\1\0\a\runstaged\bï‘—\fdeleted\bï‘˜\14untracked\bï„¨\fignored\bâ—Œ\runmerged\bîœ§\frenamed\bï‘š\vstaged\bï‘™\1\0\2\fdefault\bî˜’\fsymlink\bï’\20nvim_tree_icons\1\0\4\ffolders\3\1\nfiles\3\1\bgit\3\1\18folder_arrows\3\0\25nvim_tree_show_icons\1\0\3\rMAKEFILE\3\1\rMakefile\3\1\14README.md\3\1\28nvim_tree_special_files\fbuftype\1\2\0\0\rterminal\rfiletype\1\0\0\1\4\0\0\vnotify\vpacker\aqf$nvim_tree_window_picker_exclude\27nvim_tree_refresh_wait\26nvim_tree_group_empty\27nvim_tree_add_trailing\a:~#nvim_tree_root_folder_modifier\24nvim_tree_gitignore\21nvim_tree_git_hl\16show_hidden\tdoom\28nvim_tree_hide_dotfiles\29nvim_tree_indent_markers\1\5\0\0\t.git\17node_modules\v.cache\16__pycache__\21nvim_tree_ignore\6g\bvim\23nvim_tree_callback\21nvim-tree.config\vconfig\21doom.core.config\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/arc/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    after = { "nvim-tree-docs", "neorg", "nvim-ts-context-commentstring", "nvim-ts-autotag" },
    config = { "\27LJ\1\2Ö\2\0\1\v\1\14\0:2\1\0\0004\2\0\0\16\3\0\0>\2\2\4T\5'€\a\6\1\0T\a\16€4\a\2\0007\a\3\a\16\b\1\0%\t\4\0>\a\3\0014\a\2\0007\a\3\a\16\b\1\0%\t\5\0>\a\3\0014\a\2\0007\a\3\a\16\b\1\0%\t\6\0>\a\3\1T\a\21€\16\b\6\0007\a\a\6%\t\b\0%\n\t\0>\a\4\2\16\b\a\0007\a\a\a%\t\n\0%\n\t\0>\a\4\2\16\b\a\0007\a\a\a%\t\v\0%\n\t\0>\a\4\2\16\6\a\0004\a\2\0007\a\3\a\16\b\1\0\16\t\6\0>\a\3\1A\5\3\3N\5×+\2\0\0\16\3\1\0%\4\f\0>\2\3\2\15\0\2\0T\3\5€4\2\2\0007\2\3\2\16\3\1\0%\4\r\0>\2\3\1H\1\2\0\0À\btsx\15typescript\15%s+%+debug\r%s+%+lsp\5\22%s+%+lsp(%(%a+%))\tgsub\ttoml\tyaml\tjson\vinsert\ntable\vconfig\vipairsê\3\0\0\a\0\17\0%4\0\0\0%\1\1\0>\0\2\0024\1\0\0%\2\2\0>\1\2\0027\2\3\0013\3\b\0004\4\4\0007\4\5\0047\4\6\4%\5\a\0>\4\2\2;\4\1\3>\2\2\0024\3\4\0007\3\5\0037\3\t\3\16\4\2\0\a\2\n\0T\5\2€%\5\v\0T\6\1€%\5\f\0$\4\5\4>\3\2\0028\3\1\3\16\5\3\0007\4\r\3%\6\14\0>\4\3\2\15\0\4\0T\5\3€7\4\15\0%\5\16\0>\4\2\1G\0\1\0¾\1doom-treesitter:  clang has poor compatibility compiling treesitter parsers.  We recommend using gcc, see issue #246 for details.  (https://github.com/NTBBloodbath/doom-nvim/issues/246)\twarn\nclang\nmatch\15 --version\5\acl\15systemlist\1\a\0\0\0\acc\bgcc\nclang\acl\bzig\aCC\vgetenv\afn\bvim\28find_executable_in_path\15doom.utils\24doom.extras.logging\frequireÈ\a\1\0\n\0-\0V4\0\0\0%\1\1\0>\0\2\0027\0\2\0004\1\0\0%\2\3\0>\1\2\0027\1\4\0014\2\0\0%\3\1\0>\2\2\0027\2\5\0021\3\6\0004\4\0\0%\5\a\0>\4\2\0027\4\b\4>\4\1\0023\5\r\0003\6\n\0003\a\v\0:\a\f\6:\6\14\5:\5\t\0044\5\15\0\15\0\5\0T\6\t€4\5\15\0007\5\16\5\15\0\5\0T\6\5€4\5\17\0007\5\18\0057\6\19\1%\a\t\0>\5\3\0014\5\15\0\15\0\5\0T\6\t€4\5\15\0007\5\20\5\15\0\5\0T\6\5€4\5\17\0007\5\18\0057\6\19\1%\a\21\0>\5\3\0014\5\0\0%\6\22\0>\5\2\0027\5\23\0053\6\24\0\16\a\3\0007\b\19\1>\a\2\2:\a\25\0063\a\26\0:\a\27\0063\a\29\0\16\b\2\0%\t\28\0>\b\2\2\15\0\b\0T\t\0€:\a\28\0063\a\30\0:\a\31\0063\a \0:\a!\0063\a\"\0:\a#\0063\a$\0:\a%\0063\a&\0003\b'\0:\b(\a:\a)\6>\5\2\0014\5*\0007\5+\0051\6,\0'\aè\3>\5\3\0010\0\0€G\0\1\0\0\rdefer_fn\bvim\fautotag\14filetypes\1\t\0\0\thtml\15javascript\20javascriptreact\15typescript\20typescriptreact\vsvelte\bvue\rmarkdown\1\0\1\venable\2\26context_commentstring\1\0\1\venable\2\14tree_docs\1\0\1\venable\2\15playground\1\0\1\venable\2\vindent\1\0\1\venable\2\1\0\1\venable\2\14autopairs\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\nsetup\28nvim-treesitter.configs\thttp\14rest.nvim\nlangs\vinsert\ntable\nneorg\19packer_plugins\17install_info\1\0\0\nfiles\1\3\0\0\17src/parser.c\19src/scanner.cc\1\0\2\vbranch\tmain\burl3https://github.com/nvim-neorg/tree-sitter-norg\tnorg\23get_parser_configs\28nvim-treesitter.parsers\0\23is_plugin_disabled\fmodules\29doom.core.config.modules\14has_value\15doom.utils\frequire\0" },
    loaded = false,
    needs_bufread = true,
    path = "/home/arc/.local/share/nvim/site/pack/packer/opt/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/arc/.local/share/nvim/site/pack/packer/opt/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-ts-context-commentstring"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/arc/.local/share/nvim/site/pack/packer/opt/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-web-devicons"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/arc/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/arc/.local/share/nvim/site/pack/packer/opt/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["persistence.nvim"] = {
    config = { "\27LJ\1\2ƒ\1\0\0\4\0\n\0\0154\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\b\0004\2\3\0007\2\4\0027\2\5\2%\3\6\0>\2\2\2%\3\a\0$\2\3\2:\2\t\1>\0\2\1G\0\1\0\bdir\1\0\0\15/sessions/\tdata\fstdpath\afn\bvim\nsetup\16persistence\frequire\0" },
    loaded = true,
    path = "/home/arc/.local/share/nvim/site/pack/packer/start/persistence.nvim",
    url = "https://github.com/folke/persistence.nvim"
  },
  ["plenary.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/arc/.local/share/nvim/site/pack/packer/opt/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/arc/.local/share/nvim/site/pack/packer/opt/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["range-highlight.nvim"] = {
    config = { "\27LJ\1\2=\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\20range-highlight\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/arc/.local/share/nvim/site/pack/packer/opt/range-highlight.nvim",
    url = "https://github.com/winston0410/range-highlight.nvim"
  },
  ["telescope.nvim"] = {
    commands = { "Telescope" },
    config = { "\27LJ\1\2†\v\0\0\t\0008\0\\4\0\0\0%\1\1\0>\0\2\0024\1\0\0%\2\2\0>\1\2\0027\2\3\0003\0034\0003\4\5\0003\5\4\0:\5\6\0043\5\a\0003\6\b\0:\6\t\0053\6\n\0:\6\v\5:\5\f\0044\5\0\0%\6\r\0>\5\2\0027\5\14\5:\5\15\0043\5\16\0:\5\17\0044\5\0\0%\6\r\0>\5\2\0027\5\18\5:\5\19\0042\5\0\0:\5\20\0043\5\21\0:\5\22\0043\5\23\0:\5\24\0044\5\0\0%\6\25\0>\5\2\0027\5\26\0057\5\27\5:\5\28\0044\5\0\0%\6\25\0>\5\2\0027\5\29\0057\5\27\5:\5\30\0044\5\0\0%\6\25\0>\5\2\0027\5\31\0057\5\27\5:\5 \0044\5\0\0%\6\25\0>\5\2\0027\5!\5:\5!\0043\5/\0003\6#\0007\a\"\1:\a$\0067\a%\1:\a&\0067\a'\0017\b(\1\30\a\b\a:\a)\0067\a*\1:\a+\0067\a,\0017\b-\1\30\a\b\a:\a.\6:\0060\0053\0061\0007\a\"\1:\a$\0067\a%\1:\a&\0067\a'\0017\b(\1\30\a\b\a:\a)\6:\0062\5:\0053\4:\0045\3>\2\2\0017\0026\0%\0037\0>\2\2\1G\0\1\0\vmapper\19load_extension\rdefaults\1\0\0\rmappings\6n\1\0\0\6i\1\0\0\t<CR>\vcenter\19select_default\14<Leader>f\nclose\n<C-q>\16open_qflist\25smart_send_to_qflist\n<C-k>\28move_selection_previous\n<C-j>\1\0\0\24move_selection_next\27buffer_previewer_maker\21qflist_previewer\22vim_buffer_qflist\19grep_previewer\23vim_buffer_vimgrep\19file_previewer\bnew\19vim_buffer_cat\25telescope.previewers\fset_env\1\0\1\14COLORTERM\14truecolor\16borderchars\1\t\0\0\bâ”€\bâ”‚\bâ”€\bâ”‚\bâ•­\bâ•®\bâ•¯\bâ•°\vborder\19generic_sorter\29get_generic_fuzzy_sorter\25file_ignore_patterns\1\4\0\0\f^%.git/\19^node_modules/\18^__pycache__/\16file_sorter\19get_fuzzy_file\22telescope.sorters\18layout_config\15horizontal\1\0\2\vmirror\1\18preview_width\4³æÌ™\3³æŒÿ\3\rvertical\1\0\1\vmirror\1\1\0\3\20prompt_position\vbottom\19preview_cutoff\3x\nwidth\4\0€€ ÿ\3\17find_command\1\0\n\17initial_mode\vinsert\20layout_strategy\15horizontal\23selection_strategy\nreset\ruse_less\2\21sorting_strategy\15descending\18prompt_prefix\v ï€‚  \20scroll_strategy\ncycle\rwinblend\3\0\19color_devicons\2\20selection_caret\6 \1\a\0\0\arg\17--no-heading\20--with-filename\18--line-number\r--column\17--smart-case\nsetup\22telescope.actions\14telescope\frequire\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/arc/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    commands = { "ToggleTerm", "TermExec" },
    config = { "\27LJ\1\2Ç\3\0\0\5\0\19\0\0294\0\0\0%\1\1\0>\0\2\0027\0\2\0004\1\0\0%\2\3\0>\1\2\0027\1\4\0013\2\a\0007\3\5\0007\3\6\3:\3\b\0022\3\0\0:\3\t\0027\3\5\0007\3\n\3:\3\v\0023\3\f\0007\4\5\0007\4\r\4:\4\14\0037\4\5\0007\4\6\4:\4\15\0033\4\16\0:\4\17\3:\3\18\2>\1\2\1G\0\1\0\15float_opts\15highlights\1\0\2\15background\vNormal\vborder\fSpecial\vheight\nwidth\19terminal_width\1\0\2\rwinblend\3\0\vborder\vcurved\14direction\23terminal_direction\20shade_filetypes\tsize\1\0\6\20shade_terminals\2\17open_mapping\t<F4>\17persist_size\2\18close_on_exit\2\20start_in_insert\2\17hide_numbers\2\20terminal_height\tdoom\nsetup\15toggleterm\vconfig\21doom.core.config\frequire\0" },
    keys = { { "", "n" }, { "", "<F4>" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/arc/.local/share/nvim/site/pack/packer/opt/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["vim-illuminate"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/arc/.local/share/nvim/site/pack/packer/opt/vim-illuminate",
    url = "https://github.com/RRethy/vim-illuminate"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\1\2‹#\0\0\a\0Ç\1\0¨\0024\0\0\0%\1\1\0>\0\2\0024\1\0\0%\2\2\0>\1\2\0027\2\3\1)\3\0\0:\3\4\0027\2\5\0003\3\t\0003\4\6\0003\5\a\0:\5\b\4:\4\n\0033\4\v\0:\4\3\0033\4\f\0:\4\r\0033\4\14\0:\4\15\0033\4\17\0003\5\16\0:\5\18\4:\4\19\0033\4\21\0003\5\20\0:\5\22\4:\4\23\0033\4\24\0:\4\25\3>\2\2\0013\2\27\0003\3\26\0:\3\28\0023\3\29\0:\3\30\0023\3\31\0:\3 \0023\3!\0:\3\"\0023\3#\0:\3$\0023\3%\0:\3&\0023\3'\0:\3(\0023\3)\0:\3*\0023\3+\0003\4,\0:\4-\0033\4.\0:\4/\0033\0040\0:\0041\0033\0042\0:\0043\0033\0044\0:\0045\0033\0046\0:\0047\0033\0048\0:\0049\0033\4:\0:\4;\3:\0031\0023\3<\0003\4=\0:\4>\0033\4?\0:\4@\0033\4A\0:\0041\0033\4B\0:\4-\0033\4C\0:\4&\0033\4D\0003\5E\0:\0051\0043\5F\0:\5-\0043\5G\0:\5H\0043\5I\0:\5J\0043\5K\0:\5L\4:\4M\0033\4N\0003\5O\0:\5P\0043\5Q\0:\5>\0043\5R\0:\5M\0043\5S\0:\5T\0043\5U\0:\5V\0043\5W\0:\5@\4:\4T\3:\3-\0023\3X\0003\4Y\0:\0041\0033\4Z\0:\4-\0033\4[\0:\4M\0033\4\\\0:\4>\0033\4]\0:\4^\0033\4_\0:\4@\0033\4`\0:\4a\0033\4b\0:\4L\0033\4c\0:\4T\3:\3M\0023\3d\0003\4e\0:\4-\0033\4f\0:\0045\0033\4g\0:\4/\0033\4h\0:\4H\0033\4i\0:\4@\0033\4j\0:\4k\0033\4l\0:\4a\3:\3/\0023\3m\0003\4n\0:\4o\0033\4p\0:\4T\0033\4q\0:\4;\0033\4r\0:\4s\0033\4t\0:\4L\0033\4u\0:\4^\0033\4v\0:\4a\0033\4w\0:\4@\0033\4x\0:\4&\0033\4y\0:\0041\0033\4z\0:\4{\0033\4|\0:\4-\3:\0037\0023\3}\0003\4~\0:\4-\0033\4\0:\4€\0033\4\0:\4>\0033\4‚\0:\4;\0033\4ƒ\0:\4L\0033\4„\0:\4s\3:\3;\0023\3…\0003\4†\0:\4V\0033\4‡\0:\4k\0033\4ˆ\0:\4@\3:\3V\0023\3‰\0003\4Š\0:\0047\0033\4‹\0:\0041\0033\4Œ\0:\4L\0033\4\0:\4&\0033\4Ž\0:\4(\3:\3L\0023\3\0003\4\0:\0041\0033\4‘\0:\4-\0033\4’\0:\0047\0033\4“\0:\4>\0033\4”\0:\0045\0033\4•\0:\4L\0033\4–\0:\4—\3:\3H\0023\3˜\0003\4™\0:\4k\0033\4š\0:\4M\0033\4›\0:\4œ\0033\4\0:\4ž\0033\4Ÿ\0:\4 \0033\4¡\0:\4&\0033\4¢\0:\4£\0033\4¤\0:\4T\0033\4¥\0:\4¦\0033\4§\0:\4¨\0033\4©\0:\4ª\0033\4«\0:\4¬\0033\4­\0:\4®\0033\4¯\0:\4°\0033\4±\0:\4L\0033\4²\0:\4*\3:\3k\0023\3³\0003\4´\0:\0041\0033\4µ\0:\4M\0033\4¶\0:\4J\0033\4·\0:\4@\0033\4¸\0:\4(\0033\4¹\0:\4L\0033\4º\0:\4H\3:\3o\0023\3»\0003\4¼\0:\4P\0033\4½\0:\4£\0033\4¾\0:\4¦\0033\4¿\0:\4;\0033\4À\0:\4H\3:\3£\0024\3\0\0%\4Á\0>\3\2\0027\3Â\3\16\4\3\0%\5Ã\0>\4\2\2\14\0\4\0T\4\3€7\4H\0023\5Ä\0:\5;\0047\4Å\0\16\5\2\0003\6Æ\0>\4\3\1G\0\1\0\1\0\1\vprefix\r<leader>\rregister\1\2\0\0\14autopairs\14autopairs\23is_plugin_disabled\15doom.utils\1\2\0\0\16jump to tag\1\2\0\0\18pop tag stack\1\2\0\0\17jump forward\1\2\0\0\14jump back\1\2\0\0\19Alternate file\1\0\1\tname\v+jumps\1\2\0\0\rTerminal\1\2\0\0\fSymbols\1\2\0\0\fMinimap\1\2\0\0\24Ranger File Browser\1\2\0\0\18Tree Explorer\1\2\0\0\17Start screen\1\2\0\0\18Debugging UI \1\0\1\tname\n+open\1\2\0\0\23Split window right\1\2\0\0\23Split window below\6=\1\2\0\0\19Balance window\6K\1\2\0\0\21Expand window up\6L\1\2\0\0\24Expand window right\6J\1\2\0\0\24Expand window below\6H\1\2\0\0\23Expand window left\6k\1\2\0\0\14Window up\1\2\0\0\17Window right\6j\1\2\0\0\17Window below\1\2\0\0\16Window left\0062\1\2\0\0\26Layout double columns\6|\1\2\0\0\23Split window right\6-\1\2\0\0\23Split window below\1\2\0\0\18Delete window\1\2\0\0\17Other window\1\0\1\tname\r+windows\6x\1\2\0\0\22syntax/treesetter\1\2\0\0\nspell\1\2\0\0\vnumber\1\2\0\0\vindent\1\2\0\0\15signcolumn\1\2\0\0\15completion\1\2\0\0\15background\1\0\1\tname\v+tweak\1\2\0\0\17Jump to mark\1\2\0\0\20Command history\1\2\0\0\16Goto symbol\1\2\0\0\vBuffer\1\2\0\0\tGrep\1\0\1\tname\f+search\1\2\0\0%Restore previously saved session\1\2\0\0\18Save and quit\1\2\0\0\tQuit\1\0\1\tname\19+quit/sessions\1\2\0\0\19Plugins status\1\2\0\0\22Sync your plugins\1\2\0\0000Profile the time taken loading your plugins\1\2\0\0\28Install missing plugins\6C\1\2\0\0!Compile your plugins changes\1\2\0\0%Clean disabled or unused plugins\1\0\1\tname\r+plugins\1\2\0\0\fCommits\6B\1\2\0\0\rBranches\1\2\0\0\15Blame line\1\2\0\0\17Preview hunk\1\2\0\0\15Reset hunk\1\2\0\0\17Reset buffer\1\2\0\0\20Undo stage hunk\1\2\0\0\vStatus\6S\1\2\0\0\15Stage hunk\1\2\0\0\tPush\1\2\0\0\tPull\6o\1\2\0\0\17Open LazyGit\1\0\1\tname\t+git\1\2\0\0'Re-open file with sudo permissions\6w\1\2\0\0%Write file with sudo permissions\1\2\0\0\26Recently opened files\1\2\0\0\14Help tags\1\2\0\0\15Find files\1\2\0\0 Create a new unnamed buffer\1\2\0\0\30Edit Neovim configuration\1\0\1\tname\n+file\1\2\0\0 Reload user custom settings\1\2\0\0\23Change colorscheme\6R\1\2\0\0\24Create crash report\1\2\0\0\31Rollback Doom Nvim version\6u\1\2\0\0\21Update Doom Nvim\1\2\0\0)Open Doom Nvim information dashboard\1\2\0\0!Open Doom Nvim documentation\1\2\0\0&Edit your Doom Nvim configuration\1\2\0\0\26Show Doom keybindings\1\0\1\tname\n+doom\1\2\0\0\31Rename symbol under cursor\6q\1\2\0\0#Diagnostics into location list\6l\1\2\0\0\26Show line diagnostics\1\2\0\0\25Show type definition\1\2\0\0\rLsp info\6a\1\2\0\0\17Code actions\1\0\1\tname\t+lsp\6d\6s\1\2\0\0\23Evaluate selection\6e\1\2\0\0\31Evaluate word under cursor\6t\1\2\0\0\28Terminate debug session\1\2\0\0(Start (or continue) a debug session\1\2\0\0&Toggle breakpoint on current line\1\0\1\tname\v+debug\1\2\0\0?Run restclient on the line that the cursor is currently on\1\2\0\0\28Compile and run project\1\2\0\0\20Compile project\6r\1\2\0\0\21Run current file\6i\1\2\0\0\17Start a REPL\1\0\1\tname\n+code\6p\1\2\0\0\20Previous buffer\6[\1\2\0\0\20Previous buffer\6g\1\2\0\0\16Goto buffer\6n\1\2\0\0\16Next buffer\6]\1\2\0\0\16Next buffer\6b\1\2\0\0\27Switch to other buffer\6f\1\2\0\0\18Format buffer\6c\1\2\0\0\25Close current buffer\1\0\1\tname\r+buffers\6v\1\2\0\0\tSave\6m\1\2\0\0\tSave\6h\1\2\0\0\fManpage\6:\1\2\0\0\20Command history\6/\1\2\0\0\18Search a word\6,\1\2\0\0\18Switch buffer\6.\1\2\0\0\17Browse files\6`\1\0\0\1\2\0\0\14Find file\vhidden\1\t\0\0\r<silent>\n<Cmd>\n<cmd>\v<Plug>\tcall\blua\a^:\a^ \vlayout\vheight\1\0\2\nalign\tleft\fspacing\3\3\1\0\2\bmax\3\n\bmin\3\1\vwindow\fpadding\1\0\1\vborder\vsingle\1\5\0\0\3\0\3\0\3\0\3\0\15key_labels\1\0\3\t<cr>\bRET\f<space>\bSPC\n<tab>\bTAB\nicons\1\0\3\ngroup\6+\14separator\bâžœ\15breadcrumb\aÂ»\1\0\n\azf\16Create fold\6!#Filter though external program\ag~\16Toggle case\6d\vDelete\agU\14Uppercase\6>\17Indent right\6c\vChange\6y\16Yank (copy)\agu\14Lowercase\t<lt>\16Indent left\fplugins\1\0\3\19ignore_missing\2\14show_help\2\rtriggers\tauto\fpresets\1\0\a\6g\2\6z\2\fwindows\2\fmotions\2\bnav\2\17text_objects\2\14operators\1\1\0\2\14registers\1\nmarks\1\nsetup\agc\14operators\30which-key.plugins.presets\14which-key\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/arc/.local/share/nvim/site/pack/packer/opt/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^cmd%-parser"] = "cmd-parser.nvim",
  ["^lua%-dev"] = "lua-dev.nvim",
  ["^nvim%-web%-devicons"] = "nvim-web-devicons",
  ["^plenary"] = "plenary.nvim",
  ["^popup"] = "popup.nvim",
  ["^telescope"] = "telescope.nvim",
  ["^toggleterm"] = "toggleterm.nvim",
  ["^toggleterm%.terminal"] = "toggleterm.nvim",
  aniseed = "aniseed"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Setup for: vim-illuminate
time([[Setup for vim-illuminate]], true)
try_loadstring("\27LJ\1\2|\0\0\2\0\4\0\0054\0\0\0007\0\1\0003\1\3\0:\1\2\0G\0\1\0\1\t\0\0\thelp\14dashboard\vpacker\tnorg\rDoomInfo\rNvimTree\fOutline\15toggleterm\27Illuminate_ftblacklist\6g\bvim\0", "setup", "vim-illuminate")
time([[Setup for vim-illuminate]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\1\2Ã\1\0\3\a\0\t\0\30\16\4\0\0007\3\0\0%\5\1\0>\3\3\2\15\0\3\0T\4\1€G\0\1\0004\3\2\0007\3\3\0037\3\4\0037\3\5\3\5\1\3\0T\3\6€4\3\2\0007\3\6\0037\3\a\3\16\4\0\0>\3\2\1T\3\n€4\3\2\0007\3\6\0037\3\b\0032\4\3\0002\5\3\0;\0\1\5;\5\1\4)\5\2\0002\6\0\0>\3\4\1G\0\1\0\14nvim_echo\21nvim_err_writeln\bapi\nERROR\vlevels\blog\bvim\14exit code\nmatchÌ\n\1\0\14\0003\1o4\0\0\0007\0\1\0004\1\0\0007\1\2\0014\2\3\0%\3\4\0>\2\2\0027\2\5\2*\3\4\0004\5\0\0007\5\1\0057\5\6\5%\6\a\0>\5\2\2\t\5\0\0T\5\16€3\5\n\0007\6\b\0027\6\t\6:\6\v\0057\6\b\0027\6\f\6:\6\r\0057\6\b\0027\6\14\6:\6\15\0057\6\b\0027\6\16\6:\6\17\5\16\3\5\0%\4\18\0T\5\15€3\5\19\0007\6\b\0027\6\t\6:\6\v\0057\6\b\0027\6\f\6:\6\20\0057\6\b\0027\6\14\6:\6\21\0057\6\b\0027\6\16\6:\6\17\5\16\3\5\0%\4\22\0004\5\23\0\16\6\3\0>\5\2\4D\b\n€\16\n\4\0\16\v\b\0$\n\v\n7\v\24\0\16\f\n\0003\r\25\0:\t\26\r:\n\27\r:\n\28\r>\v\3\1B\b\3\3N\bô7\5\29\0017\6\31\0017\a \0017\a!\a3\b&\0007\t\b\0027\t\"\t\15\0\t\0T\n\6€3\t$\0007\n\b\0027\n#\n:\n%\t\14\0\t\0T\n\1€)\t\1\0:\t'\b>\6\3\2:\6\30\0057\5\29\0014\6\0\0007\6\2\0067\6\31\0064\a\0\0007\a\2\a7\a\29\a7\a)\a3\b*\0>\6\3\2:\6(\0057\5\29\0014\6\0\0007\6\2\0067\6\31\0064\a\0\0007\a\2\a7\a\29\a7\a,\a3\b-\0>\6\3\2:\6+\0057\5.\0013\0060\0:\6/\0054\5\0\0001\0062\0:\0061\5G\0\1\0\0\vnotify\1\26\0\0\18 ï’ž  (Text) \19 ïš¦  (Method)\21 ïž”  (Function)\24 ï£  (Constructor)\18 ï´²  (Field)\21 îœ–  (Variable)\18 ï –  (Class)\22 ï°®  (Interface)\19 ï™¨  (Module)\21 ï°   (Property)\17 ï‘µ  (Unit)\18 ï¢Ÿ  (Value)\16 ï©— (Enum)\20 ï Š  (Keyword)\20 ï‘  (Snippet)\18 ï£—  (Color)\17 ïœ“  (File)\22 ïœœ  (Reference)\19 ïŠ  (Folder)\23 ï…  (EnumMember)\21 ï²€  (Constant)\19 ï³¤  (Struct)\18 ïƒ§  (Event)\21 ïš”  (Operator)\26 ïžƒ  (TypeParameter)\23CompletionItemKind\rprotocol\1\0\1\vborder\vsingle\19signature_help\31textDocument/signatureHelp\1\0\1\vborder\vsingle\nhover\23textDocument/hover\17virtual_text\1\0\0\vprefix\1\0\0\21lsp_virtual_text\28enable_lsp_virtual_text\27on_publish_diagnostics\15diagnostic\twith$textDocument/publishDiagnostics\rhandlers\nnumhl\vtexthl\ttext\1\0\0\16sign_define\npairs\23LspDiagnosticsSign\16Information\fWarning\1\0\0\19DiagnosticSign\tHint\rlsp_hint\tInfo\rlsp_info\tWarn\rlsp_warn\nError\1\0\0\14lsp_error\tdoom\15nvim-0.6.0\bhas\vconfig\21doom.core.config\frequire\blsp\afn\bvim\2\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: nvim-mapper
time([[Config for nvim-mapper]], true)
try_loadstring("\27LJ\1\2Ý\1\0\0\b\0\v\0\0224\0\0\0%\1\1\0>\0\2\0027\0\2\0004\1\0\0%\2\1\0>\1\2\0027\1\3\0014\2\0\0%\3\4\0>\2\2\0027\2\5\0023\3\6\0004\4\a\0007\4\b\4%\5\t\0\16\6\0\0\16\a\1\0>\4\4\2:\4\n\3>\2\2\1G\0\1\0\16search_path\f%s%slua\vformat\vstring\1\0\2\vno_map\2\20action_on_enter\fexecute\nsetup\16nvim-mapper\bsep\14doom_root\21doom.core.system\frequire\0", "config", "nvim-mapper")
time([[Config for nvim-mapper]], false)
-- Config for: galaxyline.nvim
time([[Config for galaxyline.nvim]], true)
try_loadstring("\27LJ\1\2K\0\0\2\1\2\0\t+\0\0\0007\0\0\0>\0\1\2\6\0\1\0T\1\2€)\1\1\0T\2\1€)\1\2\0H\1\2\0\5À\14DASHBOARD\24get_buffer_filetypeK\0\0\2\1\2\0\t+\0\0\0007\0\0\0>\0\1\2\a\0\1\0T\1\2€)\1\1\0T\2\1€)\1\2\0H\1\2\0\5À\14DASHBOARD\24get_buffer_filetype\20\0\0\1\0\1\0\2%\0\0\0H\0\2\0\tâ–Š ›\4\0\0\4\1#\0_3\0\1\0+\1\0\0%\2\0\0>\1\2\2:\1\2\0+\1\0\0%\2\3\0>\1\2\2:\1\4\0+\1\0\0%\2\5\0>\1\2\2:\1\6\0+\1\0\0%\2\5\0>\1\2\2:\1\a\0+\1\0\0%\2\5\0>\1\2\2:\1\b\0+\1\0\0%\2\t\0>\1\2\2:\1\n\0+\1\0\0%\2\0\0>\1\2\2:\1\v\0+\1\0\0%\2\f\0>\1\2\2:\1\r\0+\1\0\0%\2\f\0>\1\2\2:\1\14\0+\1\0\0%\2\f\0>\1\2\2:\1\15\0+\1\0\0%\2\16\0>\1\2\2:\1\17\0+\1\0\0%\2\t\0>\1\2\2:\1\18\0+\1\0\0%\2\t\0>\1\2\2:\1\19\0+\1\0\0%\2\0\0>\1\2\2:\1\20\0+\1\0\0%\2\0\0>\1\2\2:\1\21\0+\1\0\0%\2\22\0>\1\2\2:\1\23\0+\1\0\0%\2\22\0>\1\2\2:\1\24\0+\1\0\0%\2\22\0>\1\2\2:\1\25\0+\1\0\0%\2\0\0>\1\2\2:\1\26\0+\1\0\0%\2\0\0>\1\2\2:\1\27\0004\1\28\0007\1\29\0017\1\30\1%\2\31\0004\3\28\0007\3 \0037\3!\3>\3\1\0026\3\3\0>\3\1\2$\2\3\2>\1\2\1%\1\"\0H\1\2\0\2À\nïŒŒ  \tmode\afn\27hi GalaxyViMode guifg=\17nvim_command\bapi\bvim\6t\6!\ar?\arm\6r\tcyan\ace\acv\aRv\6R\aic\vyellow\6\19\6S\6s\vorange\ano\6c\fmagenta\6V\6\22\6v\tblue\6i\ngreen\6n\1\0\0\breds\0\0\6\0\b\0\0164\0\0\0007\0\1\0007\0\2\0%\1\3\0>\0\2\0024\1\0\0007\1\1\0017\1\4\1%\2\3\0>\1\2\0024\2\5\0007\2\6\2%\3\a\0\16\4\0\0\16\5\1\0@\2\4\0\16%3d : %2d  \vformat\vstring\bcol\6.\tline\afn\bvimº\1\0\0\4\1\t\0\24+\0\0\0007\0\0\0>\0\1\2\6\0\1\0T\0\v€4\0\2\0007\0\3\0%\1\4\0004\2\5\0007\2\6\0027\2\a\2+\3\0\0007\3\0\3>\3\1\0?\0\2\0T\0\a€4\0\2\0007\0\3\0%\1\b\0004\2\5\0007\2\6\0027\2\a\2@\0\3\0G\0\1\0\4À\fï %s \rfiletype\abo\bvim\18î˜ %s Â» %s \vformat\vstring\18No Active Lsp\19get_lsp_clientS\0\0\2\0\4\0\v3\0\0\0004\1\1\0007\1\2\0017\1\3\0016\1\1\0\15\0\1\0T\2\2€)\1\1\0H\1\2\0)\1\2\0H\1\2\0\rfiletype\abo\bvim\1\0\2\5\2\14dashboard\2\20\0\0\1\0\1\0\2%\0\0\0H\0\2\0\tïž¡ \19\0\0\1\0\1\0\2%\0\0\0H\0\2\0\b   7\0\0\3\1\3\0\6%\0\0\0+\1\0\0007\1\1\1%\2\2\0$\0\2\0H\0\2\0\0À\6 \17doom_version\vDOOM v\20\0\0\1\0\1\0\2%\0\0\0H\0\2\0\t â–Š\20\0\0\1\0\1\0\2%\0\0\0H\0\2\0\tâ–Š \20\0\0\1\0\1\0\2%\0\0\0H\0\2\0\t â–ŠÂ\30\1\0\16\0‹\1\1Ë\0044\0\0\0%\1\1\0>\0\2\0024\1\0\0%\2\2\0>\1\2\0027\1\3\0014\2\0\0%\3\4\0>\2\2\0027\2\5\0024\3\0\0%\4\6\0>\3\2\0024\4\0\0%\5\a\0>\4\2\0024\5\0\0%\6\b\0>\5\2\0024\6\0\0%\a\t\0>\6\2\0027\a\n\0033\b\f\0:\b\v\0037\b\r\0017\b\14\b\14\0\b\0T\b\5€4\b\15\0007\b\16\b7\t\17\3%\n\18\0>\b\3\0011\b\19\0001\t\20\0007\n\21\a3\v\28\0003\f\23\0001\r\22\0:\r\24\f2\r\3\0\16\14\2\0%\15\25\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r\27\f:\f\29\v;\v\1\n7\n\21\a3\v\"\0003\f\31\0001\r\30\0:\r\24\f3\r!\0\16\14\2\0%\15 \0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\2;\14\2\r:\r\27\f:\f#\v;\v\2\n7\n\21\a3\v*\0003\f$\0007\r%\6\15\0\r\0T\14\1€7\r&\6:\r'\f2\r\3\0\16\14\2\0%\15(\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r\27\f2\r\3\0\16\14\2\0%\15\26\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r)\f:\f+\v;\v\3\n7\n\21\a3\v/\0003\f,\0007\r%\6\15\0\r\0T\14\1€\16\r\t\0:\r'\f2\r\3\0004\14\0\0%\15-\0>\14\2\0027\14.\14;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r\27\f:\f0\v;\v\4\n7\n\21\a3\v6\0003\f3\0007\r\r\0017\r1\r\15\0\r\0T\14\2€%\r2\0T\14\1€%\r4\0:\r\24\f7\r%\6\15\0\r\0T\14\1€\16\r\t\0:\r'\f3\r5\0\16\14\2\0%\15(\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\2;\14\2\r:\r\27\f2\r\3\0\16\14\2\0%\15\26\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r)\f:\f4\v;\v\5\n7\n\21\a3\v:\0003\f8\0001\r7\0:\r\24\f:\t'\f2\r\3\0\16\14\2\0%\0159\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r\27\f:\f;\v;\v\6\n7\n\21\a3\v=\0003\f<\0:\t'\f2\r\3\0\16\14\2\0%\0159\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r\27\f2\r\3\0\16\14\2\0%\15\26\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r)\f:\f>\v;\v\a\n7\n\21\a3\vC\0003\f?\0:\t'\f7\r\r\0017\r@\r%\14A\0$\r\14\r:\rB\f2\r\3\0\16\14\2\0%\15 \0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r\27\f:\fD\v;\v\b\n7\n\21\a3\vH\0003\fE\0:\t'\f7\r\r\0017\rF\r%\14A\0$\r\14\r:\rB\f2\r\3\0\16\14\2\0%\15G\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r\27\f:\fI\v;\v\t\n7\n\21\a3\vL\0003\fJ\0:\t'\f7\r\r\0017\rK\r%\14A\0$\r\14\r:\rB\f2\r\3\0\16\14\2\0%\15\25\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r\27\f:\fM\v;\v\n\n7\nN\a3\vP\0003\fO\0007\r&\6\15\0\r\0T\14\1€\16\r\t\0:\r'\f2\r\3\0\16\14\2\0%\15(\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r\27\f2\r\3\0\16\14\2\0%\15\26\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r)\f:\fQ\v;\v\1\n7\nN\a3\vS\0003\fR\0007\r&\6\15\0\r\0T\14\1€\16\r\t\0:\r'\f2\r\3\0\16\14\2\0%\15(\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r\27\f2\r\3\0\16\14\2\0%\15\26\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r)\f:\fT\v;\v\2\n7\nN\a3\vX\0003\fV\0001\rU\0:\r\24\f1\rW\0:\r'\f2\r\3\0\16\14\2\0%\15\25\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r\27\f2\r\3\0\16\14\2\0%\15\26\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r)\f:\fY\v;\v\3\n7\nN\a3\v]\0003\f[\0001\rZ\0:\r\24\f7\r\\\6:\r'\f2\r\3\0\16\14\2\0%\15 \0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r\27\f2\r\3\0\16\14\2\0%\15\26\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r)\f:\f^\v;\v\4\n7\nN\a3\vb\0003\f_\0007\r\\\6:\r'\f3\ra\0\16\14\2\0%\15`\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\2;\14\2\r:\r\27\f:\fc\v;\v\5\n7\nN\a3\vf\0003\fe\0001\rd\0:\r\24\f7\r&\6:\r'\f2\r\3\0\16\14\2\0%\15\26\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r\27\f:\fg\v;\v\6\n7\nN\a3\vi\0003\fh\0007\r&\6:\r'\f2\r\3\0\16\14\2\0%\15`\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r\27\f:\fj\v;\v\a\n7\nN\a3\vl\0003\fk\0007\r&\6:\r'\f2\r\3\0\16\14\2\0%\15G\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r\27\f:\fm\v;\v\b\n7\nN\a3\vo\0003\fn\0007\r&\6:\r'\f2\r\3\0\16\14\2\0%\15 \0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r\27\f:\fp\v;\v\t\n\15\0\b\0T\n\28€7\nN\a3\vt\0003\fr\0001\rq\0:\r\24\f:\b'\f3\rs\0\16\14\2\0%\15\25\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\2;\14\2\r:\r\27\f2\r\3\0\16\14\2\0%\15\26\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r)\f:\fu\v;\v\n\n7\nN\a3\vx\0003\fw\0001\rv\0:\r\24\f2\r\3\0\16\14\2\0%\15\25\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r\27\f:\fy\v;\v\v\n7\nz\a3\v}\0003\f|\0001\r{\0:\r\24\f2\r\3\0\16\14\2\0%\15\25\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r\27\f:\f~\v;\v\1\n7\nz\a3\v€\0003\f\0:\t'\f2\r\3\0\16\14\2\0%\15(\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r\27\f:\f\v;\v\2\n7\n‚\a3\v…\0003\fƒ\0:\t'\f2\r\3\0\16\14\2\0%\15„\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r\27\f:\f†\v;\v\1\n7\n‚\a3\v‰\0003\fˆ\0001\r‡\0:\r\24\f2\r\3\0\16\14\2\0%\15\25\0>\14\2\2;\14\1\r\16\14\2\0%\15\26\0>\14\2\0<\14\0\0:\r\27\f:\fŠ\v;\v\2\n0\0\0€G\0\1\0\22ShortRainbowRight\1\0\0\1\0\0\0\15BufferIcon\1\0\0\vyellow\1\0\1\rprovider\15BufferIcon\21short_line_right\15BufferType\1\0\0\1\0\1\rprovider\17FileTypeName\21ShortRainbowLeft\1\0\0\1\0\0\0\20short_line_left\17RainbowRight\1\0\0\1\0\0\0\16DoomVersion\1\0\0\1\4\0\0\0\0\tbold\1\0\1\14separator\a  \0\15DiffRemove\1\0\0\1\0\2\ticon\tï‘˜ \rprovider\15DiffRemove\17DiffModified\1\0\0\1\0\2\ticon\tï‘™ \rprovider\17DiffModified\fDiffAdd\1\0\0\1\0\2\ticon\tï‘— \rprovider\fDiffAdd\18DiffSeparator\1\0\0\1\0\0\0\14GitBranch\1\0\0\1\4\0\0\0\0\tbold\ngreen\1\0\1\rprovider\14GitBranch\fGitIcon\1\0\0\24check_git_workspace\1\0\1\14separator\6 \0\28ShowLspClientOrFileType\1\0\0\0\1\0\1\14separator\a  \0\15FileEncode\1\0\0\1\0\2\14separator\6 \rprovider\15FileEncode\15FileFormat\1\0\0\1\0\2\14separator\a  \rprovider\15FileFormat\nright\19DiagnosticInfo\1\0\0\rlsp_hint\1\0\1\rprovider\19DiagnosticInfo\19DiagnosticWarn\1\0\0\vorange\rlsp_warn\1\0\1\rprovider\19DiagnosticWarn\20DiagnosticError\1\0\0\ticon\6 \14lsp_error\1\0\1\rprovider\20DiagnosticError\16LinePercent\1\0\0\1\0\2\14separator\a  \rprovider\16LinePercent\rLineInfo\1\0\0\vfg_alt\1\0\0\0\1\0\0\1\4\0\0\0\0\tbold\rFileName\1\0\1\14separator\6 \rFilePath\30statusline_show_file_path\rFileIcon\1\0\0\24get_file_icon_color\"galaxyline.providers.fileinfo\1\0\1\rprovider\rFileIcon\rFileSize\1\0\0\24separator_highlight\afg\14condition\18hide_in_width\21buffer_not_empty\1\0\2\14separator\6 \rprovider\rFileSize\vViMode\1\0\0\1\4\0\0\0\0\tbold\bred\1\0\0\0\16RainbowLeft\1\0\0\14highlight\abg\tblue\rprovider\1\0\0\0\tleft\0\0\14dashboard\22exclude_filetypes\vinsert\ntable\23dashboard_statline\tdoom\1\a\0\0\rNvimTree\vpacker\fminimap\fOutline\15toggleterm\nnetrw\20short_line_list\fsection\25galaxyline.condition galaxyline.providers.buffer\29galaxyline.providers.lsp\15galaxyline\14get_color\29galaxyline.themes.colors\vconfig\21doom.core.config\15doom.utils\frequire\5€€À™\4\0", "config", "galaxyline.nvim")
time([[Config for galaxyline.nvim]], false)
-- Config for: nvim-lsp-installer
time([[Config for nvim-lsp-installer]], true)
try_loadstring("\27LJ\1\2’\2\0\1\3\0\b\0\0194\1\0\0%\2\1\0>\1\2\0027\1\2\1\16\2\0\0>\1\2\0014\1\3\0007\1\4\1%\2\5\0>\1\2\0014\1\3\0007\1\4\1%\2\6\0>\1\2\0014\1\3\0007\1\4\1%\2\a\0>\1\2\1G\0\1\0007hi! LspReferenceRead cterm=underline gui=underline8hi! LspReferenceWrite cterm=underline gui=underline7hi! LspReferenceText cterm=underline gui=underline\bcmd\bvim\14on_attach\15illuminate\frequire)\0\0\3\2\1\0\6+\0\0\0\16\1\0\0007\0\0\0+\2\1\0>\0\3\1G\0\1\0\rÀ\14À\nsetupU\0\0\4\3\4\0\n+\0\0\0\16\1\0\0007\0\0\0003\2\1\0+\3\1\0:\3\2\2+\3\2\0:\3\3\2>\0\3\1G\0\1\0\rÀ\5\0\6\0\14on_attach\17capabilities\1\0\0\nsetupò\r\1\0\22\a6\0§\0024\0\0\0%\1\1\0>\0\2\0024\1\0\0%\2\2\0>\1\2\0027\1\3\0017\2\4\0012\3\0\0004\4\5\0\16\5\2\0>\4\2\4T\aS€\16\n\b\0007\t\6\b%\v\a\0%\f\b\0>\t\4\2\16\n\t\0007\t\6\t%\v\t\0%\f\b\0>\t\4\2\16\n\t\0007\t\6\t%\v\n\0%\f\b\0>\t\4\2\16\v\b\0007\n\v\b%\f\f\0>\n\3\2\n\n\0\0T\v\a€4\v\r\0007\v\14\v\16\f\n\0%\r\15\0>\v\3\2\14\0\v\0T\f\t€+\v\0\0006\v\t\v\n\v\0\0T\v\4€+\v\0\0006\v\t\v\14\0\v\0T\f\1€)\v\0\0\16\r\b\0007\f\16\b%\14\17\0>\f\3\2\15\0\f\0T\r(€\n\v\0\0T\r\23€4\r\5\0\16\14\v\0>\r\2\4T\16\16€4\18\r\0007\18\18\18\16\19\17\0>\18\2\2+\19\1\0007\19\19\19\16\20\3\0\16\21\18\0>\19\3\2\v\19\1\0T\19\5€4\19\20\0007\19\21\19\16\20\3\0\16\21\18\0>\19\3\1A\16\3\3N\16îT\r\15€\16\14\b\0007\r\16\b%\15\22\0>\r\3\2\15\0\r\0T\14\2€/\2\2\0T\r\a€+\r\3\0007\r\23\r%\14\24\0\16\15\b\0%\16\25\0$\14\16\14>\r\2\1A\a\3\3N\a«2\4\0\0004\5\26\0+\6\0\0>\5\2\4D\b\18€4\n\5\0\16\v\t\0>\n\2\4T\r\f€+\15\1\0007\15\19\15\16\16\4\0\16\17\14\0>\15\3\2\14\0\15\0T\15\5€4\15\20\0007\15\21\15\16\16\4\0\16\17\14\0>\15\3\1A\r\3\3N\ròB\b\3\3N\bì2\5\0\0002\6\0\0004\a\5\0\16\b\4\0>\a\2\4T\nF€7\f\27\0\16\r\v\0>\f\2\3\15\0\f\0T\14@€+\14\1\0007\14\19\14\16\15\3\0\16\16\v\0>\14\3\2\14\0\14\0T\14\21€\16\15\r\0007\14\28\r>\14\2\2\15\0\14\0T\0154€4\14\20\0007\14\21\14\16\15\6\0\16\16\v\0>\14\3\1\16\15\r\0007\14\29\r>\14\2\1+\14\3\0007\14\30\14%\15\31\0\16\16\v\0%\17 \0$\15\17\15>\14\2\1T\14$€7\14!\r\a\14\"\0T\14\3€+\14\4\0\14\0\14\0T\15\5€3\14#\0+\15\5\0:\15$\14+\15\6\0:\15%\14\16\16\r\0007\15&\r1\17'\0>\15\3\1\16\16\r\0007\15\28\r>\15\2\2\14\0\15\0T\15\15€4\15\20\0007\15\21\15\16\16\5\0\16\17\v\0>\15\3\1\16\16\r\0007\15(\r>\15\2\1+\15\3\0007\15\30\15%\16)\0\16\17\v\0%\18 \0$\16\18\16>\15\2\0010\14\0€0\f\0€A\n\3\3N\n¸4\a\5\0\16\b\3\0>\a\2\4T\n%€+\f\1\0007\f\19\f\16\r\4\0\16\14\v\0>\f\3\2\14\0\f\0T\f\30€7\f\27\0\16\r\v\0>\f\2\3\15\0\f\0T\14\24€\16\15\r\0007\14&\r1\16*\0>\14\3\1\16\15\r\0007\14\28\r>\14\2\2\14\0\14\0T\14\15€4\14\20\0007\14\21\14\16\15\5\0\16\16\v\0>\14\3\1\16\15\r\0007\14(\r>\14\2\1+\14\3\0007\14\30\14%\15)\0\16\16\v\0%\17 \0$\15\17\15>\14\2\0010\f\0€A\n\3\3N\nÙ+\a\2\0\15\0\a\0T\b\v€4\a\0\0%\b+\0>\a\2\0027\a,\a7\a-\a3\b.\0+\t\5\0:\t$\b+\t\6\0:\t%\b>\a\2\0014\a/\0\16\b\5\0>\a\2\2\v\a\0\0T\a\5€4\a/\0\16\b\6\0>\a\2\2\n\a\0\0T\a\26€%\a0\0\19\b\5\0'\t\0\0\1\t\b\0T\t\5€\16\t\a\0%\n1\0\16\v\b\0%\f2\0$\a\f\t\19\t\6\0'\n\0\0\1\n\t\0T\n\5€\16\n\a\0%\v3\0\16\f\b\0%\r2\0$\a\r\n\16\n\a\0%\v4\0$\a\v\n4\n\r\0007\n5\n\16\v\a\0>\n\2\1G\0\1\0\3À\1À\4€\0À\aÀ\5À\6€\vnotify+Use :LspInstallInfo to check status.  \18Uninstalling \r LSPs.  \16Installing \vDoom: \tnext\1\0\0\nsetup\vmetals\14lspconfig\0+doom-lsp-installer: Installing server \finstall\0\ron_ready\14on_attach\17capabilities\1\0\0\16sumneko_lua\tname\6.-doom-lsp-installer: Uninstalling server \tinfo\14uninstall\17is_installed\15get_server\npairs;\" does not have an LSP, please remove the \"+lsp\" flag.\19The language \"\nerror\nscala\vinsert\ntable\14has_value\ttrim\t+lsp\tfind\6,\nsplit\bvim\17+lsp%((.+)%)\nmatch\15%s+%+debug\r%s+%+lsp\5\22%s+%+lsp(%(%a+%))\tgsub\vipairs\nlangs\fmodules\29doom.core.config.modules\23nvim-lsp-installer\frequire\21\0\0\1\1\0\0\3+\0\0\0>\0\1\1G\0\1\0\bÀÏ\17\1\0\14\0ˆ\1\0½\0014\0\0\0%\1\1\0>\0\2\0024\1\0\0%\2\2\0>\1\2\0024\2\0\0%\3\2\0>\2\2\0027\2\3\0023\3\5\0003\4\4\0:\4\6\0033\4\a\0:\4\b\0033\4\t\0:\4\n\0033\4\v\0:\4\f\0033\4\r\0:\4\14\0033\4\15\0:\4\16\0033\4\17\0:\4\18\0033\4\19\0:\4\20\0033\4\21\0:\4\22\0033\4\23\0:\4\24\0033\4\25\0:\4\26\0033\4\27\0:\4\28\0033\4\29\0:\4\30\0033\4\31\0:\4 \0033\4!\0:\4\"\0033\4#\0:\4$\0033\4%\0:\4&\0033\4'\0:\4(\0033\4)\0:\4*\0033\4+\0:\4,\0033\4-\0:\4.\0033\4/\0:\0040\0033\0041\0:\0042\0033\0043\0:\0044\0033\0045\0:\0046\0033\0047\0:\0048\0033\0049\0:\4:\0033\4;\0:\4<\0033\4=\0:\4>\0033\4?\0:\4@\0033\4A\0:\4B\0033\4C\0:\4D\0033\4E\0:\4F\0033\4G\0:\4H\0033\4I\0:\4J\0033\4K\0:\4L\0033\4M\0:\4N\0033\4O\0:\4P\0033\4Q\0:\4R\0033\4S\0:\4T\3)\4\1\0004\5L\0007\5U\0057\5V\0057\5W\5>\5\1\0027\6X\0057\6Y\0067\6Z\6)\a\2\0:\a[\0067\6X\0057\6Y\0067\6Z\6)\a\2\0:\a\\\0067\6X\0057\6Y\0067\6Z\6)\a\2\0:\a]\0067\6X\0057\6Y\0067\6Z\6)\a\2\0:\a^\0067\6X\0057\6Y\0067\6Z\6)\a\2\0:\a_\0067\6X\0057\6Y\0067\6Z\0063\ab\0003\ba\0:\bc\a:\a`\0067\6X\0057\6Y\0067\6Z\6)\a\2\0:\ad\0067\6X\0057\6Y\0067\6Z\0063\ag\0003\bf\0:\bh\a:\ae\0067\6X\0053\aj\0003\bm\0003\tl\0003\nk\0:\nc\t:\tn\b:\bo\a:\ai\6)\6\0\0\16\a\2\0%\bp\0>\a\2\2\14\0\a\0T\a\5€4\aq\0007\ar\a\15\0\a\0T\b\1€1\6s\0004\a\0\0%\bt\0>\a\2\0027\au\a3\bƒ\0003\t\0003\n}\0003\vw\0003\fv\0:\fx\v3\fz\0003\ry\0:\r{\f:\f|\v:\v~\n:\n€\t:\5\t:\6‚\t:\t„\b>\a\2\0021\b…\0004\tL\0007\t†\t1\n‡\0'\v2\0>\t\3\0010\0\0€G\0\1\0\0\rdefer_fn\0\14lspconfig\1\0\0\14on_attach\17capabilities\rsettings\1\0\0\bLua\1\0\0\16diagnostics\fglobals\1\0\0\1\2\0\0\19packer_plugins\14workspace\1\0\0\1\0\1\20preloadFileSize\3È\1\nsetup\flua-dev\0\19vim-illuminate\19packer_plugins\16illuminated\29codeActionLiteralSupport\19codeActionKind\1\0\0\1\0\0\1\t\0\0\5\rquickfix\rrefactor\21refactor.extract\20refactor.inline\21refactor.rewrite\vsource\27source.organizeImports\1\0\1\24dynamicRegistration\1\15codeAction\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\19snippetSupport\rvalueSet\1\0\0\1\2\0\0\3\1\15tagSupport\28commitCharactersSupport\22deprecatedSupport\24labelDetailsSupport\25insertReplaceSupport\21preselectSupport\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol\blsp\vconfig\1\3\0\0\vjsonls\vyamlls\tyaml\1\2\0\0\vyamlls\bxml\1\2\0\0\flemminx\bvue\1\2\0\0\nvuels\bvim\1\2\0\0\nvimls\15typescript\1\2\0\0\rtsserver\vsvelte\1\2\0\0\vsvelte\trust\1\2\0\0\18rust_analyzer\truby\1\2\0\0\15solargraph\vpython\1\2\0\0\fpyright\15powershell\1\2\0\0\18powershell_es\bphp\1\2\0\0\rphpactor\nocaml\1\2\0\0\rocamells\nlatex\1\2\0\0\vtexlab\vkotlin\1\2\0\0\27kotlin_language_server\15javascript\1\2\0\0\rtsserver\tjava\1\2\0\0\njdtls\njson5\1\2\0\0\vjsonls\tjson\1\2\0\0\vjsonls\vhaskel\1\2\0\0\bhls\thtml\1\2\0\0\thtml\vgroovy\1\2\0\0\rgroovyls\fgraphql\1\2\0\0\fgraphql\ago\1\2\0\0\ngopls\ffortran\1\2\0\0\vfortls\nember\1\2\0\0\nember\belm\1\2\0\0\nelmls\velixer\1\2\0\0\relixerls\bdot\1\2\0\0\ndotls\15dockerfile\1\2\0\0\rdockerls\fclojure\1\2\0\0\16clojure_lsp\bcss\1\2\0\0\ncssls\ncmake\1\2\0\0\ncmake\bcpp\1\2\0\0\vclangd\6c\1\2\0\0\vclangd\fc_sharp\1\2\0\0\14omnisharp\tbash\1\2\0\0\vbashls\fangular\1\2\0\0\14angularls\fansible\1\2\0\0\14ansiblels\blua\1\0\0\1\2\0\0\16sumneko_lua\23is_plugin_disabled\15doom.utils\24doom.extras.logging\frequire\0", "config", "nvim-lsp-installer")
time([[Config for nvim-lsp-installer]], false)
-- Config for: persistence.nvim
time([[Config for persistence.nvim]], true)
try_loadstring("\27LJ\1\2ƒ\1\0\0\4\0\n\0\0154\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\b\0004\2\3\0007\2\4\0027\2\5\2%\3\6\0>\2\2\2%\3\a\0$\2\3\2:\2\t\1>\0\2\1G\0\1\0\bdir\1\0\0\15/sessions/\tdata\fstdpath\afn\bvim\nsetup\16persistence\frequire\0", "config", "persistence.nvim")
time([[Config for persistence.nvim]], false)
-- Config for: dashboard-nvim
time([[Config for dashboard-nvim]], true)
try_loadstring("\27LJ\1\2¬\25\0\0\t\0009\0y4\0\0\0%\1\1\0>\0\2\0027\0\2\0004\1\3\0007\1\4\0014\2\0\0%\3\6\0>\2\2\0027\2\a\2%\3\b\0$\2\3\2:\2\5\0014\1\3\0007\1\4\1%\2\n\0:\2\t\0014\1\3\0007\1\4\0013\2\15\0003\3\r\0003\4\f\0:\4\14\3:\3\16\0023\3\18\0003\4\17\0:\4\14\3:\3\19\0023\3\21\0003\4\20\0:\4\14\3:\3\22\0023\3\24\0003\4\23\0:\4\14\3:\3\25\0023\3\27\0003\4\26\0:\4\14\3:\3\28\0023\3\30\0003\4\29\0:\4\14\3:\3\31\0023\3!\0003\4 \0:\4\14\3:\3\4\2:\2\v\0014\1\3\0007\1\4\0012\2\3\0%\3#\0004\4\3\0007\4$\0047\4%\4%\5&\0004\6\3\0007\6$\0067\6'\0064\a\3\0007\a$\a7\a(\a4\b\3\0007\b\4\b7\b)\b>\a\2\0=\6\0\0=\4\1\2%\5*\0$\3\5\3;\3\1\2:\2\"\0014\1\3\0007\1\4\0014\2\3\0007\2,\0027\3-\0007\3+\3>\2\2\2\15\0\2\0T\3\3€3\2.\0\14\0\2\0T\3\2€7\2-\0007\2+\2:\2+\0014\1\3\0007\1/\1%\0020\0007\3-\0007\0031\0037\0032\3$\2\3\2>\1\2\0014\1\3\0007\1/\1%\0023\0007\3-\0007\0031\0037\0034\3$\2\3\2>\1\2\0014\1\3\0007\1/\1%\0025\0007\3-\0007\0031\0037\0036\3$\2\3\2>\1\2\0014\1\3\0007\1/\1%\0027\0007\3-\0007\0031\0037\0038\3$\2\3\2>\1\2\1G\0\1\0\17footer_color!hi! dashboardFooter   guifg=\19shortcut_color!hi! dashboardShortcut guifg=\17center_color!hi! dashboardCenter   guifg=\17header_color\28dashboard_custom_colors!hi! dashboardHeader   guifg=\bcmd\1\21\0\0S                                                                              S=================     ===============     ===============   ========  ========S\\\\ . . . . . . .\\\\   //. . . . . . .\\\\   //. . . . . . .\\\\  \\\\. . .\\\\// . . //S||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\\/ . . .||S|| . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||S||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||S|| . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\\ . . . . ||S||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\\_ . .|. .||S|| . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\\ `-_/| . ||S||_-' ||  .|/    || ||    \\|.  || `-_|| ||_-' ||  .|/    || ||   | \\  / |-_.||S||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \\  / |  `||S||    `'         || ||         `'    || ||    `'         || ||   | \\  / |   ||S||            .===' `===.         .==='.`===.         .===' /==. |  \\/  |   ||S||         .=='   \\_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \\/  |   ||S||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \\/  |   ||S||   .=='    _-'          `-__\\._-'         `-_./__-'         `' |. /|  |   ||S||.=='    _-'                                                     `' |  /==.||S=='    _-'                        N E O V I M                         \\/   `==S\\   _-'                                                                `-_   /T `''                                                                      ``'  \tdoom\16tbl_isempty\28dashboard_custom_header\14 seconds.\15start_time\freltime\17reltimefloat\t%.3f\vprintf\afn\25Doom Nvim loaded in \28dashboard_custom_footer\1\0\1\fcommand3lua require(\"doom.core.functions\").open_docs()\1\2\0\0000ï€­  Open Documentation             SPC d d\6f\1\0\1\fcommand5lua require(\"doom.core.functions\").edit_config()\1\2\0\0000ï‘¢  Open Private Configuration     SPC d c\6e\1\0\1\fcommand\24Telescope live_grep\1\2\0\0000ï‡‚  Find Word                      SPC s g\6d\1\0\1\fcommand\25Telescope find_files\1\2\0\0000ïœ¡  Find File                      SPC f f\6c\1\0\1\fcommand\20Telescope marks\1\2\0\0000ï€®  Jump to Bookmark               SPC s m\6b\1\0\1\fcommand\23Telescope oldfiles\1\2\0\0000ï…œ  Recently Opened Files          SPC f r\6a\1\0\0\16description\1\0\1\fcommand5lua require('persistence').load({ last = true })\1\2\0\0000ï€ž  Load Last Session              SPC s r\29dashboard_custom_section\14telescope dashboard_default_executive\14/sessions\14doom_root\21doom.core.system dashboard_session_directory\6g\bvim\vconfig\21doom.core.config\frequire\0", "config", "dashboard-nvim")
time([[Config for dashboard-nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeFindFile lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeFindFile", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeRefresh lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeRefresh", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeToggle lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeOpen lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeOpen", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeClose lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeClose", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TermExec lua require("packer.load")({'toggleterm.nvim'}, { cmd = "TermExec", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file ToggleTerm lua require("packer.load")({'toggleterm.nvim'}, { cmd = "ToggleTerm", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file FormatWrite lua require("packer.load")({'format.nvim'}, { cmd = "FormatWrite", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Format lua require("packer.load")({'format.nvim'}, { cmd = "Format", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Telescope lua require("packer.load")({'telescope.nvim'}, { cmd = "Telescope", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeClipboard lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeClipboard", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[noremap <silent> <F4> <cmd>lua require("packer.load")({'toggleterm.nvim'}, { keys = "<lt>F4>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> n <cmd>lua require("packer.load")({'toggleterm.nvim'}, { keys = "n", prefix = "" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au ColorScheme * ++once lua require("packer.load")({'nvim-colorizer.lua'}, { event = "ColorScheme *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead * ++once lua require("packer.load")({'range-highlight.nvim', 'vim-illuminate', 'gitsigns.nvim'}, { event = "BufRead *" }, _G.packer_plugins)]]
vim.cmd [[au BufWinEnter * ++once lua require("packer.load")({'nvim-dap', 'bufferline.nvim', 'kommentary'}, { event = "BufWinEnter *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'lsp_signature.nvim', 'nvim-cmp'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufReadPre * ++once lua require("packer.load")({'LuaSnip', 'nvim-autopairs'}, { event = "BufReadPre *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
