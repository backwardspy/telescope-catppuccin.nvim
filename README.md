# telescope-catppuccin.nvim

catppuccin colour picker for telescope

![telescope window with catppuccin colours filtered by "teal"](https://user-images.githubusercontent.com/289746/211176170-cc8edac2-19be-4eb3-8f58-d6f0971b8256.png)

## installation

install the following plugins with your plugin manager of choice:

```lua
{
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    { "catppuccin/nvim", as = "catppuccin" },
    "backwardspy/telescope-catppuccin.nvim",
}
```

*note: depends on the [catppuccin theme](https://github.com/catppuccin/nvim)
to provide colours. install it as per the theme docs.*

## usage

tell telescope to load the extension:

```lua
require("telescope").load_extension("catppuccin")
```

now run `:Telescope catppuccin` to select colours. confirm a selection to write
the selected colour's hex code into your current buffer.

## recommended additional plugins

- [ccc.nvim](https://github.com/uga-rosa/ccc.nvim) will allow you to modify
your chosen colour further, for example converting it from hex to rgb or hsl
syntax.

