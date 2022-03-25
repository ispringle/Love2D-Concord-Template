local PATH = (...):gsub('%.init$', '')..'/'

--SYSTEMS
return {
  MoveSystem = require(PATH..'move'),
  PlayerSystem = require(PATH..'player'),
  RenderSystem = require(PATH..'render'),
}
