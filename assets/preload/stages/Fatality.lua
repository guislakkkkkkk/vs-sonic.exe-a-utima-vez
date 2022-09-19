function onCreate()
addLuaScript('data/tutorial/splashP')

makeLuaSprite('bartop','',0,-30)
makeGraphic('bartop',1280,100,'000000')
addLuaSprite('bartop',false)
setObjectCamera('bartop','hud')
setScrollFactor('bartop',0,0)

addCharacterToList('true-fatal', 'dad')
addCharacterToList('bf-fatal-small', 'boyfriend') 

makeAnimatedLuaSprite('truefatalstage', 'exe/fatal/truefatalstage', -600, -415);
addAnimationByPrefix('truefatalstage', 'truefatalstage', 'idle', 16, true);  
objectPlayAnimation('truefatalstage', 'truefatalstage', true)
scaleLuaSprite('truefatalstage', 4, 4);
setProperty('truefatalstage.antialiasing', false);
addLuaSprite('truefatalstage', false);

makeAnimatedLuaSprite('domain2', 'exe/fatal/domain2', -530, -150);
addAnimationByPrefix('domain2', 'domain2', 'idle', 16, true);  
objectPlayAnimation('domain2', 'domain2', true)
scaleLuaSprite('domain2', 3.2, 3.1);
setProperty('domain2.antialiasing', false);
addLuaSprite('domain2', false);

makeAnimatedLuaSprite('domain', 'exe/fatal/domain', -530, -100);
addAnimationByPrefix('domain', 'domain', 'idle', 16, true);  
objectPlayAnimation('domain', 'domain', true)
scaleLuaSprite('domain', 3.2, 3);
setProperty('domain.antialiasing', false);
addLuaSprite('domain', false);

makeAnimatedLuaSprite('launchbase', 'exe/fatal/launchbase', -530, -415);
addAnimationByPrefix('launchbase', 'launchbase', 'idle', 16, true);  
objectPlayAnimation('launchbase', 'launchbase', true)
scaleLuaSprite('launchbase', 4, 4);
setProperty('launchbase.antialiasing', false);
addLuaSprite('launchbase', false);

setPropertyFromClass('flixel.FlxG', 'mouse.visible', true);

setProperty('defaultCamZoom', 0.75)

makeLuaSprite('barraI', '', -10, -30)
makeGraphic('barraI', 150, 1280, '000000')
addLuaSprite('barraI', true)
setObjectCamera('barraI', 'other')
setScrollFactor('barraI', 1, 1)

makeLuaSprite('barraD', '', 1130, -30)
makeGraphic('barraD', 150, 1280, '000000')
addLuaSprite('barraD', true)
setObjectCamera('barraD', 'other')
setScrollFactor('barraD', 1, 1)

setProperty('introSoundsSuffix', '-fatal')

setProperty('defaultCamZoom', 0.75) 
end 

function onCreatePost()
precacheImage('exe/cd/fatalReady');
precacheImage('exe/cd/fatalSet');
precacheImage('exe/cd/fatalGo');
end 

function onCountdownTick(swagCounter)
if swagCounter == 1 then
	setProperty('countdownReady.visible', false)
	makeLuaSprite('ready', 'exe/cd/fatalReady', screenWidth / 2 - 369, screenHeight / 2 - 185);
	setObjectCamera('ready','other');
	doTweenAlpha('elpepe', 'ready', 0, crochet / 1000, 'cubeInOut');
	addLuaSprite('ready', true);	
end	
if swagCounter == 2 then
	setProperty('countdownSet.visible', false)
	makeLuaSprite('set', 'exe/cd/fatalSet', screenWidth / 2 - 330, screenHeight / 2 - 185);
	setObjectCamera('set','other');
	doTweenAlpha('elpepe', 'set', 0, crochet / 1000, 'cubeInOut');
	addLuaSprite('set', true);
end	
if swagCounter == 3 then
	setProperty('countdownGo.visible', false)
	makeLuaSprite('GO', 'exe/cd/fatalGo', screenWidth / 2 - 289, screenHeight / 2 - 215);
	setObjectCamera('GO','other');
	doTweenAlpha('elpepe', 'GO', 0, crochet / 1000, 'cubeInOut');
	addLuaSprite('GO', true);
	end
end


local Cam1 = 1
local Cam2 = 0.75

function onMoveCamera(focus)
if focus == 'boyfriend' then
setProperty('defaultCamZoom', Cam1) 
elseif focus == 'dad' then
setProperty('defaultCamZoom', Cam2) 
end
end

function onEvent(name,value1,value2)
if name == 'Asbel' then 
if value1 == 'cambio1' then
removeLuaSprite('launchbase')	
Cam1 = 0.9
end
if value1 == 'final' then
Cam2 = 0.7	
Cam1 = 1.1
triggerEvent('Change Character', 'dad', 'true-fatal');
triggerEvent('Change Character', 'bf', 'bf-fatal-small');
removeLuaSprite('domain')	
removeLuaSprite('domain2')	
end
if value1 == 'gt' then
objectPlayAnimation('fatality', value2, true)
end
end
end

function onBeatHit()
if curBeat == 1 then
doTweenColor('timeBar', 'timeBar', 'FF0004', 0.01, 'linear');
     end
end

function onUpdatePost(elapsed)
setProperty('iconP1.scale.x', 0.6)
setProperty('iconP1.scale.y', 0.6) 
setProperty('iconP2.scale.x', 0.6)
setProperty('iconP2.scale.y', 0.6) 
end