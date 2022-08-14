import("CoreLibs/graphics")
import("CoreLibs/timer")

playdate.setAutoLockDisabled(true)
playdate.display.setRefreshRate(50)

local flip = false
local timer = playdate.timer.new(100, function()
  flip = not flip
end)
timer.repeats = true

function playdate.update()
  local time = playdate.getCurrentTimeMilliseconds()
  if flip then
    playdate.graphics.setColor(1)
  else
    playdate.graphics.setColor(0)
  end
  playdate.graphics.fillRect(0, 0, 400, 240)

  local battery = playdate.getBatteryPercentage()
  if flip then
    playdate.graphics.setImageDrawMode(playdate.graphics.kDrawModeFillBlack)
  else
    playdate.graphics.setImageDrawMode(playdate.graphics.kDrawModeFillWhite)
  end
  playdate.graphics.drawText(battery.."%", 0, 0)

  playdate.timer.updateTimers()
end