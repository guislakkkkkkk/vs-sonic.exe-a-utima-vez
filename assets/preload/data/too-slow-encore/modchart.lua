function onStepHit()
if curStep == 384 then
doTweenAlpha('negro', 'negro', 1, 0.01, 'linear');
end	
if curStep == 400 then
removeLuaSprite('negro')
end	
if curStep == 1248 then
doTweenAngle('GUItween', 'camHUD', 5, 1, 'cubic');		
runTimer('hpdrain', 0.01, 0)
end		
if curStep == 1297 then
doTweenAngle('GUItween', 'camHUD', 0, 1, 'cubic');		
cancelTimer('hpdrain');
end		
if curStep == 1407 then
noteTweenAngle('playrotate0', 4, -360, 1, 'quartInOut')
noteTweenAngle('playrotate1', 5, -360, 1, 'quartInOut')
noteTweenAngle('playrotate2', 6, -360, 1, 'quartInOut')
noteTweenAngle('playrotate3', 7, -360, 1, 'quartInOut')
end	
if curStep == 1415 then
noteTweenAngle('playrotate0', 4, 360, 1, 'quartInOut')
noteTweenAngle('playrotate1', 5, 360, 1, 'quartInOut')
noteTweenAngle('playrotate2', 6, 360, 1, 'quartInOut')
noteTweenAngle('playrotate3', 7, 360, 1, 'quartInOut')
end	
if curStep == 1427 then

noteTweenAngle('playrotate0', 4, -360, 1, 'backIn')
noteTweenAngle('playrotate1', 5, -360, 1, 'backIn')
noteTweenAngle('playrotate2', 6, -360, 1, 'backIn')
noteTweenAngle('playrotate3', 7, -360, 1, 'backIn')

noteTweenX('oppo0', 0, -1000, 1.5, 'quartInOut')
noteTweenX('oppo1', 1, -1000, 1.5, 'quartInOut')
noteTweenX('oppo2', 2, -1000, 1.5, 'quartInOut')
noteTweenX('oppo3', 3, -1000, 1.5, 'quartInOut')	
noteTweenX('play0', 4, 415, 1, 'quartInOut')
noteTweenX('play1', 5, 525, 1, 'quartInOut')
noteTweenX('play2', 6, 635, 1, 'quartInOut')
noteTweenX('play3', 7, 745, 1, 'quartInOut')
end
if curStep == 1439 then	
noteTweenX('play0', 4, 525, 0.25, 'quartInOut')
noteTweenX('play1', 5, 745, 0.25, 'quartInOut')
noteTweenX('play2', 6, 415, 0.25, 'quartInOut')
noteTweenX('play3', 7, 635, 0.25, 'quartInOut')
end
if curStep == 1455 then	
noteTweenX('play0', 4, 745, 0.25, 'quartInOut')
noteTweenX('play1', 5, 415, 0.25, 'quartInOut')
noteTweenX('play2', 6, 635, 0.25, 'quartInOut')
noteTweenX('play3', 7, 525, 0.25, 'quartInOut')
end
if curStep == 1471 then	
noteTweenX('play0', 4, 635, 0.25, 'quartInOut')
noteTweenX('play1', 5, 525, 0.25, 'quartInOut')
noteTweenX('play2', 6, 415, 0.25, 'quartInOut')
noteTweenX('play3', 7, 745, 0.25, 'quartInOut')
end
if curStep == 1477 then	
noteTweenX('play0', 4, 525, 0.25, 'quartInOut')
noteTweenX('play1', 5, 745, 0.25, 'quartInOut')
noteTweenX('play2', 6, 635, 0.25, 'quartInOut')
noteTweenX('play3', 7, 415, 0.25, 'quartInOut')
end
if curStep == 1487 then	
noteTweenAngle('opporotate0', 0, -720, 1, 'quartInOut')
noteTweenAngle('opporotate1', 1, -720, 1, 'quartInOut')
noteTweenAngle('opporotate2', 2, -720, 1, 'quartInOut')
noteTweenAngle('opporotate3', 3, -720, 1, 'quartInOut')	
noteTweenX('dadTween1', 0, 90, 0.25, 'linear');
noteTweenX('dadTween2', 1, 205, 0.25, 'linear');
noteTweenX('dadTween3', 2, 315, 0.25, 'linear');
noteTweenX('dadTween4', 3, 425, 0.25, 'linear');

noteTweenAngle('playrotate0', 4, -720, 1, 'quartInOut')
noteTweenAngle('playrotate1', 5, -720, 1, 'quartInOut')
noteTweenAngle('playrotate2', 6, -720, 1, 'quartInOut')
noteTweenAngle('playrotate3', 7, -720, 1, 'quartInOut')
noteTweenX('bfTween1', 4, 730, 0.25, 'linear');
noteTweenX('bfTween2', 5, 845, 0.25, 'linear');
noteTweenX('bfTween3', 6, 955, 0.25, 'linear');
noteTweenX('bfTween4', 7, 1065, 0.25, 'linear');
end
if curStep == 1506 then	
noteTweenAlpha("A5", 4, 0, 2, "linear")
noteTweenAlpha("A6", 5, 0, 2, "linear")
noteTweenAlpha("A7", 6, 0, 2, "linear")
noteTweenAlpha("A8", 7, 0, 2, "linear")	

setProperty('cameraSpeed', 1.5)
end
if curStep == 1551 then	
noteTweenAlpha("A1", 0, 0, 2, "linear")
noteTweenAlpha("A2", 1, 0, 2, "linear")
noteTweenAlpha("A3", 2, 0, 2, "linear")
noteTweenAlpha("A4", 3, 0, 2, "linear")

noteTweenAlpha("A5", 4, 1, 2, "linear")
noteTweenAlpha("A6", 5, 1, 2, "linear")
noteTweenAlpha("A7", 6, 1, 2, "linear")
noteTweenAlpha("A8", 7, 1, 2, "linear")
end
if curStep == 1615 then	
noteTweenAlpha("A1", 0, 1, 2, "linear")
noteTweenAlpha("A2", 1, 1, 2, "linear")
noteTweenAlpha("A3", 2, 1, 2, "linear")
noteTweenAlpha("A4", 3, 1, 2, "linear")

noteTweenAlpha("A5", 4, 0, 2, "linear")
noteTweenAlpha("A6", 5, 0, 2, "linear")
noteTweenAlpha("A7", 6, 0, 2, "linear")
noteTweenAlpha("A8", 7, 0, 2, "linear")
end
if curStep == 1645 then
noteTweenAlpha("A1", 0, 0, 0.10, "linear")
noteTweenAlpha("A2", 1, 0, 0.10, "linear")
noteTweenAlpha("A3", 2, 0, 0.10, "linear")
noteTweenAlpha("A4", 3, 0, 0.10, "linear")

noteTweenAlpha("A5", 4, 1, 0.10, "linear")
noteTweenAlpha("A6", 5, 1, 0.10, "linear")
noteTweenAlpha("A7", 6, 1, 0.10, "linear")
noteTweenAlpha("A8", 7, 1, 0.10, "linear")
end
if curStep == 1664 then	
noteTweenAlpha("A1", 0, 1, 0.10, "linear")
noteTweenAlpha("A2", 1, 1, 0.10, "linear")
noteTweenAlpha("A3", 2, 1, 0.10, "linear")
noteTweenAlpha("A4", 3, 1, 0.10, "linear")

noteTweenAlpha("A5", 4, 1, 0.10, "linear")
noteTweenAlpha("A6", 5, 1, 0.10, "linear")
noteTweenAlpha("A7", 6, 1, 0.10, "linear")
noteTweenAlpha("A8", 7, 1, 0.10, "linear")
end
if curStep == 1887 then	
doTweenAlpha('hud', 'camHUD', 0, 3, 'linear')
end
end

function onTimerCompleted(tag, loops, loopsLeft)
local health = getProperty('health')
if tag == 'hpdrain' then
setProperty('health', getProperty('health') -0.005); 
end
end