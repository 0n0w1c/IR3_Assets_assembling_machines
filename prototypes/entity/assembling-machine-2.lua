local entity = data.raw["assembling-machine"]["assembling-machine-2"]

entity.icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/assembler3.png"
entity.match_animation_speed_to_activity = false

entity.corpse = "medium-remnants"
entity.dying_explosion = "assembling-machine-2-explosion"

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
        probability = 0.16525426909363858,
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
        probability = 0.067254644398573848,
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
        particle_name = "gold-particle",
        probability = 0.038431225370613614,
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
        particle_name = "steel-particle",
        probability = 0.3766260086320135,
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
        probability = 0.053803715518859079,
        repeat_count = 1,
        speed_from_center = 0.02,
        speed_from_center_deviation = 0.01,
        type = "create-particle"
    }
}

entity.fluid_boxes =
{
    {
        production_type = "input",
        pipe_picture = PIPE_PICTURES_IRON,
        pipe_covers = PIPE_COVERS,
        volume = 1000,
        pipe_connections = { { flow_direction = "input", direction = defines.direction.north, position = { 0, -1 } } },
        secondary_draw_orders = { north = -1 }
    },
    {
        production_type = "output",
        pipe_picture = PIPE_PICTURES_IRON,
        pipe_covers = PIPE_COVERS,
        volume = 1000,
        pipe_connections = { { flow_direction = "output", direction = defines.direction.south, position = { 0, 1 } } },
        secondary_draw_orders = { north = -1 }
    }
}
entity.graphics_set = {
    default_recipe_tint = DEFAULT_RECIPE_TINT,
    status_colors = STATUS_COLORS,
    animation = {
        layers = {
            {
                animation_speed = 0.75,
                filename =
                "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/assembler3-base.png",
                frame_count = 60,
                height = 224,
                width = 192,
                line_length = 10,
                priority = "high",
                scale = 0.5,
                shift = { 0, -0.34375 },
            },
            {
                animation_speed = 0.75,
                filename =
                "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/iron-shadow.png",
                height = 192,
                width = 256,
                priority = "high",
                repeat_count = 60,
                scale = 0.5,
                shift = { 0.5, -0.09375 },
                draw_as_shadow = true,
            },
            {
                animation_speed = 0.75,
                filename =
                "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/assembler2-shadow.png",
                frame_count = 60,
                line_length = 10,
                height = 96,
                width = 96,
                priority = "high",
                scale = 0.5,
                shift = { 2.75, 0.15625 },
                draw_as_shadow = true,
            }
        }
    },
    working_visualisations = {
        {
            always_draw = true,
            animation = {
                animation_speed = 1,
                filename =
                "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/steel-indicator-3-gear.png",
                frame_count = 30,
                line_length = 5,
                height = 64,
                width = 64,
                priority = "high",
                scale = 0.5,
                shift = { 0, 0.90625 },
            }
        },
        {
            animation = {
                animation_speed = 0.75,
                blend_mode = "additive",
                filename =
                "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/assembler3-working-sparks.png",
                frame_count = 60,
                line_length = 6,
                height = 128,
                width = 192,
                priority = "high",
                scale = 0.5,
                shift = { 0, -0.59375 },
                draw_as_glow = true,
            },
            fadeout = true
        },
        {
            always_draw = true,
            animation = {
                animation_speed = 0.75,
                blend_mode = "additive",
                filename =
                "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/assembler2-working-tinted.png",
                frame_count = 60,
                line_length = 6,
                height = 128,
                width = 192,
                priority = "high",
                scale = 0.5,
                shift = { 0, -1.09375 },
                draw_as_glow = true,
            },
            apply_tint = "status"
        },
        {
            always_draw = true,
            animation = {
                blend_mode = "additive",
                filename =
                "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/assembler-glow.png",
                frame_count = 30,
                line_length = 5,
                height = 128,
                width = 192,
                priority = "high",
                scale = 0.5,
                shift = { 0, -0.09375 },
                draw_as_glow = true,
            },
            apply_tint = "status",
            light = { intensity = 0.4, shift = { 0, 0.65625 }, size = 3 }
        }
    }
}
entity.working_sound = {
    fade_in_ticks = 10,
    fade_out_ticks = 30,
    sound = {
        filename = "__IndustrialRevolution3Assets1__/sound/saw-weld.ogg",
        volume = 0.5
    }
}
