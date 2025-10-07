local item_sounds = require("__base__/prototypes/item_sounds")

data:extend({
    {
        type = "item",
        name = "assembling-machine-1",
        icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/assembler2.png",
        subgroup = "production-machine",
        color_hint = { text = "2" },
        order = "b[assembling-machine-1]",
        inventory_move_sound = item_sounds.mechanical_inventory_move,
        pick_sound = item_sounds.mechanical_inventory_pickup,
        drop_sound = item_sounds.mechanical_inventory_move,
        place_result = "assembling-machine-1",
        stack_size = 50
    }
})
