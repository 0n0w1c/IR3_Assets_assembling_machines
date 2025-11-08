local recipe = table.deepcopy(data.raw["recipe"]["assembling-machine-1"])

recipe.name = "small-assembling-machine-1"
recipe.results = { { type = "item", name = "small-assembling-machine-1", amount = 1 } }

data:extend({ recipe })
