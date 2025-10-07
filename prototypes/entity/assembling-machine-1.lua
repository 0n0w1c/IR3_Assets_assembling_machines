local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")

data:extend({
    {
        type = "assembling-machine",
        name = "assembling-machine-1",
        icon = "__base__/graphics/icons/assembling-machine-2.png",
        flags = { "placeable-neutral", "placeable-player", "player-creation" },
        minable = { mining_time = 0.2, result = "assembling-machine-1" },
        max_health = 350,
        match_animation_speed_to_activity = false,
        default_recipe_tint = {
            primary = {
                a = 1,
                b = 0,
                g = 0,
                r = 1
            },
            quaternary = {
                a = 1,
                b = 0.5,
                g = 0.5,
                r = 1
            },
            secondary = {
                a = 1,
                b = 0,
                g = 0,
                r = 1
            },
            tertiary = {
                a = 1,
                b = 0,
                g = 0,
                r = 0.75
            }
        },
        corpse = "assembling-machine-2-remnants",
        dying_explosion = "assembling-machine-2-explosion",
        icon_draw_specification = { shift = { 0, -0.3 } },
        circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
        circuit_connector = circuit_connector_definitions["assembling-machine"],
        alert_icon_shift = util.by_pixel(0, -12),
        resistances =
        {
            {
                type = "fire",
                percent = 70
            }
        },
        fluid_boxes =
        {
            {
                production_type = "input",
                pipe_picture = assembling2pipepictures(),
                pipe_covers = pipecoverspictures(),
                volume = 1000,
                pipe_connections = { { flow_direction = "input", direction = defines.direction.north, position = { 0, -1 } } },
                secondary_draw_orders = { north = -1 }
            },
            {
                production_type = "output",
                pipe_picture = assembling2pipepictures(),
                pipe_covers = pipecoverspictures(),
                volume = 1000,
                pipe_connections = { { flow_direction = "output", direction = defines.direction.south, position = { 0, 1 } } },
                secondary_draw_orders = { north = -1 }
            }
        },
        fluid_boxes_off_when_no_fluid_recipe = true,
        collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
        selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
        damaged_trigger_effect = hit_effects.entity(),
        fast_replaceable_group = "assembling-machine",
        next_upgrade = "assembling-machine-2",
        graphics_set = {
            status_colors = {
                disabled = { a = 1, b = 0.25, g = 0.25, r = 1 },
                full_output = { a = 1, b = 0.25, g = 0.625, r = 1 },
                idle = { a = 1, b = 1, g = 0.625, r = 0.25 },
                insufficient_input = { a = 1, b = 0.25, g = 0.625, r = 1 },
                low_power = { a = 1, b = 0.25, g = 0.25, r = 1 },
                no_minable_resources = { a = 1, b = 1, g = 0.625, r = 0.25 },
                no_power = { 0, 0, 0, 0 },
                working = { a = 1, b = 0.25, g = 1, r = 0.25 }
            },
            animation = {
                layers = {
                    {
                        animation_speed = 0.75,
                        draw_as_glow = false,
                        draw_as_light = false,
                        draw_as_shadow = false,
                        filename =
                        "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/assembler2-base.png",
                        frame_count = 60,
                        height = 256,
                        line_length = 10,
                        priority = "high",
                        scale = 0.5,
                        shift = { 0, -0.59375 },
                        width = 192
                    },
                    {
                        animation_speed = 0.75,
                        draw_as_glow = false,
                        draw_as_light = false,
                        draw_as_shadow = true,
                        filename =
                        "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/iron-shadow.png",
                        height = 192,
                        priority = "high",
                        repeat_count = 60,
                        scale = 0.5,
                        shift = { 0.5, -0.09375 },
                        width = 256
                    },
                    {
                        animation_speed = 0.75,
                        draw_as_glow = false,
                        draw_as_light = false,
                        draw_as_shadow = true,
                        filename =
                        "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/assembler2-shadow.png",
                        frame_count = 60,
                        height = 96,
                        line_length = 10,
                        priority = "high",
                        scale = 0.5,
                        shift = { 2.75, 0.15625 },
                        width = 96
                    }
                }
            },

            working_visualisations = {
                {
                    animation = {
                        animation_speed = 0.75,
                        blend_mode = "additive",
                        draw_as_glow = true,
                        draw_as_light = false,
                        draw_as_shadow = false,
                        filename =
                        "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/assembler2-working-sparks.png",
                        frame_count = 60,
                        height = 128,
                        line_length = 6,
                        priority = "high",
                        scale = 0.5,
                        shift = { 0, -0.59375 },
                        width = 192
                    },
                    fadeout = true
                },
                {
                    always_draw = true,
                    animation = {
                        animation_speed = 0.75,
                        blend_mode = "additive",
                        draw_as_glow = true,
                        draw_as_light = false,
                        draw_as_shadow = false,
                        filename =
                        "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/assembler2-working-tinted.png",
                        frame_count = 60,
                        height = 128,
                        line_length = 6,
                        priority = "high",
                        scale = 0.5,
                        shift = { 0, -1.09375 },
                        width = 192
                    },
                    apply_tint = "status"
                },
                {
                    always_draw = true,
                    animation = {
                        blend_mode = "additive",
                        draw_as_glow = true,
                        draw_as_light = false,
                        draw_as_shadow = false,
                        filename =
                        "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/assembler-glow.png",
                        frame_count = 30,
                        height = 128,
                        line_length = 5,
                        priority = "high",
                        scale = 0.5,
                        shift = { 0, -0.09375 },
                        width = 192
                    },
                    apply_tint = "status",
                    light = { intensity = 0.4, shift = { 0, 0.65625 }, size = 3 }
                }
            }
        },
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        impact_category = "metal",
        working_sound =
        {
            sound = { filename = "__base__/sound/assembling-machine-t2-1.ogg", volume = 0.45, audible_distance_modifier = 0.5 },
            fade_in_ticks = 4,
            fade_out_ticks = 20
        },
        crafting_categories = { "crafting", "basic-crafting", "advanced-crafting" },

        crafting_speed = 0.5,
        energy_source =
        {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = { pollution = 3 }
        },
        energy_usage = "75kW",
    }
})
