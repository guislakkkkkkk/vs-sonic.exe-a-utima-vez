local TChart = false

function onEvent(name,value1,value2)
if name == "TChart" then
if value1 == 'on' then
TChart = true
runTimer('Died', 0.3, 1);
end
if value1 == 'off' then
TChart = false
end
end
end

function onUpdate()
if TChart == true then
setPropertyFromClass('Conductor', 'songPosition', getPropertyFromClass('Conductor', 'songPosition')-20) 
setPropertyFromClass('flixel.FlxG', 'sound.music.time', getPropertyFromClass('Conductor', 'songPosition'))
setProperty('vocals.time', getPropertyFromClass('Conductor', 'songPosition'))
end
end	

function onTimerCompleted(tag, loops, loopsLeft)
  if tag == 'Died' then
TChart = false
   end
end
