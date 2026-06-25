if not (mods["IndustrialRevolution3Assets1"]
        and mods["IndustrialRevolution3Assets2"]
        and mods["IndustrialRevolution3Assets3"]
        and mods["IndustrialRevolution3Assets4"]
    ) then
    return
end

require("constants")

local recipe

require("prototypes/explosion/assembling-machine-1")
require("prototypes/entity/assembling-machine-1")
require("prototypes/item/assembling-machine-1")
require("prototypes/technology/automation")

recipe = data.raw["recipe"]["assembling-machine-1"]
if mods["recycler"] and recipe then
    local recycling = require("__recycler__.recycling")
    recycling.generate_recycling_recipe(recipe)
end

require("prototypes/explosion/assembling-machine-2")
require("prototypes/entity/assembling-machine-2")
require("prototypes/item/assembling-machine-2")
require("prototypes/technology/automation-2")

recipe = data.raw["recipe"]["assembling-machine-2"]
if mods["recycler"] and recipe then
    local recycling = require("__recycler__.recycling")
    recycling.generate_recycling_recipe(recipe)
end

require("prototypes/explosion/assembling-machine-3")
require("prototypes/entity/assembling-machine-3")
require("prototypes/item/assembling-machine-3")
require("prototypes/technology/automation-3")

recipe = data.raw["recipe"]["assembling-machine-3"]
if mods["recycler"] and recipe then
    local recycling = require("__recycler__.recycling")
    recycling.generate_recycling_recipe(recipe)
end

if settings.startup["IR3-add-1x1"].value == true then
    require("prototypes/explosion/small-assembling-machine-1")
    require("prototypes/entity/small-assembling-machine-1")
    require("prototypes/item/small-assembling-machine-1")
    require("prototypes/recipe/small-assembling-machine-1")

    table.insert(data.raw["technology"]["automation"].effects,
        { type = "unlock-recipe", recipe = "small-assembling-machine-1" })

    recipe = data.raw["recipe"]["small-assembling-machine-1"]
    if mods["recycler"] and recipe then
        local recycling = require("__recycler__.recycling")
        recycling.generate_recycling_recipe(recipe)
    end

    require("prototypes/explosion/small-assembling-machine-2")
    require("prototypes/entity/small-assembling-machine-2")
    require("prototypes/item/small-assembling-machine-2")
    require("prototypes/recipe/small-assembling-machine-2")

    table.insert(data.raw["technology"]["automation-2"].effects,
        { type = "unlock-recipe", recipe = "small-assembling-machine-2" })

    recipe = data.raw["recipe"]["small-assembling-machine-2"]
    if mods["recycler"] and recipe then
        local recycling = require("__recycler__.recycling")
        recycling.generate_recycling_recipe(recipe)
    end
end
