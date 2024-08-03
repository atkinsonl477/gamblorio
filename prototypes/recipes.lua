--recipes.lua

-- Adding Group, subgroup, and recipe category for crafting
data:extend{
    {
        type="item-group",
        name="Gamble Tab",
        icon="__gamblorio__/graphics/meme/slot-machine.png",
        icon_size=64
    },
    {
        type="recipe-category",
        name="gambling"

    },
    {   -- category to place the old intermediate recipes in
        type="recipe-category",
        name="nullCategory"
    },
    {
        type="item-subgroup",
        name="tier-1",
        group="Gamble Tab"
    }

}



data.raw["recipe"]["copper-cable"].category = "nullCategory"
data.raw["recipe"]["iron-stick"].category = "nullCategory"
data.raw["recipe"]["iron-gear-wheel"].category = "nullCategory"
data.raw["recipe"]["empty-barrel"].category = "nullCategory"
data.raw["recipe"]["electronic-circuit"].category = "nullCategory"
data.raw["recipe"]["advanced-circuit"].category = "nullCategory"
data.raw["recipe"]["processing-unit"].category = "nullCategory"
data.raw["recipe"]["engine-unit"].category = "nullCategory"
data.raw["recipe"]["electric-engine-unit"].category = "nullCategory"
data.raw["recipe"]["flying-robot-frame"].category = "nullCategory"


-- -- -- -- -- -- MODIFYING RECIPES -- -- -- -- -- --


-- Copper Cable
local copperWiresRecipe = table.deepcopy(data.raw["recipe"]["copper-cable"])
copperWiresRecipe.category = "gambling"
copperWiresRecipe.subgroup = "tier-1"
copperWiresRecipe.results = {
    {name="copper-cable", amount=2, probability=.6},
    {name="copper-plate", amount=1, probability=.4},
                            }
copperWiresRecipe.name = "Copper Cable ;)"
copperWiresRecipe.icons = {
    {
    icon = data.raw["item"]["copper-cable"].icon,
    icon_size = data.raw["item"]["copper-cable"].icon_size,
    },
}
copperWiresRecipe.hide_from_player_crafting = true


-- Iron Sticks
local ironSticksRecipe = table.deepcopy(data.raw["recipe"]["iron-stick"])
ironSticksRecipe.category = "gambling"
ironSticksRecipe.subgroup = "tier-1"
ironSticksRecipe.results = {
    {name="iron-stick", amount=2, probability=.5},
    {name="iron-plate", amount=1, probability=.2},
    {name="iron-gear-wheel", amount=1, probability=.1},
    {name="electronic-circuit", amount=1, probability=.05},
    {name="steel-plate", amount=1, probability=.05},
    {name="empty-barrel", amount=1, probability=.1}
                            }
ironSticksRecipe.name = "Iron Stick ;)"
ironSticksRecipe.icons = {
    {
    icon = data.raw["item"]["iron-stick"].icon,
    icon_size = data.raw["item"]["iron-stick"].icon_size,
    },
}
ironSticksRecipe.hide_from_player_crafting = true


-- Iron Gear Wheel
local ironGearRecipe = table.deepcopy(data.raw["recipe"]["iron-gear-wheel"])
ironGearRecipe.category = "gambling"
ironGearRecipe.subgroup = "tier-1"
ironGearRecipe.results = {
    {name="iron-gear-wheel", amount=1, probability=.5},
    {name="iron-plate", amount=2, probability=.2},
    {name="iron-stick", amount=4, probability=.1},
    {name="electronic-circuit", amount=1, probability=.05},
    {name="steel-plate", amount=1, probability=.05},
    {name="empty-barrel", amount=1, probability=.1}
                            }
ironGearRecipe.name = "Iron Gear Wheel ;)"
ironGearRecipe.icons = {
    {
    icon = data.raw["item"]["iron-gear-wheel"].icon,
    icon_size = data.raw["item"]["iron-gear-wheel"].icon_size,
    },
}
ironGearRecipe.hide_from_player_crafting = true





data:extend{copperWiresRecipe, ironGearRecipe, ironSticksRecipe, ironGearRecipe}



