brew install nvim 


## create config directory structure 

mkdir -p ~/.config/nvim/lua/truehl/core
mkdir -p ~/.config/nvim/lua/truehl/plugins

touch ~/.config/nvim/init.lua
touch ~/.config/nvim/lua/truehl/plugins-setup.lua
touch ~/.config/nvim/lua/truehl/core/options.lua
touch ~/.config/nvim/lua/truehl/core/colorscheme.lua
touch ~/.config/nvim/lua/truehl/core/keymaps.lua

`
├── README.md
├── init.lua
└── lua
    └── truehl
        ├── core
        │   ├── colorscheme.lua
        │   ├── keymaps.lua
        │   └── options.lua
        ├── plugins
        └── plugins-setup.lua
`
