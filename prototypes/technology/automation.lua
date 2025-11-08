local technology = data.raw["technology"]["automation"]

technology.icon = "__IndustrialRevolution3Assets1__/graphics/icons/256/assembler2.png"

table.insert(technology.effects, { type = "unlock-recipe", recipe = "small-assembling-machine-1" })
