djb2 = (p) ->
  if typeof p is 'string'
    return djb2 (c.charCodeAt(0) for c in p)
  throw new Error 'Must be string or array' unless Array.isArray p
  
  r = 5381
  for a in p
    r = (r << 5) + r + a
  return r

module.exports = djb2