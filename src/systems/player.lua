local PlayerSystem = ECS.System({
  pool = {"player", "position", "speed", "velocity"}
})

function PlayerSystem:keypressed(key)
  for _, e in ipairs(self.pool) do
    if key == "up" then
      e.velocity.y = e.speed.speed * -1
    elseif key == "down" then
      e.velocity.y = e.speed.speed
    elseif key == "left" then
      e.velocity.x = e.speed.speed * -1
    elseif key == "right" then
      e.velocity.x = e.speed.speed
    end
  end
end

function PlayerSystem:keyreleased()
  for _, e in ipairs(self.pool) do
    e.velocity.x = 0
    e.velocity.y = 0
  end
end
return PlayerSystem
