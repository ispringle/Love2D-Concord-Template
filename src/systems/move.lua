local MovementSystem = ECS.System({
  pool = {"position", "velocity"}
})

function MovementSystem:update(dt)
  for _, e in ipairs(self.pool) do
    e.position.x = e.position.x + e.velocity.x * dt
    e.position.y = e.position.y + e.velocity.y * dt
  end
end

return MovementSystem
