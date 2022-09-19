function onBeatHit()
if curBeat == 1 then
setProperty('timeBar.color', getColorFromHex('ff0015'))
setProperty('tipsySpeed.y', 5)
setProperty('tipsy.angle', 1)			
setProperty('tipsySpeed.angle', 1)	

noteTweenAlpha("A1", 0, 0, 0.4, "linear")
noteTweenAlpha("A2", 1, 0, 0.4, "linear")
noteTweenAlpha("A3", 2, 0, 0.4, "linear")
noteTweenAlpha("A4", 3, 0, 0.4, "linear")
     end
end

function onCreate()


makeLuaSprite('sky', 'exe/requital/sky',-541,-439)
scaleObject('sky', 2.4, 2);
setScrollFactor('sky', 0, 0.5);
addLuaSprite('sky', false)

makeLuaSprite('mountain', 'exe/requital/mountain',-541,-395)
scaleObject('mountain', 1.2 , 1);
setScrollFactor('mountain', 0.2, 0.6);
addLuaSprite('mountain', false)

makeLuaSprite('wall', 'exe/requital/wall',741,-749)
scaleObject('wall', 1.4, 1.8);
setScrollFactor('wall', 1, 1);
addLuaSprite('wall', false)

makeLuaSprite('wallfront', 'exe/requital/wallfront',741,-749)
scaleObject('wallfront', 1.4, 1.8);
addLuaSprite('wallfront', true)

makeLuaSprite('barrel', 'exe/requital/barrel', 600, 550)
scaleObject('barrel', 1, 1);
setScrollFactor('barrel', 1, 1);
addLuaSprite('barrel', false)

makeLuaSprite('floor', 'exe/requital/floor', -950, 800)
scaleObject('floor', 1.2, 1.15);
setScrollFactor('floor', 1, 1);
addLuaSprite('floor', false)     

makeLuaSprite('floorFront', 'exe/requital/floorFront', 1760, 800)
scaleObject('floorFront', 1.2, 1.15);
setScrollFactor('floorFront', 1, 1);
addLuaSprite('floorFront', true)      

makeLuaSprite('Sat', '', 0, 0)
makeGraphic('Sat', screenWidth, screenHeight,'646464')
setObjectCamera('Sat', 'other')
setProperty('Sat.alpha', 0)
addLuaSprite('Sat', true)
setBlendMode('Sat', 'SUBTRACT')   
end

function onCountdownStarted()
noteTweenX('picoybf1', 4, 90, 0.01, 'linear');
noteTweenX('picoybf2', 5, 205, 0.01, 'linear');
noteTweenX('picoybf3', 6, 315, 0.01, 'linear');
noteTweenX('picoybf4', 7, 425, 0.01, 'linear');
noteTweenX('requital1', 0, 730, 0.01, 'linear');
noteTweenX('requital2', 1, 845, 0.01, 'linear');
noteTweenX('requital3', 2, 955, 0.01, 'linear');
noteTweenX('requital4', 3, 1065, 0.01, 'linear');

				

end

function onEvent(name,value1,value2)
if name == 'Asbel' then 
if value1 == 'pico' then
doTweenColor('mountain', 'mountain', '00D9FF', 0.5, 'linear');
end
if value1 == 'bf' then
doTweenColor('mountain', 'mountain', '00D9FF', 0.5, 'linear');
end
if value1 == 'req' then
doTweenColor('mountain', 'mountain', 'E69500', 0.5, 'linear');
end
if value1 == 'mid' then
setProperty('tipsySpeed.y', 15)
setProperty('tipsy.angle', 3)			
setProperty('tipsySpeed.angle', 3)	
doTweenColor('mountain', 'mountain', 'E69500', 0.01, 'linear');	
setProperty('Sat.alpha', 2)
end
if value1 == 'nomid' then
setProperty('Sat.alpha', 0)
doTweenColor('mountain', 'mountain', 'FFFFFF', 0.01, 'linear');
end
if value1 == 'fin' then
doTweenAlpha('camHUD', 'camHUD', 0, 5,'linear')
doTweenColor('mountain', 'mountain', 'FF6105', 5, 'linear');
doTweenAlpha('Sat', 'Sat', 1, 5,'linear')
end
if value1 == 'bm' then
setProperty('drunk.y', 1)
setProperty('drunkSpeed.y', 2)
runTimer('Died', 0.2, 1);
end
end
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'Died' then
setProperty('drunk.y', 0)
setProperty('drunkSpeed.y', 0)
doTweenY('scaley', 'scale', 0.67, 0.1, 'cubeInOut')
 end
end