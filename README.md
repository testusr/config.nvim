## install nevessary applications

`
brew install nvim      // nvim itself 
brew install ripgrep   // telescope needs it to fuzzyfind texts
xcode-select --install // install make necessary for telescope-fzf-native.nvim plugin
`

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

create the basic vim configuration by editing init.lua. 

## package manager "packer"

## sources 

https://www.youtube.com/watch?v=vdn_pKJUda8

