module.exports = setTimer = (date, offset_sec, cb) ->
  unless cb?
    cb = offset_sec
    offset_sec = 0
  delta = date.getTime() + offset_sec * 1000 - Date.now()
  delta = 30000 if delta > 30000
  console.log(delta)
  s = 0
  if delta <= 0
    cb()
    return
  # else if delta < 6000
  #   s = delta
  # else
  #   s = delta / 2

  setTimeout(setTimer, delta, date, offset_sec, cb)
