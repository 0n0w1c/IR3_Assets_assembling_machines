local entity = data.raw["assembling-machine"]["assembling-machine-1"]

entity.icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/assembler2.png"
entity.match_animation_speed_to_activity = false
entity.graphics_set = {
    status_colors = STATUS_COLORS,
    animation = {
        layers = {
            {
                animation_speed = 0.75,
                filename =
                "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/assembler2-base.png",
                frame_count = 60,
                line_length = 10,
                height = 256,
                width = 192,
                priority = "high",
                scale = 0.5,
                shift = { 0, -0.59375 },
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
            animation = {
                animation_speed = 0.75,
                blend_mode = "additive",
                filename =
                "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/assembler2-working-sparks.png",
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
