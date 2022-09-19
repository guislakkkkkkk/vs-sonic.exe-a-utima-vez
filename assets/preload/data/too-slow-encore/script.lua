function onCountdownStarted()
doTweenAlpha('camHUD', 'camHUD', 0, 0.00001, 'quadInOut');
doTweenAlpha('camGame', 'camGame', 0, 0.00001, 'quadInOut');
setProperty('dad.scale.x', 1.25)
setProperty('dad.scale.y', 1.25) 
end

function onBeatHit()
if curBeat == 4 then
doTweenAlpha('camGame', 'camGame', 1, 16, 'quadInOut');
doTweenAlpha('camHUD', 'camHUD', 1, 16, 'quadInOut');
     end
end