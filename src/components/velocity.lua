local velocity = ECS.Component("velocity", function(c, x, y)
    c.x = x or 0
    c.y = y or 0
end)

return velocity
