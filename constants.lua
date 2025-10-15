STATUS_COLORS = {
    disabled = { a = 1, b = 0.25, g = 0.25, r = 1 },
    full_output = { a = 1, b = 0.25, g = 0.625, r = 1 },
    idle = { a = 1, b = 1, g = 0.625, r = 0.25 },
    insufficient_input = { a = 1, b = 0.25, g = 0.625, r = 1 },
    low_power = { a = 1, b = 0.25, g = 0.25, r = 1 },
    no_minable_resources = { a = 1, b = 1, g = 0.625, r = 0.25 },
    no_power = { 0, 0, 0, 0 },
    working = { a = 1, b = 0.25, g = 1, r = 0.25 }
}

DEFAULT_RECIPE_TINT = {
    primary    = { r = 1, g = 0, b = 0, a = 1 },
    secondary  = { r = 1, g = 0, b = 0, a = 1 },
    tertiary   = { r = 0.75, g = 0, b = 0, a = 1 },
    quaternary = { r = 1, g = 0.5, b = 0.5, a = 1 }
}

PIPE_COVERS = {
    east = {
        layers = {
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-iron-ce.png",
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                shift = { -1, 0 },
                width = 180
            },
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-shadow-ce.png",
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                shift = { -1, 0 },
                width = 180,
                draw_as_shadow = true
            }
        }
    },

    north = {
        layers = {
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-iron-cn.png",
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                shift = { 0, 1 },
                width = 180
            },
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-shadow-cn.png",
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                shift = { 0, 1 },
                width = 180,
                draw_as_shadow = true
            }
        }
    },

    south = {
        layers = {
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-iron-cs.png",
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                shift = { 0, -1 },
                width = 180
            },
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-shadow-cs.png",
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                shift = { 0, -1 },
                width = 180,
                draw_as_shadow = true
            }
        }
    },

    west = {
        layers = {
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-iron-cw.png",
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                shift = { 1, 0 },
                width = 180
            },
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-shadow-cw.png",
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                shift = { 1, 0 },
                width = 180,
                draw_as_shadow = true
            }
        }
    }
}

PIPE_PICTURES = {
    north = {
        filename =
        "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/standard-pipe-pictures-steel-north.png",
        height = 238,
        width = 238,
        scale = 0.5,
        shift = { 0, 2 },
        priority = "high",
    },

    east  = {
        filename =
        "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/standard-pipe-pictures-steel-east.png",
        height = 238,
        width = 238,
        scale = 0.5,
        shift = { -2, 0 },
        priority = "high",
    },

    south = {
        layers = {
            {
                filename =
                "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/standard-pipe-pictures-steel-south.png",
                height = 238,
                width = 238,
                scale = 0.5,
                shift = { 0, -2 },
                priority = "high",
            },
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-shadow-v.png",
                height = 120,
                width = 180,
                scale = 0.5,
                shift = { 0, -1 },
                priority = "high",
                draw_as_shadow = true,
            }
        }
    },

    west  = {
        filename =
        "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/standard-pipe-pictures-steel-west.png",
        height = 238,
        width = 238,
        scale = 0.5,
        shift = { 2, 0 },
        priority = "high",
    }
}
