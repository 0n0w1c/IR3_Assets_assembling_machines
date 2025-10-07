local item_sounds = require("__base__/prototypes/item_sounds")

data:extend({
    {
        type = "item",
        name = "assembling-machine-3",
        icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/laser-assembler.png",
        subgroup = "production-machine",
        color_hint = { text = "2" },
        order = "b[assembling-machine-3]",
        inventory_move_sound = item_sounds.mechanical_inventory_move,
        pick_sound = item_sounds.mechanical_inventory_pickup,
        drop_sound = item_sounds.mechanical_inventory_move,
        place_result = "assembling-machine-3",
        stack_size = 50
    }
})
