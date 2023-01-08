# telescope-catppuccin.nvim

catppuccin colour picker for telescope

## installation

install the following plugins with your plugin manager of choice:

```lua
{
    "nvim-telescope/telescope.nvim",
    "backwardspy/telescope-catppuccin.nvim",
}
```

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

