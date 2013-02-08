djb2 = (p) ->
  p = (c.charCodeAt(0) for c in p) if typeof p is 'string'
  throw new Error 'Must be string or array' unless Array.isArray p
  r = 5381
  r += (r << 5) + a for a in p
  return r

module.exports = djb2