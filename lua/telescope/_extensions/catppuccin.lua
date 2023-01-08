return require("telescope").register_extension({
    setup = function(ext_config, config) end,
    exports = {
        catppuccin = require("telescope_catppuccin").catppuccin,
    },
})
