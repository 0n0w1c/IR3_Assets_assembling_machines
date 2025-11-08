local technology = data.raw["technology"]["automation-2"]

technology.icon = "__IndustrialRevolution3Assets1__/graphics/icons/256/assembler3.png"

table.insert(technology.effects, { type = "unlock-recipe", recipe = "small-assembling-machine-2" })
