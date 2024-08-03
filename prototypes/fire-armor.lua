--item.lua

local fireArmor = table.deepcopy(data.raw["armor"]["heavy-armor"]) -- copy the table that defines the heavy armor item into the fireArmor variable

fireArmor.name = "fire-armor"
fireArmor.icons = {
  {
    icon = "__gamblorio__/graphics/meme/slot-machine.png",
    icon_size = fireArmor.icon_size,
    
  },
}


fireArmor.resistances = {
  {
    type = "physical",
    decrease = 6,
    percent = 10
  },
  {
    type = "explosion",
    decrease = 10,
    percent = 30
  },
  {
    type = "acid",
    decrease = 5,
    percent = 30
  },
  {
    type = "fire",
    decrease = 0,
    percent = 100
  }
}

local recipe = table.deepcopy(data.raw["recipe"]["heavy-armor"])
recipe.enabled = true
recipe.name = "fire-armor"
recipe.ingredients = {{"copper-plate",200},{"steel-plate",50}}
recipe.result = "fire-armor"

data:extend{fireArmor,recipe}

-- give player a random item based on what items were given

  

local ballRecipe = table.deepcopy(data.raw["recipe"]["iron-gear-wheel"])
ballRecipe.enabled = true
ballRecipe.name = "mystery-balls"
ballRecipe.ingredients = {{"copper-plate", 3}, {"iron-plate", 3}}
ballRecipe.results = {{type = "item"}}


