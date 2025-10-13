local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")

local crafting_categories
if mods["space-age"] then
    crafting_categories = {
        "crafting", "basic-crafting", "advanced-crafting", "electronics",
        "pressing", "organic-or-assembling"
    }
else
    crafting_categories = { "crafting", "basic-crafting", "advanced-crafting" }
end

data:extend({
    {
        type = "assembling-machine",
        name = "assembling-machine-1",
        icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/assembler2.png",
        flags = { "placeable-neutral", "placeable-player", "player-creation" },
        minable = { mining_time = 0.2, result = "assembling-machine-1" },
        max_health = 350,
        match_animation_speed_to_activity = false,
        corpse = "assembling-machine-1-remnants",
        dying_explosion = "assembling-machine-1-explosion",
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
                        filename =
                        "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/assembler2-base.png",
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
                        "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/assembler2-shadow.png",
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
                        draw_as_light = false,
                        draw_as_shadow = false,
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
                        draw_as_light = false,
                        draw_as_shadow = false,
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
                        draw_as_light = false,
                        draw_as_shadow = false,
                    },
                    apply_tint = "status",
                    light = { intensity = 0.4, shift = { 0, 0.65625 }, size = 3 }
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
                filename = "__IndustrialRevolution3Assets1__/sound/saw-weld.ogg",
                volume = 0.5
            }
        },
        crafting_categories = crafting_categories,
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
