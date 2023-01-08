local pickers = require("telescope.pickers")
local finders = require("telescope.finders")
local conf = require("telescope.config").values
local actions = require("telescope.actions")
local action_state = require("telescope.actions.state")

local palettes = require("catppuccin.palettes")

local flavours = { "latte", "frappe", "macchiato", "mocha" }
local colour_names = {
    "rosewater",
    "flamingo",
    "pink",
    "mauve",
    "red",
    "maroon",
    "peach",
    "yellow",
    "green",
    "teal",
    "sky",
    "sapphire",
    "blue",
    "lavender",
    "text",
    "subtext1",
    "subtext0",
    "overlay2",
    "overlay1",
    "overlay0",
    "surface2",
    "surface1",
    "surface0",
    "base",
    "mantle",
    "crust",
}

local make_colours = function()
    local colours = {}
    for _, flavour in ipairs(flavours) do
        local palette = palettes.get_palette(flavour)
        for _, name in ipairs(colour_names) do
            table.insert(colours, { flavour .. " " .. name .. " (" .. palette[name] .. ")", palette[name] })
        end
    end
    return colours
end
local results = make_colours()

local M = {}

M.catppuccin = function(opts)
    opts = opts or {}
    pickers
        .new(opts, {
            prompt_title = "Catppuccin",
            finder = finders.new_table({
                results = results,
                entry_maker = function(entry)
                    return {
                        value = entry,
                        display = entry[1],
                        ordinal = entry[1],
                    }
                end,
            }),
            sorter = conf.generic_sorter(opts),
            attach_mappings = function(prompt_bufnr, map)
                actions.select_default:replace(function()
                    actions.close(prompt_bufnr)
                    local selection = action_state.get_selected_entry()
                    vim.api.nvim_put({ selection.value[2] }, "", false, true)
                end)
                return true
            end,
        })
        :find()
end

return M
