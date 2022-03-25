local PATH = (...):gsub('%.init$', '')..'/'

-- WORLDS
return {
  start = require(PATH..'start'),
}
