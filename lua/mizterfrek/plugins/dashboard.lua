return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Set header
    dashboard.section.header.val = {
      "                                                                                   ",
      "                                                                                   ",
      "                               |    Bienvenido!    |                               ",
      "                                                                                   ",
      "                                                                                   ",
      "███╗   ███╗██╗███████╗████████╗███████╗██████╗     ███████╗██████╗ ███████╗██╗  ██╗",
      "████╗ ████║██║╚══███╔╝╚══██╔══╝██╔════╝██╔══██╗    ██╔════╝██╔══██╗██╔════╝██║ ██╔╝",
      "██╔████╔██║██║  ███╔╝    ██║   █████╗  ██████╔╝    █████╗  ██████╔╝█████╗  █████╔╝ ",
      "██║╚██╔╝██║██║ ███╔╝     ██║   ██╔══╝  ██╔══██╗    ██╔══╝  ██╔══██╗██╔══╝  ██╔═██╗ ",
      "██║ ╚═╝ ██║██║███████╗   ██║   ███████╗██║  ██║    ██║     ██║  ██║███████╗██║  ██╗",
      "╚═╝     ╚═╝╚═╝╚══════╝   ╚═╝   ╚══════╝╚═╝  ╚═╝    ╚═╝     ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝",
      "                                                                                   ",
      "                                                                                   ",
      " Code is like humor. When you have to explain it, it's bad.                        ",
    }

    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button("e"      , "  > New File", "<cmd>ene<CR>"),
      dashboard.button("SPC ee" , "  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("SPC ff" , "󰱼  > Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("SPC fs" , "  > Find Word", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("SPC wr" , "󰁯  > Restore Session For Current Directory", "<cmd>SessionRestore<CR>"),
      dashboard.button("q"      , "  > Quit NVIM", "<cmd>qa<CR>"),
    }

    local function info()
      local uname = vim.loop.os_uname()
      local nvim_version = vim.version()
      return string.format(
        "Neovim v%d.%d.%d on %s", 
        nvim_version.major, 
        nvim_version.minor, 
        nvim_version.patch, 
        uname.sysname
      )
    end

    dashboard.section.footer.val = info()

    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
