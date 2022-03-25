return function()
  local world = ECS.World()

  -- Systems
  world:addSystems(SYSTEMS.MoveSystem, SYSTEMS.RenderSystem, SYSTEMS.PlayerSystem)

  -- Entities
  local entities = {
    hero = ECS.Entity(world)
      :give("position", 100, 100)
      :give("velocity", 0, 0)
      :give("speed", 10)
      :give("player")
      :give("render"),
    entity_2 = ECS.Entity(world)
      :give("position", 50, 50)
      :give("render"),
    entity_3 = ECS.Entity(world)
      :give("position", 200, 200)
      :give("render"),
  }

  for _, e in ipairs(entities) do
    GAME:addEntities(e)
  end

  return world
end
