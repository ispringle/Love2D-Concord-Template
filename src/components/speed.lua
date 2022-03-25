local speed = ECS.Component("speed", function(c, speed)
    c.speed = speed or 0
end)

return speed
