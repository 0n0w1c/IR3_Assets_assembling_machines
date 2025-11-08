if not (mods["IndustrialRevolution3Assets1"]
        and mods["IndustrialRevolution3Assets2"]
        and mods["IndustrialRevolution3Assets3"]
        and mods["IndustrialRevolution3Assets4"]
    ) then
    return
end

require("constants")

require("prototypes/explosion/assembling-machine-1")
require("prototypes/entity/assembling-machine-1")
require("prototypes/item/assembling-machine-1")
require("prototypes/technology/automation")

require("prototypes/explosion/assembling-machine-2")
require("prototypes/entity/assembling-machine-2")
require("prototypes/item/assembling-machine-2")
require("prototypes/technology/automation-2")

require("prototypes/explosion/assembling-machine-3")
require("prototypes/entity/assembling-machine-3")
require("prototypes/item/assembling-machine-3")
require("prototypes/technology/automation-3")

if settings.startup["IR3-add-1x1"].value == true then
    require("prototypes/explosion/small-assembling-machine-1")
    require("prototypes/entity/small-assembling-machine-1")
    require("prototypes/item/small-assembling-machine-1")
    require("prototypes/recipe/small-assembling-machine-1")

    require("prototypes/explosion/small-assembling-machine-2")
    require("prototypes/entity/small-assembling-machine-2")
    require("prototypes/item/small-assembling-machine-2")
    require("prototypes/recipe/small-assembling-machine-2")
end
