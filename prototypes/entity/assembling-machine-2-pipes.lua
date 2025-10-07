function assembling2pipepictures()
    return
    {
        north = {
            filename =
            "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/standard-pipe-pictures-iron-north.png",
            height = 238,
            width = 238,
            scale = 0.5,
            shift = { 0, 2 },
            priority = "high",
            draw_as_glow = false,
            draw_as_light = false,
            draw_as_shadow = false,
        },

        east  = {
            filename =
            "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/standard-pipe-pictures-iron-east.png",
            height = 238,
            width = 238,
            scale = 0.5,
            shift = { -2, 0 },
            priority = "high",
            draw_as_glow = false,
            draw_as_light = false,
            draw_as_shadow = false,
        },

        south = {
            layers = {
                {
                    filename =
                    "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/standard-pipe-pictures-iron-south.png",
                    height = 238,
                    width = 238,
                    scale = 0.5,
                    shift = { 0, -2 },
                    priority = "high",
                    draw_as_glow = false,
                    draw_as_light = false,
                    draw_as_shadow = false,
                },
                {
                    filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-shadow-v.png",
                    height = 120,
                    width = 180,
                    scale = 0.5,
                    shift = { 0, -1 },
                    priority = "high",
                    draw_as_glow = false,
                    draw_as_light = false,
                    draw_as_shadow = true,
                }
            }
        },

        west  = {
            filename =
            "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/standard-pipe-pictures-iron-west.png",
            height = 238,
            width = 238,
            scale = 0.5,
            shift = { 2, 0 },
            priority = "high",
            draw_as_glow = false,
            draw_as_light = false,
            draw_as_shadow = false,
        }
    }
end
