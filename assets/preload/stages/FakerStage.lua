function onCreate()
addLuaScript('data/tutorial/splash')

makeLuaSprite('fondo', 'exe/fakerBG/fondo', -597, -257);
addLuaSprite('fondo', false);
scaleObject('fondo', 1.1, 1) 

makeLuaSprite('arboles', 'exe/fakerBG/arboles',	259,41);
addLuaSprite('arboles', false);
scaleObject('arboles', 1, 1) 

makeLuaSprite('pilar', 'exe/fakerBG/pilar', 1130,-139);
addLuaSprite('pilar', false);
scaleObject('pilar', 1, 1) 

makeLuaSprite('flor', 'exe/fakerBG/flor', 1515,541);
addLuaSprite('flor', false);
scaleObject('flor', 1.2, 1.2) 

makeAnimatedLuaSprite('screenstatic', 'exe/screenstatic', 0, 0);
addAnimationByPrefix('screenstatic', 'screenstatic', 'screenstatic', 24, true);  
objectPlayAnimation('screenstatic', 'screenstatic', true)
addLuaSprite('screenstatic', true);
scaleLuaSprite('screenstatic', 1, 1);
setObjectCamera('screenstatic','other')
setPropertyLuaSprite('screenstatic', 'alpha', 0)

setProperty('cameraSpeed', 0.5)
end 

function onCreatePost()
doTweenColor('timeBar', 'timeBar', '3021FF', 0.01, 'linear');
end

function onEvent(name,value1)
if name == 'Asbel' then
if value1 == 'adios' then
doTweenAlpha('hud', 'camHUD', 0, 2.1, 'linear')
end	
if value1 == 'adios2' then
doTweenAlpha('gay', 'camGame', 0, 0.01, 'linear')
end		 
if value1 == 'on' then
setPropertyLuaSprite('screenstatic', 'alpha', 1)
runTimer('AdiosStat', 0.15, 1)
playSound('simplejumpsound', 0.3)
end
if value1 == 'onp' then
setPropertyLuaSprite('screenstatic', 'alpha', 1)
end
end
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'AdiosStat' then
setPropertyLuaSprite('screenstatic', 'alpha', 0)
end
end