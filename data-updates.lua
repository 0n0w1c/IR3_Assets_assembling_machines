if not (mods["IndustrialRevolution3Assets1"]
        and mods["IndustrialRevolution3Assets2"]
        and mods["IndustrialRevolution3Assets3"]
        and mods["IndustrialRevolution3Assets4"]
    ) then
    return
end

require("constants")

require("prototypes/entity/assembling-machine-1")
require("prototypes/item/assembling-machine-1")
require("prototypes/technology/automation")

require("prototypes/entity/assembling-machine-2")
require("prototypes/item/assembling-machine-2")
require("prototypes/technology/automation-2")

require("prototypes/entity/assembling-machine-3")
require("prototypes/item/assembling-machine-3")
require("prototypes/technology/automation-3")
