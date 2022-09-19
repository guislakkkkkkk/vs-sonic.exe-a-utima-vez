function onCreate()

    addLuaScript('data/tutorial/splash')
    addLuaScript('data/tutorial/Intro')
    addLuaScript('data/tutorial/healthbars/healthbarSonicExe')

	makeLuaSprite('BGSky', 'exe/PolishedP1/BGSky', -550, -200);
	setScrollFactor('BGSky', 0.5, 0.5);
	scaleLuaSprite('BGSky', 3, 2.75);
	addLuaSprite('BGSky', false);

	makeLuaSprite('TreesLeft', 'exe/PolishedP1/TreesLeft', -550, -200);
	setScrollFactor('TreesLeft', 0.75, 0.75);
	scaleLuaSprite('TreesLeft', 3, 2.75);
	addLuaSprite('TreesLeft', false);

	makeLuaSprite('Grass', 'exe/PolishedP1/Grass', -550, -200);
	setScrollFactor('Grass', 1, 1);
	scaleLuaSprite('Grass', 3, 2.75);
	addLuaSprite('Grass', false);

    makeAnimatedLuaSprite('socni_papuh', 'exe/PolishedP1/socni_papuh', defaultOpponentX-25, defaultOpponentY-105);
    addAnimationByPrefix('socni_papuh', 'socni_papuh', 'socni_papuh', 24, false);  
    objectPlayAnimation('socni_papuh', 'socni_papuh', true)
    scaleLuaSprite('socni_papuh', 1.95, 1.96);
    setProperty('socni_papuh.visible', false);
    addLuaSprite('socni_papuh', true);

	makeLuaSprite('DeadTailz', 'exe/PolishedP1/DeadTailz', -50, 50);
	setScrollFactor('DeadTailz', 1, 1);
	scaleLuaSprite('DeadTailz', 1.25, 1.25);
	addLuaSprite('DeadTailz', true);

	makeLuaSprite('TreesFG', 'exe/PolishedP1/TreesFG', -490, -200);
	setScrollFactor('TreesFG', 1.1, 1.1);
	scaleLuaSprite('TreesFG', 3, 2.8);
	addLuaSprite('TreesFG', true);
	
	makeLuaSprite('negro', 'flashN', 0, 0);
	setLuaSpriteScrollFactor('negro', 0, 0);
	setProperty('negro.alpha', 0.0001);
	addLuaSprite('negro', false);
	setObjectCamera('negro', 'hud');

    makeLuaSprite('bartop', '' ,0, -200)
    makeGraphic('bartop', 1280, 200,'000000')
    addLuaSprite('bartop',false)
    setObjectCamera('bartop','other')
    setScrollFactor('bartop',0,0)

    makeLuaSprite('barbot', '', 0, 850)
    makeGraphic('barbot', 1280, 200,'000000')
    addLuaSprite('barbot',false)
    setScrollFactor('barbot',0,0)
    setObjectCamera('barbot','other')

	setProperty('defaultCamZoom', 0.6) 

if songName == 'too-slow-encore' then
setProperty('defaultCamZoom', 1.85) 
end
end

function onCreatePost()
doTweenColor('timeBar', 'timeBar', 'FF0001', 0.01, 'linear');
end

function onEvent(name,value1,value2)
if name == 'Asbel' then
if value1 == 'anim' then
setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 0.7)
doTweenAlpha('hud', 'camHUD', 0, 0.01, 'linear')	
doTweenY('barbot', 'barbot', 550, 1, 'linear');
doTweenY('bartop', 'bartop', -30, 1, 'linear');			
setProperty('defaultCamZoom', 0.9) 	
objectPlayAnimation('socni_papuh', 'socni_papuh', true)
setProperty('dad.visible', false);
setProperty('socni_papuh.visible', true);
end
if value1 == 'animend' then
setProperty('cameraSpeed', 1.5)
setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 1)
doTweenAlpha('hud', 'camHUD', 1, 0.01, 'linear')	
doTweenY('barbot', 'barbot', 850, 1, 'linear');
doTweenY('bartop', 'bartop', -200, 1, 'linear'); 
setProperty('defaultCamZoom', 0.6) 		
setProperty('dad.visible', true);
removeLuaSprite('socni_papuh')
end	
end
end