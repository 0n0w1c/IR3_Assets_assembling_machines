local entity = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-1"])
if not entity then return end

entity.name = "small-assembling-machine-1"
entity.circuit_connector = nil
entity.fluid_boxes = nil

entity.graphics_set = {
    status_colors = STATUS_COLORS,
    animation = {
        layers = {
            {
                animation_speed = 0.75,
                draw_as_glow = false,
                draw_as_light = false,
                draw_as_shadow = false,
                filename =
                "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/small-assembler-2-base.png",
                frame_count = 64,
                height = 128,
                line_length = 8,
                priority = "high",
                scale = 0.5,
                shift = { 0, 0 },
                width = 128,
                x = 0,
                y = 0
            },
            {
                animation_speed = 0.75,
                draw_as_glow = false,
                draw_as_light = false,
                draw_as_shadow = true,
                filename =
                "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/small-assembler-shadow.png",
                frame_count = 64,
                height = 128,
                line_length = 8,
                priority = "high",
                scale = 0.5,
                shift = { 0.5, 0 },
                width = 192,
                x = 0,
                y = 0
            }
        }
    },
    working_visualisations = {
        {
            always_draw = true,
            animation = {
                animation_speed = 0.75,
                blend_mode = "additive",
                draw_as_glow = true,
                draw_as_light = false,
                draw_as_shadow = false,
                filename =
                "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/small-assembler-status.png",
                frame_count = 30,
                height = 64,
                line_length = 6,
                priority = "high",
                scale = 0.5,
                shift = { 0, -0.25 },
                width = 64,
                x = 0,
                y = 0
            },
            apply_tint = "status",
            light = {
                intensity = 0.4,
                shift = { 0, 0.65625 },
                size = 1.5
            }
        }
    }
}
entity.crafting_categories = { "crafting" }
entity.collision_box = {
    { -0.4, -0.4 },
    { 0.4,  0.4 }
}
entity.corpse = "small-remnants"
entity.damaged_trigger_effect = {
    {
        damage_type_filters = {
            "fire",
            "impact"
        },
        frame_speed = 1,
        frame_speed_deviation = 0.1,
        initial_height = 0.5,
        initial_vertical_speed = 0.07,
        initial_vertical_speed_deviation = 0.1,
        offset_deviation = {
            { -0.5, -0.5 },
            { 0.5,  0.5 }
        },
        particle_name = "copper-particle",
        probability = 0.21311475409836063,
        repeat_count = 1,
        speed_from_center = 0.02,
        speed_from_center_deviation = 0.01,
        type = "create-particle"
    },
    {
        damage_type_filters = {
            "fire",
            "impact"
        },
        frame_speed = 1,
        frame_speed_deviation = 0.1,
        initial_height = 0.5,
        initial_vertical_speed = 0.07,
        initial_vertical_speed_deviation = 0.1,
        offset_deviation = {
            { -0.5, -0.5 },
            { 0.5,  0.5 }
        },
        particle_name = "glass-particle",
        probability = 0.16393442622950818,
        repeat_count = 1,
        speed_from_center = 0.02,
        speed_from_center_deviation = 0.01,
        type = "create-particle"
    },
    {
        damage_type_filters = {
            "fire",
            "impact"
        },
        frame_speed = 1,
        frame_speed_deviation = 0.1,
        initial_height = 0.5,
        initial_vertical_speed = 0.07,
        initial_vertical_speed_deviation = 0.1,
        offset_deviation = {
            { -0.5, -0.5 },
            { 0.5,  0.5 }
        },
        particle_name = "iron-particle",
        probability = 0.62295081967213122,
        repeat_count = 1,
        speed_from_center = 0.02,
        speed_from_center_deviation = 0.01,
        type = "create-particle"
    }
}
entity.dying_explosion = "small-assembler-1-explosion"
entity.fast_replaceable_group = "small-assembling-machines"
entity.icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/small-assembler-2.png"
entity.icon_size = 64
entity.ingredient_count = 1
entity.match_animation_speed_to_activity = false
entity.minable = { mining_time = 0.2, result = "small-assembling-machine-1" }
entity.module_slots = 0
entity.next_upgrade = "small-assembling-machine-2"
entity.placeable_by = { count = 1, item = "small-assembling-machine-1" }
entity.selection_box = {
    { -0.5, -0.5 },
    { 0.5,  0.5 }
}
entity.tile_height = 1
entity.tile_width = 1
entity.working_sound = {
    fade_in_ticks = 10,
    fade_out_ticks = 30,
    sound = {
        filename = "__IndustrialRevolution3Assets1__/sound/small-machine-2.ogg",
        volume = 0.4
    }
}

data:extend({ entity })
