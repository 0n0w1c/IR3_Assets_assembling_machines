require("prototypes/entity/pipecovers")
require("prototypes/entity/assembling-machine-3-pipes")

local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")

data:extend({
    {
        type = "assembling-machine",
        name = "assembling-machine-3",
        icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/laser-assembler.png",
        flags = { "placeable-neutral", "placeable-player", "player-creation" },
        minable = { mining_time = 0.2, result = "assembling-machine-3" },
        max_health = 400,
        match_animation_speed_to_activity = false,
        corpse = "assembling-machine-3-remnants",
        dying_explosion = "assembling-machine-3-explosion",
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
                pipe_picture = assembling3pipepictures(),
                pipe_covers = pipecoverspictures(),
                volume = 1000,
                pipe_connections = { { flow_direction = "input", direction = defines.direction.north, position = { 0, -1 } } },
                secondary_draw_orders = { north = -1 }
            },
            {
                production_type = "output",
                pipe_picture = assembling3pipepictures(),
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
        graphics_set = {
            default_recipe_tint = {
                primary = { r = 1, g = 0, b = 0, a = 1 },
                secondary = { r = 1, g = 0, b = 0, a = 1 },
                tertiary = { r = 0.75, g = 0, b = 0, a = 1 },
                quaternary = { r = 1, g = 0.5, b = 0.5, a = 1 }
            },
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
                        filename =
                        "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/assembler4-base.png",
                        frame_count = 60,
                        line_length = 10,
                        height = 256,
                        width = 192,
                        priority = "high",
                        scale = 0.5,
                        shift = { 0, -0.59375 },
                        draw_as_glow = false,
                        draw_as_light = false,
                        draw_as_shadow = false,
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
                        draw_as_glow = false,
                        draw_as_light = false,
                        draw_as_shadow = true,
                    },
                    {
                        animation_speed = 0.75,
                        filename =
                        "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/assembler4-shadow.png",
                        frame_count = 60,
                        line_length = 10,
                        height = 96,
                        width = 96,
                        priority = "high",
                        scale = 0.5,
                        shift = { 2.75, 0.15625 },
                        draw_as_glow = false,
                        draw_as_light = false,
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
                        x = 0,
                        y = 0,
                        draw_as_glow = false,
                        draw_as_light = false,
                        draw_as_shadow = false,
                    }
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
                        x = 0,
                        y = 0,
                        draw_as_glow = true,
                        draw_as_light = false,
                        draw_as_shadow = false,
                    },
                    apply_tint = "status",
                    light = {
                        intensity = 0.4,
                        shift = { 0, 0.65625 },
                        size = 3
                    }
                },
                {
                    animation = {
                        animation_speed = 0.75,
                        blend_mode = "additive-soft",
                        filename =
                        "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/assembler4-working-sparks.png",
                        frame_count = 60,
                        line_length = 10,
                        height = 192,
                        width = 192,
                        priority = "high",
                        scale = 0.5,
                        shift = { 0, -1.09375 },
                        x = 0,
                        y = 0,
                        draw_as_glow = true,
                        draw_as_light = false,
                        draw_as_shadow = false,
                    },
                    fadeout = true
                },
                {
                    animation = {
                        animation_speed = 0.75,
                        blend_mode = "additive-soft",
                        filename =
                        "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/assembler4-working-tinted.png",
                        frame_count = 60,
                        line_length = 10,
                        height = 192,
                        width = 192,
                        priority = "high",
                        scale = 0.5,
                        shift = { 0, -1.09375 },
                        x = 0,
                        y = 0,
                        draw_as_glow = true,
                        draw_as_light = false,
                        draw_as_shadow = false,
                    },
                    apply_recipe_tint = "secondary",
                    fadeout = true
                },
                {
                    animation = {
                        animation_speed = 0.75,
                        blend_mode = "additive-soft",
                        filename =
                        "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/assembler4-working-white.png",
                        frame_count = 60,
                        line_length = 10,
                        height = 192,
                        width = 192,
                        priority = "high",
                        scale = 0.5,
                        shift = { 0, -1.09375 },
                        x = 0,
                        y = 0,
                        draw_as_glow = true,
                        draw_as_light = false,
                        draw_as_shadow = false,
                    },
                    fadeout = true
                }
            }
        },
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        impact_category = "metal",
        working_sound = {
            fade_in_ticks = 10,
            fade_out_ticks = 30,
            sound = {
                filename = "__IndustrialRevolution3Assets1__/sound/high-tech-industrial.ogg",
                volume = 0.5
            }
        },
        crafting_categories = { "basic-crafting", "crafting", "advanced-crafting", "crafting-with-fluid" },

        crafting_speed = 1.25,
        energy_source =
        {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = { pollution = 2 }
        },
        energy_usage = "375kW",
        module_slots = 4,
        allowed_effects = { "consumption", "speed", "productivity", "pollution", "quality" }
    }
})
