local love = require('love')

-- load libraries
require("modules.lovedebug.lovedebug")

-- load local modules
GAME = require("src.game")

-- load main ECS libs
ECS = {}
ECS.Component = require("modules.Concord.concord.component")
ECS.System = require("modules.Concord.concord.system")
ECS.World = require("modules.Concord.concord.world")
ECS.Entity = require("modules.Concord.concord.entity")

-- load ECS tables
COMPONENTS = require("src.components")
SYSTEMS = require("src.systems")
WORLDS = require("src.worlds")
ENTITIES = require("src.entities")

-- CONSTANTS
CONST = {}

-- initial load func
function love.load()
  GAME.current = WORLDS.start()
end

-- main loop
function love.update(dt)
  GAME.current:emit("update", dt)
end

-- draw loop
function love.draw()
  GAME.current:emit("draw")
end

function love.keypressed(key)
  GAME.current:emit("keypressed", key)
end

function love.keyreleased(key)
  GAME.current:emit("keyreleased", key)
end
