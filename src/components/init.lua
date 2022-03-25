local PATH = (...):gsub('%.init$', '')..'/'

--COMPONENTS
return {
  player = require(PATH..'player'),
  position = require(PATH..'position'),
  render = require(PATH..'render'),
  speed = require(PATH..'speed'),
  velocity = require(PATH..'velocity'),
}
