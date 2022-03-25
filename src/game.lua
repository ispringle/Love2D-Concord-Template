local game = {}

game.Entities = {}
game.current = nil

function game:addEntities(instance, ...)
  local ents = {...}
  for i = 1, #ents do
    table.insert(game.Entities, ents[i])
    instance:addEntity(ents[i])
  end
end

return game
