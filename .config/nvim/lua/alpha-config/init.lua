local home = os.getenv('HOME')

local alpha = require'alpha'
local dashboard = require'alpha.themes.dashboard'

dashboard.section.header.val = {
  [[           //                 /*]],
  [[       ,(/(//,               *###]],
  [[     ((((((////.             /####%*]],
  [[  ,/(((((((/////*            /########]],
  [[  *///((((((//////.          *#########/]],
  [[  /////((((((((((((/         *#########/.]],
  [[  ///////((((((((((((*       *#########/.]],
  [[  ////////(/(((((((((((      *#########(.]],
  [[  /////////.,((((((((((/(    *#########(.]],
  [[  /////////.  /(((((((((((,  *#########(.]],
  [[  ////////(.    (((((((((((( *#########(.]],
  [[  ////////(.     ,#((((((((((##########(.]],
  [[  (//////((.       /#((((((((##%%######(.]],
  [[  (((((((((.         #(((((((####%%##%#(.]],
  [[  (((((((((.          ,((((((#####%%%%%(.]],
  [[  .#(((((((.            (((((#######%%]],
  [[     /(((((.             .(((#%##%%/*]],
  [[       ,(((.               /(#%%#]],
  [[         ./.                 #*]],
}

dashboard.section.buttons.val = {
  dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
  dashboard.button("e", "  New file" , ":ene <BAR> startinsert <CR>"),
  dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
  dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
  dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
  dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.lua <CR>"),
  dashboard.button("t", "  Open pesonal dotfiles", ":Telescope find_files find_command=rg,--ignore,--hidden,--files prompt_prefix=🔍 cwd="..home.."<CR>"),
  dashboard.button("q", "  Quit NVIM" , ":qa <CR>"),
}
local handle = io.popen('fortune')
local fortune = handle:read("*a")
handle:close()
dashboard.section.footer.val = fortune
dashboard.config.opts.noautocmd = true
vim.cmd[[autocmd User AlphaReady echo 'ready']]
alpha.setup(dashboard.config)
