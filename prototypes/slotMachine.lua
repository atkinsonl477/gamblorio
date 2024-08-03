--slotMachine.lua

-- Creates the entity of slot machine
local slotMachine = {
    type = "assembling-machine",
    name = "slot-machine",
    icon = "__gamblorio__/graphics/meme/slot-machine.png",
    icon_size = 64,
    flags = {"placeable-neutral","placeable-player","player-creation"},
    minable = {mining_time = 1, result = "slot-machine"},
    max_health = 500,
    
    dying_explosion = "big-explosion",
    collision_box = {{-1.5, -1.5}, {1.5, 1.5}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    energy_usage = "150KW",
    crafting_speed = 1,
    crafting_categories = {"gambling"},
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 3,
    },
    
    animation = {
        layers = {
            {
                -- change these files at some point, placeholders currently
                filename = "__gamblorio__/graphics/slot-machine-main-animation.png",
                width = 1000,
                height = 1000,
                frame_count = 3,
                line_length = 3,
                animation_speed = .5,
                scale = .1
            },
            {
                -- change these files at some point, placeholders currently
                filename = "__gamblorio__/graphics/slot-machine-gear-animation.png",
                width = 1000,
                height = 1000,
                frame_count = 3,
                line_length = 3,
                scale = .1
            },
            {
                -- change these files at some point, placeholders currently
                filename = "__gamblorio__/graphics/slot-machine-spinner-animation.png",
                width = 1000,
                height = 1000,
                frame_count = 3,
                line_length = 3,
                scale = .1
            }


        }
    },
    


}


data:extend{slotMachine}







local recipe = table.deepcopy(data.raw["recipe"]["steel-furnace"])
recipe.enabled = true
recipe.name = "slot-machine"
recipe.ingredients = {{"copper-plate", 21}, {"iron-plate", 40}}
recipe.result = "slot-machine"

data:extend{recipe}

