local love = require('love')
local RenderSystem = ECS.System({
  pool = {"position", "render"}
})

function RenderSystem:draw()
    for _, e in ipairs(self.pool) do
        love.graphics.circle("fill", e.position.x, e.position.y, 5)
    end
end

return RenderSystem
