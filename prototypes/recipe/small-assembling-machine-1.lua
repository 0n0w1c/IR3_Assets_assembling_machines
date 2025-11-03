local recipe = table.deepcopy(data.raw["recipe"]["assembling-machine-1"])

recipe.name = "small-assembling-machine-1"
recipe.results = { { type = "item", name = "small-assembling-machine-1", amount = 1 } }

data:extend({ recipe })

recipe = data.raw["recipe"]["small-assembling-machine-1"]
local recycling = {}
if mods["quality"] then
    recycling = require("__quality__/prototypes/recycling")
    recycling.generate_recycling_recipe(recipe)
end

local technology = data.raw["technology"]["automation"]
table.insert(technology.effects, { type = "unlock-recipe", recipe = "small-assembling-machine-1" })
