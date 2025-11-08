local function swap_ingredient(ingredients)
    for _, ingredient in ipairs(ingredients) do
        if ingredient.name == "assembling-machine-1" then
            ingredient.name = "small-assembling-machine-1"
        end
    end

    return ingredients
end

local recipe = table.deepcopy(data.raw["recipe"]["assembling-machine-2"])

recipe.name = "small-assembling-machine-2"
recipe.results = { { type = "item", name = "small-assembling-machine-2", amount = 1 } }
recipe.ingredients = swap_ingredient(recipe.ingredients)

data:extend({ recipe })
