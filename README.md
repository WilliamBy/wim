# Wim - Neovim config for various scenes

## Configuration Structure

The directory structure is like below:

```
├── init.lua
├── lazy-lock.json
├── lua
│   ├── lazy_setup.lua
│   ├── community.lua
│   ├── polish.lua
│   ├── utils.lua
│   └── plugins
│       ├── astrocore.lua
│       ├── astrolsp.lua
│       ├── astroui.lua
│       ├── user.lua
│       ├── ...
│       .
├── neovim.yml
├── README.md
└── selene.toml
```

- `init.lua`: Check if lazy.nvim(plugin manager) has been installed.
  - It is the entry point of the whole config.
- `lua`: This is main config directory for every plugin.
  - `lazy_setup.lua`: Setup plugin manager, and then loading other config.
  - `community.lua`: This file contains all community-pre-config you need, check ![AstroCommunity](https://github.com/AstroNvim/astrocommunity) for importing new community config.
  - `plugins`: This contains all configs user appended for some plugins. Those config will be merged
    with or override community-pre-config loaded before.
  - `polish.lua`: This shouldn't contain any plugin's api. It is expected to be load at last.
  - `utils.lua`: User defined utility function.
- `lazy-lock.json`: Copy it to lock version of all plugins every time you install nvim on a new machine.

## Loading Sequance

The diagram below demonstrate **lua-script loading procedure**

![](https://picgo-1301429536.cos.ap-nanjing.myqcloud.com/img/20240606154839.png)

## Switch Distro

Different branch stand for different distro which can be used in various scenes.

Every Distro derive from `mini` branch which contains minimal tools.

The `core` branch add some general feature to rich the functionality.

Any other **language-specific** or **framework-specific** settings can be find in branchs which inherit `core`, e.g. `cim` for c/c++ dev.

``` shell
               |- cim # c/c++
               |
mini --> core -|- jim # java
               |
               |- pim # python
```
