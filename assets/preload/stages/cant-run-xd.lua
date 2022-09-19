function onCreate()
  
    addLuaScript('data/tutorial/splash')
    addLuaScript('data/tutorial/Intro')

    addCharacterToList('sonicexepixel', 'dad') 
    addCharacterToList('bfpickel', 'boyfriend') 
    addCharacterToList('gf-pixel', 'gf') 

    setProperty('cameraSpeed', 1.4)

	makeLuaSprite('GreenHill', 'ycr/GreenHill', -200, -150);
	addLuaSprite('GreenHill', false);
    scaleObject('GreenHill', 7, 7) 
    setProperty('GreenHill.antialiasing', false) 
    setProperty('GreenHill.visible', false) 

	makeLuaSprite('sky', 'exe/run/sky', -550, -200);
	setScrollFactor('sky', 1, 1);
	scaleLuaSprite('sky', 2.25, 2);
	addLuaSprite('sky', false);

	makeLuaSprite('trees', 'exe/run/trees', -550, -200);
	setScrollFactor('trees', 1, 1);
	scaleLuaSprite('trees', 2.25, 2);
	addLuaSprite('trees', false);

	makeLuaSprite('Grass', 'exe/run/Grass', -550, -200);
	setScrollFactor('Grass', 1, 1);
	scaleLuaSprite('Grass', 2.25, 2);
	addLuaSprite('Grass', false);

    makeAnimatedLuaSprite('GreenHill', 'exe/run/GreenHill', 25, -200);
    addAnimationByPrefix('GreenHill', 'GreenHill', 'GreenHill', 24, true)
    objectPlayAnimation('GreenHill', 'GreenHill', true);
    addLuaSprite('GreenHill', false);
    scaleObject('GreenHill', 7.25, 7) 
    setProperty('GreenHill.antialiasing', false) 
    setProperty('GreenHill.visible', false) 

	makeLuaSprite('fg', 'exe/run/fg', -550, -200);
	setScrollFactor('fg', 1, 1);
	scaleLuaSprite('fg', 2.2, 2);
	addLuaSprite('fg', true);

makeLuaSprite('border', 'exe/RedVG',0,0);
setObjectCamera('border', 'hud')
addLuaSprite('border', false);
scaleObject('border', 1, 1)  
setProperty("border.alpha", 0)

setProperty('defaultCamZoom', 0.65) 
end 

local Cam1 = 0.7
local Cam2 = 0.6

function onMoveCamera(focus)
if focus == 'boyfriend' then
setProperty('defaultCamZoom', Cam1) 
elseif focus == 'dad' then
setProperty('defaultCamZoom', Cam2) 
end
end

function onBeatHit()
if curBeat == 5 then
doTweenColor('timeBar', 'timeBar', 'FF0001', 0.01, 'linear');
end
if curBeat == 20 then
		doTweenAlpha('bordervis','border', 1, 0.85, 'quadInOut');
	end
end

function onTweenCompleted(tag)
	if tag == 'bordervis' then
		doTweenAlpha('borderinvis','border', 0, 0.85, 'quadInOut');
	end

	if tag == 'borderinvis' then
		doTweenAlpha('bordervis','border', 1, 0.85, 'quadInOut');
	end
end

function onEvent(name,value1,value2)
if name == 'Asbel' then 
if value1 == 'pixel' then
setProperty('barraD.visible', true);
setProperty('barraI.visible', true);
setProperty("healthBarBG.visible", false)
setProperty("healthBar.visible", false)
setProperty("iconP1.visible", false)
setProperty("iconP2.visible", false)

noteTweenX('exe1', 0, 90+86, 0.01, 'linear');
noteTweenX('exe2', 1, 205+86, 0.01, 'linear');
noteTweenX('exe3', 2, 315+86, 0.01, 'linear');
noteTweenX('exe4', 3, 425+86, 0.01, 'linear');

noteTweenX('bf1', 4, 730-86, 0.01, 'linear');
noteTweenX('bf2', 5, 845-86, 0.01, 'linear');
noteTweenX('bf3', 6, 955-86, 0.01, 'linear');
noteTweenX('bf4', 7, 1065-86, 0.01, 'linear');	

setProperty('cameraSpeed', 1)	
Cam1 = 0.8
Cam2 = 0.75
setProperty('fg.visible', false);	
setProperty('GreenHill.visible', true);
setProperty('border.visible', false);

setProperty('MissesT.visible', true);
setProperty('ScoreT.visible', true);
setProperty('hudSonic.visible', true);
setProperty('scoreTxt2.visible', false)
setProperty('timeBar.visible', false)
setProperty('timeBarBG.visible', false)

triggerEvent('Change Character', 'dad', 'sonicexepixel');
triggerEvent('Change Character', 'bf', 'bfpickel');
triggerEvent('Change Character', 'gf', 'gf-pixel');
setProperty('defaultCamZoom', 1) 
for i = 0, getProperty('opponentStrums.length')-1 do
setPropertyFromGroup('opponentStrums', i, 'texture', 'sonicUI/texturas/sonicPixel');
end
for i = 0, getProperty('playerStrums.length')-1 do
setPropertyFromGroup('playerStrums', i, 'texture', 'sonicUI/texturas/sonicPixel');
end
end
if value1 == 'normal' then
setProperty("healthBarBG.visible", true)
setProperty("healthBar.visible", true)
setProperty("iconP1.visible", true)
setProperty("iconP2.visible", true)

noteTweenX('exe1', 0, 90, 0.01, 'linear');
noteTweenX('exe2', 1, 205, 0.01, 'linear');
noteTweenX('exe3', 2, 315, 0.01, 'linear');
noteTweenX('exe4', 3, 425, 0.01, 'linear');

noteTweenX('bf1', 4, 730, 0.01, 'linear');
noteTweenX('bf2', 5, 845, 0.01, 'linear');
noteTweenX('bf3', 6, 955, 0.01, 'linear');
noteTweenX('bf4', 7, 1065, 0.01, 'linear');	
	
setProperty('cameraSpeed', 1.5)	
Cam1 = 0.7
Cam2 = 0.6	
setProperty('fg.visible', true);	
setProperty('GreenHill.visible', false);	
setProperty('border.visible', true);
setProperty('MissesT.visible', false);
setProperty('ScoreT.visible', false);
setProperty('scoreTxt2.visible', true)
setProperty('timeBar.visible', true)
setProperty('timeBarBG.visible', true)
triggerEvent('Change Character', 'bf', 'bf');
triggerEvent('Change Character', 'gf', 'gf');	
setProperty('defaultCamZoom', 0.75) 			
removeLuaSprite('barraD', true);
removeLuaSprite('barraI', true);
removeLuaSprite('hudSonic', true);											
for i = 0, getProperty('opponentStrums.length')-1 do
setPropertyFromGroup('opponentStrums', i, 'texture', 'NOTE_assets');
end
for i = 0, getProperty('playerStrums.length')-1 do
setPropertyFromGroup('playerStrums', i, 'texture', 'NOTE_assets');
end
end
end
end