data:extend({
    {
        type = "explosion",
        name = "small-assembler-2-explosion",
        hidden_in_factoriopedia = true,
        animations = {
            {
                animation_speed = 0.5,
                draw_as_glow = true,
                filename = "__base__/graphics/entity/explosion/explosion-1.png",
                frame_count = 17,
                height = 42,
                line_length = 6,
                priority = "high",
                scale = 0.5,
                shift = { 0.140625, 0.1875 },
                width = 48
            },
            {
                animation_speed = 0.5,
                draw_as_glow = true,
                filename = "__base__/graphics/entity/explosion/explosion-3.png",
                frame_count = 17,
                height = 88,
                line_length = 6,
                priority = "high",
                scale = 0.5,
                shift = { -0.03125, 0.046875 },
                width = 102
            }
        },
        created_effect = {
            action_delivery = {
                target_effects = {
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
                            { -0.26, -0.26 },
                            { 0.26,  0.26 }
                        },
                        particle_name = "trailing-copper-particle",
                        probability = 1,
                        repeat_count = 6,
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
                            { -0.26, -0.26 },
                            { 0.26,  0.26 }
                        },
                        particle_name = "trailing-gold-particle",
                        probability = 1,
                        repeat_count = 5,
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
                            { -0.26, -0.26 },
                            { 0.26,  0.26 }
                        },
                        particle_name = "trailing-steel-particle",
                        probability = 1,
                        repeat_count = 19,
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
                            { -0.26, -0.26 },
                            { 0.26,  0.26 }
                        },
                        particle_name = "trailing-iron-particle",
                        probability = 1,
                        repeat_count = 6,
                        speed_from_center = 0.02,
                        speed_from_center_deviation = 0.01,
                        type = "create-particle"
                    }
                },
                type = "instant"
            },
            type = "direct"
        },
        flags = { "not-on-map" },
        icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/small-assembler-3.png",
        icon_size = 64,
        localised_name = {
            "entity-name.ir-explosion",
            {
                "entity-name.small-assembler-2"
            }
        },
        smoke = "smoke-fast",
        smoke_count = 2,
        smoke_slow_down_factor = 1,
        sound = {
            aggregation = {
                max_count = 1,
                remove = true
            },
            variations = {
                {
                    filename = "__base__/sound/small-explosion-1.ogg",
                    volume = 0.5
                },
                {
                    filename = "__base__/sound/small-explosion-2.ogg",
                    volume = 0.5
                },
                {
                    filename = "__base__/sound/small-explosion-3.ogg",
                    volume = 0.5
                },
                {
                    filename = "__base__/sound/small-explosion-4.ogg",
                    volume = 0.5
                },
                {
                    filename = "__base__/sound/small-explosion-5.ogg",
                    volume = 0.5
                }
            }
        }
    }
})
